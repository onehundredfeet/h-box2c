#pragma once

#include "box2d/box2d.h"
// #include "box2d/callbacks.h"
// #include "box2d/hull.h"
// #include "box2d/manifold.h"
// #include "box2d/geometry.h"
// #include "box2d/math.h"
// #include "box2d/math_cpp.h"
// #include "box2d/timer.h"
#include "TaskScheduler.h"

#ifdef HL
#include "hl-idl-helpers.hpp"
#endif

#include <cmath>
#include <csignal>
#include <iostream>
#include <set>
#include <string>
#include <vector>

// #define STACK_TRACE

#ifdef STACK_TRACE
#include <cpptrace/cpptrace.hpp>
#endif

#ifdef HL
inline vdynamic *cast(void *ptr) { return static_cast<vdynamic *>(ptr); }

#endif


class hb2WorldId : public b2WorldId {
   public:
    hb2WorldId() : b2WorldId({0}) {}
    hb2WorldId(b2WorldId id) : b2WorldId(id) {}
    hb2WorldId(int32_t id)  {
        *reinterpret_cast<int32_t *>(this) = id;
    }

    // operator const b2WorldId &() const {
    //     // Conversion logic here
    //     return *static_cast<const b2WorldId *>(this);
    // }
    // operator b2WorldId &() {
    //     // Conversion logic here
    //     return *static_cast<b2WorldId *>(this);
    // }
    operator int32_t() const {
        return *reinterpret_cast<const int32_t *>(this);
    }

};

class hb2BodyId : public b2BodyId {
   public:
    hb2BodyId() : b2BodyId({0}) {}
    hb2BodyId(b2BodyId id) : b2BodyId(id) {}
    hb2BodyId(int64_t id)  {
        *reinterpret_cast<int64_t *>(this) = id;
    }

    // operator const b2WorldId &() const {
    //     // Conversion logic here
    //     return *static_cast<const b2WorldId *>(this);
    // }
    // operator b2WorldId &() {
    //     // Conversion logic here
    //     return *static_cast<b2WorldId *>(this);
    // }
    operator int64_t() const {
        return *reinterpret_cast<const int64_t *>(this);
    }

};

inline hb2BodyId hb2CreateBody(hb2WorldId worldId, const b2BodyDef *def) {
    return b2CreateBody(worldId, def);
}
inline void hb2DestroyBody(hb2BodyId bodyId) {
    b2DestroyBody(bodyId);
}

// inline int64_t cast(b2BodyId id) { return *reinterpret_cast<int64_t *>(&id); }

// inline b2BodyId castBodyId(int64_t id) {
//     return *reinterpret_cast<b2BodyId *>(&id);
// }

// inline int64_t cast(b2ShapeId id) { return *reinterpret_cast<int64_t *>(&id); }

// inline b2ShapeId castShapeId(int64_t id) {
//     return *reinterpret_cast<b2ShapeId *>(&id);
// }

// // inline b2WorldId castWorldId(int32_t id) {
// //     return *reinterpret_cast<b2WorldId *>(&id);
// // }

// // inline uint32_t cast(b2WorldId id) {
// //     return *reinterpret_cast<uint32_t *>(&id);
// // }

// inline b2QueryFilter castQueryFilter(int64_t id) {
//     return *reinterpret_cast<b2QueryFilter *>(&id);
// }

// inline int64_t cast(b2QueryFilter id) {
//     return *reinterpret_cast<int64_t *>(&id);
// }

// inline int32_t getCategoryBits(int64_t filter64) {
//     return castQueryFilter(filter64).categoryBits;
// }

// inline int32_t getMaskBits(int64_t filter64) {
//     return castQueryFilter(filter64).maskBits;
// }

// inline int64_t makeQueryFilter(int32_t categoryBits, int32_t maskBits) {
//     b2QueryFilter filter;
//     filter.categoryBits = categoryBits;
//     filter.maskBits = maskBits;
//     return cast(filter);
// }

