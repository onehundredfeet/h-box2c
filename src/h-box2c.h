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

    WorldContext() {
        enqueueTask = EnqueueTask;
        finishTask = FinishTask;
        userTaskContext = this;
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


/*
/// Gravity vector. Box2D has no up-vector defined.
	b2Vec2 gravity;

	/// Restitution velocity threshold, usually in m/s. Collisions above this
	/// speed have restitution applied (will bounce).
	float restitutionThreshold;

	/// This parameter controls how fast overlap is resolved and has units of meters per second
	float contactPushoutVelocity;

	/// Threshold velocity for hit events. Usually meters per second.
	float hitEventThreshold;

	/// Contact stiffness. Cycles per second.
	float contactHertz;

	/// Contact bounciness. Non-dimensional.
	float contactDampingRatio;

	/// Joint stiffness. Cycles per second.
	float jointHertz;

	/// Joint bounciness. Non-dimensional.
	float jointDampingRatio;

	/// Can bodies go to sleep to improve performance
	bool enableSleep;

	/// Enable continuous collision
	bool enableContinous;

	/// Number of workers to use with the provided task system. Box2D performs best when using only
	///	performance cores and accessing a single L2 cache. Efficiency cores and hyper-threading provide
	///	little benefit and may even harm performance.
	int32_t workerCount;

	/// Function to spawn tasks
	b2EnqueueTaskCallback* enqueueTask;

	/// Function to finish a task
	b2FinishTaskCallback* finishTask;

	/// User context that is provided to enqueueTask and finishTask
	void* userTaskContext;
*/


};




}


/*
b2Vec2 gravity = {0.0f, -10.0f};

	m_scheduler.Initialize(settings.workerCount);
	m_taskCount = 0;

	m_threadCount = 1 + settings.workerCount;

	b2WorldDef worldDef = b2DefaultWorldDef();
	worldDef.workerCount = settings.workerCount;
	worldDef.enqueueTask = EnqueueTask;
	worldDef.finishTask = FinishTask;
	worldDef.userTaskContext = this;
	worldDef.enableSleep = settings.enableSleep;

	m_worldId = b2CreateWorld(&worldDef);
	m_textLine = 30;
	m_textIncrement = 18;
	m_mouseJointId = b2_nullJointId;

	m_stepCount = 0;

	m_groundBodyId = b2_nullBodyId;

	m_maxProfile = {};
	m_totalProfile = {};

*/