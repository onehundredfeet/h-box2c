#pragma once

#include "box2d/box2d.h"
#include "box2d/callbacks.h"
#include "box2d/hull.h"
#include "box2d/manifold.h"
//#include "box2d/math.h"
#include "box2d/math_cpp.h"
#include "box2d/timer.h"
#include "TaskScheduler.h"

namespace hbox2c
{

constexpr int32_t maxTasks = 64;
constexpr int32_t maxThreads = 64;

class SampleTask : public enki::ITaskSet
{
  public:
	SampleTask() = default;

	void ExecuteRange(enki::TaskSetPartition range, uint32_t threadIndex) override
	{
		m_task(range.start, range.end, threadIndex, m_taskContext);
	}

	b2TaskCallback* m_task = nullptr;
	void* m_taskContext = nullptr;
};

class WorldContext : public b2WorldDef {
    public:
	enki::TaskScheduler m_scheduler;
	SampleTask m_tasks[maxTasks];
	int32_t m_taskCount;
	int m_threadCount;

    WorldContext(int workerCount) {
        enqueueTask = EnqueueTask;
        finishTask = FinishTask;
        userTaskContext = this;
        m_threadCount = 1 + workerCount;
        m_taskCount = 0;
        this->workerCount = workerCount;
        this->enableSleep = true;
        
    }
    void setGravity(float x, float y) {
        gravity = {x, y};
    }

    static void* EnqueueTask(b2TaskCallback* task, int32_t itemCount, int32_t minRange, void* taskContext, void* userContext)
    {
        WorldContext* context = static_cast<WorldContext*>(userContext);
        if (context->m_taskCount < maxTasks)
        {
            SampleTask& sampleTask = context->m_tasks[context->m_taskCount];
            sampleTask.m_SetSize = itemCount;
            sampleTask.m_MinRange = minRange;
            sampleTask.m_task = task;
            sampleTask.m_taskContext = taskContext;
            context->m_scheduler.AddTaskSetToPipe(&sampleTask);
            ++context->m_taskCount;
            return &sampleTask;
        }
        else
        {
            // This is not fatal but the maxTasks should be increased
            assert(false);
            task(0, itemCount, 0, taskContext);
            return nullptr;
        }
    }

    static void FinishTask(void* taskPtr, void* userContext)
    {
        if (taskPtr != nullptr)
        {
            SampleTask* sampleTask = static_cast<SampleTask*>(taskPtr);
            WorldContext* context = static_cast<WorldContext*>(userContext);
            context->m_scheduler.WaitforTask(sampleTask);
        }
    }


    uint32_t createWorld() {
        b2WorldId id = b2CreateWorld(this);
        uint32_t value = id.index1 << 16 | id.revision;
        return value;
    }

    void destroyWorld( uint32_t world) {
        b2WorldId id;
        id.index1 = world >> 16;
        id.revision = world & 0xFFFF;
        b2DestroyWorld(id);
    }
};

}


/*
b2Vec2 gravity = {0.0f, -10.0f};



	m_worldId = b2CreateWorld(&worldDef);
	m_textLine = 30;
	m_textIncrement = 18;
	m_mouseJointId = b2_nullJointId;

	m_stepCount = 0;

	m_groundBodyId = b2_nullBodyId;

	m_maxProfile = {};
	m_totalProfile = {};

*/