namespace hbox2c {



class Transform : public b2Transform {
   public:
    Transform() {
        p = {0, 0};
        q = {1, 0};
    }
    Transform(float x, float y) {
        p = {x, y};
        q = {1, 0};
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

    void getMove(int index, b2BodyMoveEvent *event) {
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

    void getBegin(int index, b2SensorBeginTouchEvent *event) {
        *event = beginEvents[index];
    }

    void getEnd(int index, b2SensorEndTouchEvent *event) {
        *event = endEvents[index];
    }
};

class SensorBeginTouchEvent : public b2SensorBeginTouchEvent {
   public:
    SensorBeginTouchEvent() {}
};

class SensorEndTouchEvent : public b2SensorEndTouchEvent {
   public:
    SensorEndTouchEvent() {}
};

class ContactBeginTouchEvent : public b2ContactBeginTouchEvent {
   public:
    ContactBeginTouchEvent() {}
};

class ContactEndTouchEvent : public b2ContactEndTouchEvent {
   public:
    ContactEndTouchEvent() {}
};

class ContactHitEvent : public b2ContactHitEvent {
   public:
    ContactHitEvent() {}
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

    void getBegin(int index, b2ContactBeginTouchEvent *event) {
        *event = beginEvents[index];
    }

    void getEnd(int index, b2ContactEndTouchEvent *event) {
        *event = endEvents[index];
    }

    void getHit(int index, b2ContactHitEvent *event) {
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
        anchorA = {0, 0};
        anchorB = {0, 0};

        separation = 0.0f;
        normalImpulse = 0.0f;
        tangentImpulse = 0.0f;
//        maxNormalImpulse = 0.0f;
        normalVelocity = 0.0f;
        id = 0;
        persisted = 0;
    }

    const b2ManifoldPoint &toManifoldPoint() { return *this; }
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
    BodyMoveEvent() {}
};

class World {
   public:
    static inline uint32_t idToInt(b2WorldId id) {
        return id.index1 << 16 | id.generation;
    }
    static inline b2WorldId intToId(uint32_t id) {
        b2WorldId worldId;
        worldId.index1 = id >> 16;
        worldId.generation = id & 0xFFFF;
        return worldId;
    }

    static inline void GetBodyEvents(b2WorldId worldId, b2BodyEvents *events) {
        *events = b2World_GetBodyEvents(worldId);
    }

    static inline void GetSensorEvents(b2WorldId worldId,
                                       b2SensorEvents *events) {
        *events = b2World_GetSensorEvents(worldId);
    }

    static inline void GetContactEvents(b2WorldId worldId,
                                        b2ContactEvents *events) {
        *events = b2World_GetContactEvents(worldId);
    }

    /// Prototype callback for overlap queries.
    /// See b2World_QueryAABB
    /// Called for each shape found in the query AABB.
    /// @return false to terminate the query.
    // typedef bool b2OverlapResultFcn(b2ShapeId shapeId, void* context);

    // static inline void OverlapAABB(b2WorldId worldId, float min_x, float min_y,
    //                                float max_x, float max_y,
    //                                b2QueryFilter filter,
    //                                bool (*fcn)(int64_t, vdynamic *),
    //                                vdynamic *context) {
    //     b2AABB aabb = {{min_x, min_y}, {max_x, max_y}};

    //     auto fn = [](b2ShapeId shapeId, void *context) { return true; };

    //     b2World_OverlapAABB(worldId, aabb, filter, fn, context);
    // }

    //[Static, Internal="hbox2c::World::OverlapCircle"] void
    //overlapCircle([Get="castWorldId"]WorldId worldId, float x, float y, float
    //radius,  Transform transform, QueryFilter filter, bool  (ShapeId shape,
    //dynamic context) fcn, dynamic context);

    // static inline void OverlapCircle(b2WorldId worldId, float x, float y,
    //                                  float radius, b2Transform *transform,
    //                                  b2QueryFilter filter,
    //                                  bool (*fcn)(int64_t, vdynamic *),
    //                                  vdynamic *context) {
    //     auto fn = [](b2ShapeId shapeId, void *context) { return true; };
    //     b2Circle circle = {{x, y}, radius};

    //     b2World_OverlapCircle(worldId, &circle, *transform, filter, fn,
    //                           context);
    // }

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
    // typedef float b2CastResultFcn(b2ShapeId shapeId, b2Vec2 point, b2Vec2
    // normal, float fraction, void* context);

    // static inline void RayCast(b2WorldId worldId, float x, float y, float dx,
    //                            float dy, b2QueryFilter filter,
    //                            float (*fcn)(int64_t shapeId, float p_x,
    //                                         float p_y, float n_x, float n_y,
    //                                         float fraction, vdynamic *context),
    //                            vdynamic *context) {
    //     auto fn = [](b2ShapeId shapeId, b2Vec2 point, b2Vec2 normal,
    //                  float fraction, void *context) { return fraction; };

    //     b2World_RayCast(worldId, {x, y}, {dx, dy}, filter, fn, context);
    // }
    static inline bool RayCastClosest(b2WorldId worldId, float origin_x,
                                      float origin_y, float translation_x,
                                      float translation_y, b2QueryFilter filter,
                                      RayResult *result) {
        b2RayResult *res = result;
        *res = b2World_CastRayClosest(worldId, {origin_x, origin_y},
                                      {translation_x, translation_y}, filter);
        return res->hit;
    }

    // static inline void CircleCast(
    //     b2WorldId worldId, float x, float y, float radius, float ox, float oy,
    //     float rot, float dx, float dy, b2QueryFilter filter,
    //     float (*fcn)(int64_t shapeId, float p_x, float p_y, float n_x,
    //                  float n_y, float fraction, vdynamic *context),
    //     vdynamic *context) {
    //     auto fn = [](b2ShapeId shapeId, b2Vec2 point, b2Vec2 normal,
    //                  float fraction, void *context) { return fraction; };

    //     b2Circle circle = {{x, y}, radius};
    //     Transform tranform(ox, oy, rot);

    //     b2World_CircleCast(worldId, &circle, tranform, {dx, dy}, filter, fn,
    //                        context);
    // }

    static inline void SetGravity(b2WorldId worldId, float x, float y) {
        b2World_SetGravity(worldId, {x, y});
    }

    // static inline void Explode(b2WorldId worldId, float pos_x, float pos_y,
    //                            float radius, float impulse) {
    //     b2World_Explode(worldId, {pos_x, pos_y}, radius, impulse);
    // }

    /*


    /// Overlap test for all shapes that overlap the provided capsule.
    //[Static, Internal="hbox2c::World::OverlapCapsule"] void
    overlapCapsule([Get="castWorldId"] WorldId worldId, const b2Capsule*
    capsule, Transform transform, QueryFilter filter, bool  (ShapeId shape,
    dynamic context) fcn, dynamic context);

    /// Overlap test for all shapes that overlap the provided polygon.
    //[Static, Internal="hbox2c::World::OverlapPolygon"] void
    overlapPolygon([Get="castWorldId"] WorldId worldId, const b2Polygon*
    polygon, Transform transform, QueryFilter filter, bool  (ShapeId shape,
    dynamic context) fcn, dynamic context);


        */
};

class BodyDef : public b2BodyDef {
   public:
    BodyDef() {
        type = b2_staticBody;
        position = {0, 0};
        linearVelocity = {0, 0};
        rotation = b2MakeRot(0.0f);
        angularVelocity = 0.0;
        linearDamping = 0.0;
        angularDamping = 0.0;
        gravityScale = 1.0f;
        sleepThreshold = 0.05f; // * b2_lengthUnitsPerMeter;
        enableSleep = true;
        isAwake = true;
        isBullet = false;
        isEnabled = true;
        name = nullptr;
        userData = nullptr;
        motionLocks = {};
        allowFastRotation = false;
    }



    void setPosition(float x, float y) { position = {x, y}; }
    void setLinearVelocity(float x, float y) { linearVelocity = {x, y}; }
    #if HL
    void setUserData(vdynamic *data) { userData = data; }
    else
    #endif
};

class ShapeDef : public b2ShapeDef {
   public:
    ShapeDef() { static_cast<b2ShapeDef &>(*this) = b2DefaultShapeDef(); }
    void clear() { static_cast<b2ShapeDef &>(*this) = b2DefaultShapeDef(); }
};

class Body {
   public:
    static b2ShapeId CreateCircleShape(hb2BodyId bodyId, ShapeDef *def,
                                       float center_x, float center_y,
                                       float radius) {
        b2Circle circle = {{center_x, center_y}, radius};

        return b2CreateCircleShape(bodyId, def, &circle);
    }

    static b2ShapeId CreateSegmentShape(hb2BodyId bodyId, ShapeDef *def,
                                        float point_1_x, float point_1_y,
                                        float point_2_x, float point_2_y) {
        b2Segment segment = {{point_1_x, point_1_y}, {point_2_x, point_2_y}};

        return b2CreateSegmentShape(bodyId, def, &segment);
    }
    static b2ShapeId CreateCapsuleShape(hb2BodyId bodyId, ShapeDef *def,
                                        float center_1_x, float center_1_y,
                                        float center_2_x, float center_2_y,
                                        float radius) {
        b2Capsule capsule = {
            {center_1_x, center_1_y}, {center_2_x, center_2_y}, radius};

        return b2CreateCapsuleShape(bodyId, def, &capsule);
    }

    static b2ShapeId CreatePolygonShape(hb2BodyId bodyId, ShapeDef *def,
                                        b2Polygon *polygon) {
        return b2CreatePolygonShape(bodyId, def, polygon);
    }

    static void DestroyShape(b2ShapeId shapeId, bool updateBodyMass) { b2DestroyShape(shapeId, updateBodyMass); }

    // static void GetPosition(b2BodyId bodyId, _h_float2 *pos) {
    //     b2Vec2 *t = (b2Vec2 *)pos;
    //     *t = b2Body_GetPosition(bodyId);
    // }

    // static void GetRotation(b2BodyId bodyId, _h_float2 *rot) {
    //     b2Rot *t = (b2Rot *)rot;
    //     *t = b2Body_GetRotation(bodyId);
    // }


    static void GetTransform(hb2BodyId bodyId, b2Transform *t) {
        *t = b2Body_GetTransform(bodyId);
    }

    static void GetTransformAsArray(hb2BodyId bodyId, float *t) {
        b2Vec2 *pos = (b2Vec2 *)t;
        *pos = b2Body_GetPosition(bodyId);
        *(&t[2]) = b2Rot_GetAngle(b2Body_GetRotation(bodyId));
    }

    static void SetTransform(hb2BodyId bodyId, float x, float y, float angle) {
        b2Body_SetTransform(bodyId, {x, y}, b2MakeRot(angle));
    }
    // static void SetTransformF(b2BodyId bodyId, _h_double2 *point, float angle) {
    //     b2Body_SetTransform(bodyId, {(float)point->x, (float)point->y}, angle);
    // }

    // static void GetLocalPoint(b2BodyId bodyId, float x, float y,
    //                           _h_float2 *point) {
    //     b2Vec2 *t = (b2Vec2 *)point;
    //     *t = b2Body_GetLocalPoint(bodyId, {x, y});
    // }

    // static void GetWorldPoint(b2BodyId bodyId, float x, float y,
    //                           _h_float2 *point) {
    //     b2Vec2 *t = (b2Vec2 *)point;
    //     *t = b2Body_GetWorldPoint(bodyId, {x, y});
    // }

    // static void GetLocalVector(b2BodyId bodyId, float x, float y,
    //                            _h_float2 *vector) {
    //     b2Vec2 *t = (b2Vec2 *)vector;
    //     *t = b2Body_GetLocalVector(bodyId, {x, y});
    // }

    // static void GetWorldVector(b2BodyId bodyId, float x, float y,
    //                            _h_float2 *vector) {
    //     b2Vec2 *t = (b2Vec2 *)vector;
    //     *t = b2Body_GetWorldVector(bodyId, {x, y});
    // }

    static void ApplyForce(b2BodyId bodyId, float force_x, float force_y,
                           float point_x, float point_y, bool wake) {
        b2Body_ApplyForce(bodyId, {force_x, force_y}, {point_x, point_y}, wake);
    }

    static void ApplyForceToCenter(b2BodyId bodyId, float force_x,
                                   float force_y, bool wake) {
        b2Body_ApplyForceToCenter(bodyId, {force_x, force_y}, wake);
    }

    static void ApplyLinearImpulse(b2BodyId bodyId, float impulse_x,
                                   float impulse_y, float point_x,
                                   float point_y, bool wake) {
        b2Body_ApplyLinearImpulse(bodyId, {impulse_x, impulse_y},
                                  {point_x, point_y}, wake);
    }

    static void ApplyLinearImpulseToCenter(b2BodyId bodyId, float impulse_x,
                                           float impulse_y, bool wake) {
        b2Body_ApplyLinearImpulseToCenter(bodyId, {impulse_x, impulse_y}, wake);
    }

    // static void GetLocalCenterOfMass(b2BodyId bodyId, _h_float2 *center) {
    //     b2Vec2 *t = (b2Vec2 *)center;
    //     *t = b2Body_GetLocalCenterOfMass(bodyId);
    // }

    // static void GetWorldCenterOfMass(b2BodyId bodyId, _h_float2 *center) {
    //     b2Vec2 *t = (b2Vec2 *)center;
    //     *t = b2Body_GetWorldCenterOfMass(bodyId);
    // }

    static void SetLinearVelocity(b2BodyId bodyId, float x, float y) {
        b2Body_SetLinearVelocity(bodyId, {x, y});
    }

    // static void GetLinearVelocity(b2BodyId bodyId, _h_float2 *velocity) {
    //     b2Vec2 *t = (b2Vec2 *)velocity;
    //     *t = b2Body_GetLinearVelocity(bodyId);
    // }

    // static void GetLinearVelocityF(b2BodyId bodyId, _h_double2 *velocity) {
    //     b2Vec2 tv = b2Body_GetLinearVelocity(bodyId);
    //     velocity->x = tv.x;
    //     velocity->y = tv.y;
    // }
    // static void GetLinearVelocityS(b2BodyId bodyId, _h_float2 *velocity) {
    //     b2Vec2 *v = (b2Vec2 *)velocity;
    //     *v = b2Body_GetLinearVelocity(bodyId);
    // }
    static void GetLinearVelocityAsArray(b2BodyId bodyId, float *velocity) {
        b2Vec2 *v = (b2Vec2 *)velocity;
        *v = b2Body_GetLinearVelocity(bodyId);
    }

    static void ComputeAABB(b2BodyId bodyId, b2AABB *aabb) {
        *aabb = b2Body_ComputeAABB(bodyId);
    }
};

class Hull : public b2Hull {
   public:
    Hull() { count = 0; }

    void fromPoints(const float *points, int32_t count) {
        b2Hull *hull = this;
        *hull = b2ComputeHull((b2Vec2 *)points, count);
    }

    bool isValid() { return b2ValidateHull(this); }
};

class Polygon : public b2Polygon {
   public:
    Polygon() {
        count = 0;
        radius = 0.0f;
    }

    /// Make a convex polygon from a convex hull. This will assert if the hull
    /// is not valid.
    bool fromHull(const b2Hull *hull, float radius) {
        b2Polygon *polygon = this;
        *polygon = b2MakePolygon(hull, radius);
        return polygon->count > 0;
    }

    /// Make an offset convex polygon from a convex hull. This will assert if
    /// the hull is not valid.
    bool fromOffsetHull(const b2Hull *hull,float x, float y,
                        float angle) {
        b2Polygon *polygon = this;
        *polygon = b2MakeOffsetPolygon(hull, {x, y}, b2MakeRot(angle));
        return polygon->count > 0;
    }

    /// Make a square polygon, bypassing the need for a convex hull.
    bool makeSquare(float h) {
        b2Polygon *polygon = this;
        *polygon = b2MakeSquare(h);
        return polygon->count > 0;
    }

    /// Make a box (rectangle) polygon, bypassing the need for a convex hull.
    bool makeBox(float hx, float hy) {
        b2Polygon *polygon = this;
        *polygon = b2MakeBox(hx, hy);
        return polygon->count > 0;
    }

    /// Make a rounded box, bypassing the need for a convex hull.
    bool makeRoundedBox(float hx, float hy, float radius) {
        b2Polygon *polygon = this;
        *polygon = b2MakeRoundedBox(hx, hy, radius);
        return polygon->count > 0;
    }

    /// Make an offset box, bypassing the need for a convex hull.
    bool makeOffsetBox(float hx, float hy, float center_x, float center_y,
                       float angle) {
        b2Polygon *polygon = this;
        *polygon = b2MakeOffsetBox(hx, hy, {center_x, center_y}, b2MakeRot(angle));
        return polygon->count > 0;
    }

    /// Transform a polygon. This is useful for transferring a shape from one
    /// body to another.
    bool fromTransformedPolygon(float x, float y, float angle,
                                const b2Polygon *polygon) {
        b2Transform transform = {{x, y}, b2MakeRot(angle)};
        b2Polygon *poly = this;
        *poly = b2TransformPolygon(transform, polygon);
        return poly->count > 0;
    }

    void translate(float x, float y) {
        b2Polygon tmp = *this;

        b2Polygon *poly = this;
        *poly = b2TransformPolygon({{x, y}, {1, 0}}, &tmp);
    }
};

}  // namespace hbox2c




namespace hbox2c {


class SampleTask : public enki::ITaskSet {
   public:
    SampleTask() = default;

