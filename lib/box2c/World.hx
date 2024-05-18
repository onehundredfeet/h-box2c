package box2c;

import box2c.Native.WorldFunc;

abstract World(Int) from Int to Int {

    public inline function destroy() {
        WorldFunc.destroy(this);
    }

/*
/// World identifier validation. Provides validation for up to 64K allocations.
[Static, Internal="b2World_IsValid"] bool isValid([Get="castWorldId"] WorldId id);


/// Call this to draw shapes and other debug draw data. This is intentionally non-const.
//[Static, Internal="b2World_Draw"] void draw([Get="castWorldId"] WorldId worldId, b2DebugDraw* draw);

/// Get the body events for the current time step. The event data is transient. Do not store a reference to this data.
[Static, Internal="hbox2c::World::GetBodyEvents"] void getBodyEvents([Get="castWorldId"]WorldId worldId, BodyEvents events);

/// Get sensor events for the current time step. The event data is transient. Do not store a reference to this data.
[Static, Internal="hbox2c::World::GetSensorEvents"] void getSensorEvents([Get="castWorldId"]WorldId worldId, SensorEvents sensorEvents);

/// Get contact events for this current time step. The event data is transient. Do not store a reference to this data.
[Static, Internal="hbox2c::World::GetContactEvents"] void getContactEvents([Get="castWorldId"]WorldId worldId, ContactEvents contactEvents);

/// Overlap test for all shapes that *potentially* overlap the provided AABB.
[Static, Internal="hbox2c::World::OverlapAABB"] void overlapAABB([Get="castWorldId"]WorldId worldId, float min_x, float min_y, float max_x, float max_y, [Get="castQueryFilter"] QueryFilter filter, bool  (ShapeId shape, dynamic context) fcn, dynamic context);

/// Overlap test for for all shapes that overlap the provided circle.
[Static, Internal="hbox2c::World::OverlapCircle"] void overlapCircle([Get="castWorldId"]WorldId worldId, float x, float y, float radius,  Transform transform, [Get="castQueryFilter"] QueryFilter filter, bool  (ShapeId shape, dynamic context) fcn, dynamic context);

/// Overlap test for all shapes that overlap the provided capsule.
//[Static, Internal="hbox2c::World::OverlapCapsule"] void overlapCapsule([Get="castWorldId"] WorldId worldId, const b2Capsule* capsule, Transform transform, [Get="castQueryFilter"] QueryFilter filter, bool  (ShapeId shape, dynamic context) fcn, dynamic context);

/// Overlap test for all shapes that overlap the provided polygon.
//[Static, Internal="hbox2c::World::OverlapPolygon"] void overlapPolygon([Get="castWorldId"] WorldId worldId, const b2Polygon* polygon, Transform transform, [Get="castQueryFilter"] QueryFilter filter, bool  (ShapeId shape, dynamic context) fcn, dynamic context);

/// Ray-cast the world for all shapes in the path of the ray. Your callback
/// controls whether you get the closest point, any point, or n-points.
/// The ray-cast ignores shapes that contain the starting point.
/// @param callback a user implemented callback class.
/// @param point1 the ray starting point
/// @param point2 the ray ending point
[Static, Internal="hbox2c::World::RayCast"] void rayCast([Get="castWorldId"] WorldId worldId, float x, float y, float dx, float dy, [Get="castQueryFilter"] QueryFilter filter, float (ShapeId shapeId, float p_x, float p_y, float n_x, float n_y, float fraction, dynamic context) fcn, dynamic context);

/// Ray-cast closest hit. Convenience function. This is less general than b2World_RayCast and does not allow for custom filtering.
[Static, Internal="hbox2c::World::RayCastClosest"] bool rayCastClosest([Get="castWorldId"] WorldId worldId, float origin_x, float origin_y, float translation_x, float translation_y, [Get="castQueryFilter"] QueryFilter filter, RayResult result);

/// Cast a circle through the world. Similar to a ray-cast except that a circle is cast instead of a point.
[Static, Internal="hbox2c::World::CircleCast"] void circleCast([Get="castWorldId"] WorldId worldId, float x, float y, float radius, float ox, float oy, float rot, float dx, float dy,[Get="castQueryFilter"] QueryFilter filter, float (ShapeId shapeId, float p_x, float p_y, float n_x, float n_y, float fraction, dynamic context) fcn, dynamic context);

/// Cast a capsule through the world. Similar to a ray-cast except that a capsule is cast instead of a point.
//[Static, Internal="b2World_CapsuleCast"] void capsuleCast([Get="castWorldId"] WorldId worldId, const b2Capsule* capsule, Transform originTransform, b2Vec2 translation, [Get="castQueryFilter"] QueryFilter filter, float (ShapeId shapeId, float p_x, float p_y, float n_x, float n_y, float fraction, dynamic context) fcn, dynamic context);

/// Cast a capsule through the world. Similar to a ray-cast except that a polygon is cast instead of a point.
//[Static, Internal="b2World_PolygonCast"] void polygonCast([Get="castWorldId"] WorldId worldId, const b2Polygon* polygon, Transform originTransform, b2Vec2 translation, [Get="castQueryFilter"] QueryFilter filter, float (ShapeId shapeId, float p_x, float p_y, float n_x, float n_y, float fraction, dynamic context) fcn, dynamic context);

/// Enable/disable sleep. Advanced feature for testing.
[Static, Internal="b2World_EnableSleeping"] void enableSleeping([Get="castWorldId"] WorldId worldId, bool flag);

/// Enable/disable constraint warm starting. Advanced feature for testing.
[Static, Internal="b2World_EnableWarmStarting"] void enableWarmStarting([Get="castWorldId"] WorldId worldId, bool flag);

/// Enable/disable continuous collision. Advanced feature for testing.
[Static, Internal="b2World_EnableContinuous"] void enableContinuous([Get="castWorldId"] WorldId worldId, bool flag);

/// Adjust the restitution threshold. Advanced feature for testing.
[Static, Internal="b2World_SetRestitutionThreshold"] void setRestitutionThreshold([Get="castWorldId"] WorldId worldId, float value);

/// Adjust the hit event threshold. Advanced feature for testing.
[Static, Internal="b2World_SetHitEventThreshold"] void setHitEventThreshold([Get="castWorldId"] WorldId worldId, float value);

/// Register the pre-solve callback. This is optional.
//[Static, Internal="b2World_SetPreSolveCallback"] void setPreSolveCallback([Get="castWorldId"] WorldId worldId, bool (ShapeId shapeIdA, ShapeId shapeIdB, Manifold manifold, dynamic context) PreSolveFcn, dynamic context);

/// Set the gravity vector for the entire world. Typically in m/s^2
[Static, Internal="hbox2c::World::SetGravity"] void setGravity([Get="castWorldId"] WorldId worldId, float x, float y);

/// @return the gravity vector
//[Static, Internal="b2World_GetGravity"] b2Vec2 getGravity([Get="castWorldId"] WorldId worldId);

/// Apply explosion
[Static, Internal="hbox2c::World::Explode"] void explode([Get="castWorldId"] WorldId worldId, float pos_x, float pos_y, float radius, float impulse);

/// Adjust contact tuning parameters:
/// - hertz is the contact stiffness (cycles per second)
/// - damping ratio is the contact bounciness with 1 being critical damping (non-dimensional)
/// - push velocity is the maximum contact constraint push out velocity (meters per second)
///	Advanced feature
[Static, Internal="b2World_SetContactTuning"] void setContactTuning([Get="castWorldId"] WorldId worldId, float hertz, float dampingRatio, float pushVelocity);

/// Get the current profile
//[Static, Internal="b2World_GetProfile"] b2Profile getProfile([Get="castWorldId"] WorldId worldId);

/// Get counters and sizes
//[Static, Internal="b2World_GetCounters"] b2Counters getCounters([Get="castWorldId"] WorldId worldId);

/// Dump memory stats to box2d_memory.txt
[Static, Internal="b2World_DumpMemoryStats"] void dumpMemoryStats([Get="castWorldId"] WorldId worldId);

[Static, Internal="b2CreateBody", Get="cast"] BodyId createBody([Get="castWorldId"] WorldId worldId, BodyDef def);
*/

}
