#pragma once

#include "box2d/box2d.h"
#include "box2d/callbacks.h"
#include "box2d/hull.h"
#include "box2d/manifold.h"
//#include "box2d/math.h"
#include "box2d/math_cpp.h"
#include "box2d/timer.h"
#include "TaskScheduler.h"
#include "hl-idl-helpers.hpp"

#include <string>
#include <vector>
#include <set>
#include <iostream>
#include <csignal>
#include <cmath>

//#define STACK_TRACE

#ifdef STACK_TRACE
#include <cpptrace/cpptrace.hpp>
#endif

inline int64_t cast( b2BodyId id) {
    return *reinterpret_cast<int64_t *>(&id);
}

inline b2BodyId castBodyId( int64_t id) {
    return *reinterpret_cast<b2BodyId *>(&id);
}
inline vdynamic *cast(void *ptr) {
    return static_cast<vdynamic *>(ptr);
}

inline int64_t cast( b2ShapeId id) {
    return *reinterpret_cast<int64_t *>(&id);
}

inline b2ShapeId castShapeId( int64_t id) {
    return *reinterpret_cast<b2ShapeId *>(&id);
}

inline b2WorldId castWorldId( int32_t id) {
    return *reinterpret_cast<b2WorldId *>(&id);
}

inline uint32_t cast( b2WorldId id) {
    return *reinterpret_cast<uint32_t *>(&id);
}

inline b2QueryFilter castQueryFilter( int64_t id) {
    return *reinterpret_cast<b2QueryFilter *>(&id);
}

inline int64_t cast( b2QueryFilter id) {
    return *reinterpret_cast<int64_t *>(&id);
}

namespace hbox2c
{

constexpr int32_t maxTasks = 64;
constexpr int32_t maxThreads = 64;

class Transform : public b2Transform {
    public:
    Transform() {
        p = {0, 0};
        q = {1,0};
    }
    Transform(float x, float y) {
        p = {x, y};
        q = {1,0};
    }
    Transform(float x, float y, float angle) {
        p = {x, y};
        q.c = std::cos(angle);
        q.s = std::sin(angle);
    }
};

class BodyEvents : public b2BodyEvents {
    public:
    BodyEvents() {
        moveEvents = nullptr;
	    moveCount = 0;
    }

    void getMove(int index, b2BodyMoveEvent* event) {
        *event = moveEvents[index];
    }
};

class SensorEvents : public b2SensorEvents {
    public:
    SensorEvents() {
        beginEvents = nullptr;
        endEvents = nullptr;
        beginCount = 0;
        endCount = 0;
    }

    void getBegin(int index, b2SensorBeginTouchEvent* event) {
        *event = beginEvents[index];
    }

    void getEnd(int index, b2SensorEndTouchEvent* event) {
        *event = endEvents[index];
    }
};

class SensorBeginTouchEvent : public b2SensorBeginTouchEvent {
    public:
    SensorBeginTouchEvent() {

    }
};

class SensorEndTouchEvent : public b2SensorEndTouchEvent {
    public:
    SensorEndTouchEvent() {

    }
};

class ContactBeginTouchEvent : public b2ContactBeginTouchEvent {
    public:
    ContactBeginTouchEvent() {

    }
};

class ContactEndTouchEvent : public b2ContactEndTouchEvent {
    public:
    ContactEndTouchEvent() {

    }
};


class ContactHitEvent : public b2ContactHitEvent {
    public:
    ContactHitEvent() {

    }
};


class ContactEvents : public b2ContactEvents {
    public:
    ContactEvents() {
        beginEvents = nullptr;
        endEvents = nullptr;
        hitEvents = nullptr;

        beginCount = 0;
        endCount = 0;
        hitCount = 0;
    }

    void getBegin(int index, b2ContactBeginTouchEvent* event) {
        *event = beginEvents[index];
    }

    void getEnd(int index, b2ContactEndTouchEvent* event) {
        *event = endEvents[index];
    }

    void getHit(int index, b2ContactHitEvent* event) {
        *event = hitEvents[index];
    }
};

class RayResult : public b2RayResult {
    public:
    RayResult() {
        shapeId = b2_nullShapeId;
        point = {0, 0};
        normal = {0, 0};
        fraction = 0.0;
        hit = false;
    }
};

class ManifoldPoint : public b2ManifoldPoint {
    public:
    ManifoldPoint() {
        point = {0, 0};
        anchorA = {0,0};
        anchorB = {0,0};

        separation = 0.0f;
        normalImpulse = 0.0f;
        tangentImpulse = 0.0f;
        maxNormalImpulse = 0.0f;
        normalVelocity = 0.0f;
        id = 0;
        persisted = 0;
    }