    void ExecuteRange(enki::TaskSetPartition range,
                      uint32_t threadIndex) override {
        m_task(range.start, range.end, threadIndex, m_taskContext);
    }

    b2TaskCallback *m_task = nullptr;
    void *m_taskContext = nullptr;
};

constexpr int32_t maxTasks = 64;
constexpr int32_t maxThreads = 64;

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
    void setGravity(float x, float y) { gravity = {x, y}; }

    static void *EnqueueTask(b2TaskCallback *task, int32_t itemCount,
                             int32_t minRange, void *taskContext,
                             void *userContext) {
        WorldContext *context = static_cast<WorldContext *>(userContext);
        if (context->m_taskCount < maxTasks) {
            SampleTask &sampleTask = context->m_tasks[context->m_taskCount];
            sampleTask.m_SetSize = itemCount;
            sampleTask.m_MinRange = minRange;
            sampleTask.m_task = task;
            sampleTask.m_taskContext = taskContext;
            context->m_scheduler.AddTaskSetToPipe(&sampleTask);
            ++context->m_taskCount;
            return &sampleTask;
        } else {
            // This is not fatal but the maxTasks should be increased
            assert(false);
            task(0, itemCount, 0, taskContext);
            return nullptr;
        }
    }

    static void FinishTask(void *taskPtr, void *userContext) {
        if (taskPtr != nullptr) {
            SampleTask *sampleTask = static_cast<SampleTask *>(taskPtr);
            WorldContext *context = static_cast<WorldContext *>(userContext);
            context->m_scheduler.WaitforTask(sampleTask);
        }
    }

    hb2WorldId createWorld() {
        hb2WorldId id = b2CreateWorld(this);
//        auto x = cast(id);
        // printf("World created %d|%d -> %d\n", id.index1, id.revision, x);

        return id;
    }

    void destroyWorld(hb2WorldId world) { b2DestroyWorld(world); }

    inline void step(hb2WorldId worldId, float timeStep, int subStepCount) {
        // printf("Step %d %f %d - task Count %d\n", worldId.index1, timeStep,
        // subStepCount, m_taskCount);
        b2World_Step(worldId, timeStep, subStepCount);
        m_taskCount = 0;
    }

#ifdef STACK_TRACE
    static void signalHandler(int inSignal) {
        if (inSignal == SIGSEGV) {  // Segmentation fault
            // Capture stack trace
            std::cerr << "Segmentation fault captured:\n";
            cpptrace::generate_trace(2).print_with_snippets();
            std::cerr << "Done:\n";
            // You can also log additional information or take other actions
            // here
        } else if (inSignal == SIGBUS) {  // Segmentation fault
            // Capture stack trace
            std::cerr << "Segmentation fault captured:\n";
            cpptrace::generate_trace(2).print_with_snippets();
            std::cerr << "Done:\n";
            // You can also log additional information or take other actions
            // here
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
}  // namespace hbox2c

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