    const b2ManifoldPoint& toManifoldPoint() {
        return *this;
    }

};

class Manifold : public b2Manifold {
    public:
    Manifold() {
        points[0] = ManifoldPoint().toManifoldPoint();
        points[1] = ManifoldPoint().toManifoldPoint();
        normal = {0, 1};
        pointCount = 0;
    }
};

class BodyMoveEvent : public b2BodyMoveEvent {
    public:
    BodyMoveEvent() {

    }

    
};

class World {
    public:
    static inline uint32_t idToInt(b2WorldId id) {
        return id.index1 << 16 | id.revision;
    }
    static inline b2WorldId intToId(uint32_t id) {
        b2WorldId worldId;
        worldId.index1 = id >> 16;
        worldId.revision = id & 0xFFFF;
        return worldId;
    }

static inline void GetBodyEvents(b2WorldId worldId, b2BodyEvents* events) {
    *events = b2World_GetBodyEvents(worldId);
}

static inline void GetSensorEvents(b2WorldId worldId, b2SensorEvents* events) {
    *events = b2World_GetSensorEvents(worldId);
}

static inline void GetContactEvents(b2WorldId worldId, b2ContactEvents* events) {
    *events = b2World_GetContactEvents(worldId);
}

/// Prototype callback for overlap queries.
/// See b2World_QueryAABB
/// Called for each shape found in the query AABB.
/// @return false to terminate the query.
//typedef bool b2OverlapResultFcn(b2ShapeId shapeId, void* context);



static inline void OverlapAABB(b2WorldId worldId,float min_x, float min_y, float max_x, float max_y, b2QueryFilter filter, bool (*fcn)(int64_t,vdynamic*), vdynamic* context) {
    b2AABB aabb = {{min_x, min_y}, {max_x, max_y}};
    
    auto fn = [](b2ShapeId shapeId, void* context) {
        return true;
    };

    b2World_OverlapAABB(worldId, aabb, filter, fn, context);
}

//[Static, Internal="hbox2c::World::OverlapCircle"] void overlapCircle([Get="castWorldId"]WorldId worldId, float x, float y, float radius,  Transform transform, QueryFilter filter, bool  (ShapeId shape, dynamic context) fcn, dynamic context);

static inline void OverlapCircle(b2WorldId worldId, float x, float y, float radius,  b2Transform *transform, b2QueryFilter filter, bool (*fcn)(int64_t,vdynamic*), vdynamic *context){
    auto fn = [](b2ShapeId shapeId, void* context) {
        return true;
    };
    b2Circle circle = {{x, y}, radius};

    b2World_OverlapCircle(worldId, &circle, *transform, filter, fn, context);
}


/// Prototype callback for ray casts.
/// See b2World::RayCast
/// Called for each shape found in the query. You control how the ray cast
/// proceeds by returning a float:
/// #todo rework this to return penetration
/// return -1: ignore this shape and continue
/// return 0: terminate the ray cast
/// return fraction: clip the ray to this point
/// return 1: don't clip the ray and continue
/// @param shapeId the shape hit by the ray
/// @param point the point of initial intersection
/// @param normal the normal vector at the point of intersection
/// @param fraction the fraction along the ray at the point of intersection
/// @return -1 to filter, 0 to terminate, fraction to clip the ray for
/// closest hit, 1 to continue
//typedef float b2CastResultFcn(b2ShapeId shapeId, b2Vec2 point, b2Vec2 normal, float fraction, void* context);

static inline void RayCast(b2WorldId worldId, float x, float y, float dx, float dy, b2QueryFilter filter, float (*fcn)(int64_t shapeId, float p_x, float p_y, float n_x, float n_y, float fraction, vdynamic *context), vdynamic *context) {

    auto fn = [](b2ShapeId shapeId, b2Vec2 point, b2Vec2 normal, float fraction, void* context) {
        return fraction;
    };

    b2World_RayCast(worldId, {x, y}, {dx, dy}, filter, fn, context);
}
static inline bool RayCastClosest(b2WorldId worldId, float origin_x, float origin_y, float translation_x, float translation_y, b2QueryFilter filter, RayResult *result) {
    b2RayResult *res = result;
    *res = b2World_RayCastClosest(worldId, {origin_x, origin_y}, {translation_x, translation_y}, filter);
    return res->hit;
}

static inline void CircleCast(b2WorldId worldId, float x, float y, float radius, float ox, float oy, float rot, float dx, float dy,b2QueryFilter filter, float (*fcn)(int64_t shapeId, float p_x, float p_y, float n_x, float n_y, float fraction, vdynamic *context), vdynamic *context) {
     auto fn = [](b2ShapeId shapeId, b2Vec2 point, b2Vec2 normal, float fraction, void* context) {
        return fraction;
    };

    b2Circle circle = {{x, y}, radius};
    Transform tranform(ox, oy, rot);

    b2World_CircleCast(worldId, &circle, tranform, {dx, dy}, filter, fn, context);
}

static inline void SetGravity( b2WorldId worldId, float x, float y) {
    b2World_SetGravity(worldId, {x, y});
}

static inline void Explode(b2WorldId worldId, float pos_x, float pos_y, float radius, float impulse) {
    b2World_Explode(worldId, {pos_x, pos_y}, radius, impulse);
}



/*


/// Overlap test for all shapes that overlap the provided capsule.
//[Static, Internal="hbox2c::World::OverlapCapsule"] void overlapCapsule([Get="castWorldId"] WorldId worldId, const b2Capsule* capsule, Transform transform, QueryFilter filter, bool  (ShapeId shape, dynamic context) fcn, dynamic context);

/// Overlap test for all shapes that overlap the provided polygon.
//[Static, Internal="hbox2c::World::OverlapPolygon"] void overlapPolygon([Get="castWorldId"] WorldId worldId, const b2Polygon* polygon, Transform transform, QueryFilter filter, bool  (ShapeId shape, dynamic context) fcn, dynamic context);


    */
};

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

class BodyDef : public b2BodyDef {
    public:
    BodyDef(){
        type = b2_staticBody;
        position = {0, 0};
        linearVelocity = {0, 0};
        angle = 0.0;
        angularVelocity = 0.0;
        linearDamping = 0.0;
        angularDamping = 0.0;
        gravityScale = 1.0f;
        sleepThreshold = 0.05f * b2_lengthUnitsPerMeter;
        enableSleep = true;
        fixedRotation = false;
        automaticMass = true;
        isAwake = true;
        isBullet = false;
        isEnabled = true;
    }

    void setPosition(float x, float y) {
        position = {x, y};
    }
    void setLinearVelocity(float x, float y) {
        linearVelocity = {x, y};
    }
    void setUserData(vdynamic* data) {
        userData = data;
    }
};

class ShapeDef : public b2ShapeDef {
public:
    ShapeDef() {
        static_cast<b2ShapeDef&>(*this) = b2DefaultShapeDef();
    }
};

class Body {
public:
static b2ShapeId CreateCircleShape(b2BodyId bodyId, ShapeDef *def, float center_x, float center_y, float radius) {
    b2Circle circle = {{center_x, center_y}, radius};

    return b2CreateCircleShape(bodyId, def, &circle);
}

static b2ShapeId CreateSegmentShape(b2BodyId bodyId, ShapeDef *def, float point_1_x, float point_1_y, float point_2_x, float point_2_y) {
    b2Segment segment = {{point_1_x, point_1_y}, {point_2_x, point_2_y}};

    return b2CreateSegmentShape(bodyId, def, &segment);
}
static b2ShapeId CreateCapsuleShape(b2BodyId bodyId, ShapeDef *def, float center_1_x, float center_1_y, float center_2_x, float center_2_y, float radius) {
    b2Capsule capsule = {{center_1_x, center_1_y}, {center_2_x, center_2_y}, radius};

    return b2CreateCapsuleShape(bodyId, def, &capsule);
}

static void DestroyShape(b2ShapeId shapeId) {
    b2DestroyShape(shapeId);
}
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
        if (workerCount > maxThreads) workerCount = maxThreads;
        m_threadCount = workerCount;
        m_taskCount = 0;
        this->workerCount = workerCount;
        this->enableSleep = true;
        m_scheduler.Initialize(m_threadCount);
        
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
        auto id = b2CreateWorld(this);
        auto x = cast(id);
        //printf("World created %d|%d -> %d\n", id.index1, id.revision, x);

        return x;
    }

    void destroyWorld( uint32_t world) {
        b2DestroyWorld(castWorldId(world));
    }

    inline void step( b2WorldId worldId, float timeStep, int subStepCount) {
        //printf("Step %d %f %d - task Count %d\n", worldId.index1, timeStep, subStepCount, m_taskCount);
        b2World_Step(worldId, timeStep, subStepCount);
        m_taskCount = 0;
    }


    #ifdef STACK_TRACE
static void signalHandler(int inSignal) {
    if (inSignal == SIGSEGV) { // Segmentation fault
        // Capture stack trace
        std::cerr << "Segmentation fault captured:\n";
        cpptrace::generate_trace(2).print_with_snippets();
        std::cerr << "Done:\n";
        // You can also log additional information or take other actions here
    } else if (inSignal == SIGBUS) { // Segmentation fault
        // Capture stack trace
        std::cerr << "Segmentation fault captured:\n";
        cpptrace::generate_trace(2).print_with_snippets();
        std::cerr << "Done:\n";
        // You can also log additional information or take other actions here
    }

    // You might want to handle other signals similarly

    // Re-raise the signal to the default handler
    signal(inSignal, SIG_DFL);
    raise(inSignal);
}
#endif

static void EnableDebug() {
#ifdef STACK_TRACE
     ::signal(SIGSEGV, signalHandler);
     ::signal(SIGBUS, signalHandler);

     
#endif
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