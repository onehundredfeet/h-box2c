package box2d;
#if hl

abstract ShapeId(idl.Types.Ref) from idl.Types.Ref to idl.Types.Ref {

}
abstract ShapeDef(idl.Types.Ref) from idl.Types.Ref to idl.Types.Ref {
	@:hlNative("Box2d", "ShapeDef_new0")
	static function new0():box2d.ShapeDef return cast(0, ShapeDef);
	public inline function new():box2d.ShapeDef return new0();
	@:hlNative("Box2d", "ShapeDef_clear0")
	public function clear():Void { }
	public var userData(get, set) : Dynamic;
	@:hlNative("Box2d", "ShapeDef_get_userData")
	function get_userData():Dynamic return null;
	@:hlNative("Box2d", "ShapeDef_set_userData")
	function set_userData(_v:Dynamic):Dynamic return null;
	public var friction(get, set) : Single;
	@:hlNative("Box2d", "ShapeDef_get_friction")
	function get_friction():Single return 0.;
	@:hlNative("Box2d", "ShapeDef_set_friction")
	function set_friction(_v:Single):Single return 0.;
	public var restitution(get, set) : Single;
	@:hlNative("Box2d", "ShapeDef_get_restitution")
	function get_restitution():Single return 0.;
	@:hlNative("Box2d", "ShapeDef_set_restitution")
	function set_restitution(_v:Single):Single return 0.;
	public var density(get, set) : Single;
	@:hlNative("Box2d", "ShapeDef_get_density")
	function get_density():Single return 0.;
	@:hlNative("Box2d", "ShapeDef_set_density")
	function set_density(_v:Single):Single return 0.;
	public var categoryBits(get, set) : Int;
	@:hlNative("Box2d", "ShapeDef_get_categoryBits")
	function get_categoryBits():Int return 0;
	@:hlNative("Box2d", "ShapeDef_set_categoryBits")
	function set_categoryBits(_v:Int):Int return 0;
	public var maskBits(get, set) : Int;
	@:hlNative("Box2d", "ShapeDef_get_maskBits")
	function get_maskBits():Int return 0;
	@:hlNative("Box2d", "ShapeDef_set_maskBits")
	function set_maskBits(_v:Int):Int return 0;
	public var groupIndex(get, set) : Int;
	@:hlNative("Box2d", "ShapeDef_get_groupIndex")
	function get_groupIndex():Int return 0;
	@:hlNative("Box2d", "ShapeDef_set_groupIndex")
	function set_groupIndex(_v:Int):Int return 0;
	public var isSensor(get, set) : Bool;
	@:hlNative("Box2d", "ShapeDef_get_isSensor")
	function get_isSensor():Bool return false;
	@:hlNative("Box2d", "ShapeDef_set_isSensor")
	function set_isSensor(_v:Bool):Bool return false;
	public var enableSensorEvents(get, set) : Bool;
	@:hlNative("Box2d", "ShapeDef_get_enableSensorEvents")
	function get_enableSensorEvents():Bool return false;
	@:hlNative("Box2d", "ShapeDef_set_enableSensorEvents")
	function set_enableSensorEvents(_v:Bool):Bool return false;
	public var enableContactEvents(get, set) : Bool;
	@:hlNative("Box2d", "ShapeDef_get_enableContactEvents")
	function get_enableContactEvents():Bool return false;
	@:hlNative("Box2d", "ShapeDef_set_enableContactEvents")
	function set_enableContactEvents(_v:Bool):Bool return false;
	public var enableHitEvents(get, set) : Bool;
	@:hlNative("Box2d", "ShapeDef_get_enableHitEvents")
	function get_enableHitEvents():Bool return false;
	@:hlNative("Box2d", "ShapeDef_set_enableHitEvents")
	function set_enableHitEvents(_v:Bool):Bool return false;
	public var enablePreSolveEvents(get, set) : Bool;
	@:hlNative("Box2d", "ShapeDef_get_enablePreSolveEvents")
	function get_enablePreSolveEvents():Bool return false;
	@:hlNative("Box2d", "ShapeDef_set_enablePreSolveEvents")
	function set_enablePreSolveEvents(_v:Bool):Bool return false;
	public var forceContactCreation(get, set) : Bool;
	@:hlNative("Box2d", "ShapeDef_get_forceContactCreation")
	function get_forceContactCreation():Bool return false;
	@:hlNative("Box2d", "ShapeDef_set_forceContactCreation")
	function set_forceContactCreation(_v:Bool):Bool return false;
}
abstract Transform(idl.Types.Ref) from idl.Types.Ref to idl.Types.Ref {
	@:hlNative("Box2d", "Transform_new0")
	static function new0():box2d.Transform return cast(0, Transform);
	public inline function new():box2d.Transform return new0();
	public var x(get, set) : Single;
	@:hlNative("Box2d", "Transform_get_x")
	function get_x():Single return 0.;
	@:hlNative("Box2d", "Transform_set_x")
	function set_x(_v:Single):Single return 0.;
	public var y(get, set) : Single;
	@:hlNative("Box2d", "Transform_get_y")
	function get_y():Single return 0.;
	@:hlNative("Box2d", "Transform_set_y")
	function set_y(_v:Single):Single return 0.;
	public var c(get, set) : Single;
	@:hlNative("Box2d", "Transform_get_c")
	function get_c():Single return 0.;
	@:hlNative("Box2d", "Transform_set_c")
	function set_c(_v:Single):Single return 0.;
	public var s(get, set) : Single;
	@:hlNative("Box2d", "Transform_get_s")
	function get_s():Single return 0.;
	@:hlNative("Box2d", "Transform_set_s")
	function set_s(_v:Single):Single return 0.;
}
abstract Body(idl.Types.Ref) from idl.Types.Ref to idl.Types.Ref {
	@:hlNative("Box2d", "Body_createCircleShape4")
	public function createCircleShape(def:ShapeDef, center_x:Single, center_y:Single, radius:Single):box2d.ShapeId return cast(0, ShapeId);
	@:hlNative("Box2d", "Body_setTransform3")
	public function setTransform(position_x:Single, position_y:Single, angle:Single):Void { }
	@:hlNative("Box2d", "Body_setTransformF2")
	public function setTransformF(position:hvector.Float2, angle:Single):Void { }
	@:hlNative("Box2d", "Body_getTransform1")
	public function getTransform(transform:Transform):Void { }
	@:hlNative("Box2d", "Body_getTransformAsArray1")
	public function getTransformAsArray(transform:hl.NativeArray<Single>):Void { }
}
abstract World(idl.Types.Ref) from idl.Types.Ref to idl.Types.Ref {
	@:hlNative("Box2d", "World_destroy0")
	public function destroy():Void { }
	@:hlNative("Box2d", "World_createBody1")
	public function createBody(def:BodyDef):box2d.Body return cast(0, Body);
}
abstract QueryFilter(idl.Types.Ref) from idl.Types.Ref to idl.Types.Ref {

}
enum abstract BodyType(Int) {
	var staticBody = 0;
	var kinematicBody = 1;
	var dynamicBody = 2;
	@:hlNative("Box2d", "BodyType_indexToValue1")
	static public function indexToValue(index:Int):Int return 0;
	@:hlNative("Box2d", "BodyType_valueToIndex1")
	static public function valueToIndex(value:Int):Int return 0;
	@:hlNative("Box2d", "BodyType_fromValue1")
	static public function fromValue(value:Int):BodyType return 0;
	@:hlNative("Box2d", "BodyType_fromIndex1")
	static public function fromIndex(index:Int):BodyType return 0;
	@:hlNative("Box2d", "BodyType_toValue0")
	public function toValue():Int return 0;
}
abstract AABB(idl.Types.Ref) from idl.Types.Ref to idl.Types.Ref {
	@:hlNative("Box2d", "AABB_new0")
	static function new0():box2d.AABB return cast(0, AABB);
	public inline function new():box2d.AABB return new0();
	public var lowerBound_x(get, set) : Single;
	@:hlNative("Box2d", "AABB_get_lowerBound_x")
	function get_lowerBound_x():Single return 0.;
	@:hlNative("Box2d", "AABB_set_lowerBound_x")
	function set_lowerBound_x(_v:Single):Single return 0.;
	public var lowerBound_y(get, set) : Single;
	@:hlNative("Box2d", "AABB_get_lowerBound_y")
	function get_lowerBound_y():Single return 0.;
	@:hlNative("Box2d", "AABB_set_lowerBound_y")
	function set_lowerBound_y(_v:Single):Single return 0.;
	public var upperBound_x(get, set) : Single;
	@:hlNative("Box2d", "AABB_get_upperBound_x")
	function get_upperBound_x():Single return 0.;
	@:hlNative("Box2d", "AABB_set_upperBound_x")
	function set_upperBound_x(_v:Single):Single return 0.;
	public var upperBound_y(get, set) : Single;
	@:hlNative("Box2d", "AABB_get_upperBound_y")
	function get_upperBound_y():Single return 0.;
	@:hlNative("Box2d", "AABB_set_upperBound_y")
	function set_upperBound_y(_v:Single):Single return 0.;
}
abstract BodyMoveEvent(idl.Types.Ref) from idl.Types.Ref to idl.Types.Ref {
	public var pos_x(get, set) : Single;
	@:hlNative("Box2d", "BodyMoveEvent_get_pos_x")
	function get_pos_x():Single return 0.;
	@:hlNative("Box2d", "BodyMoveEvent_set_pos_x")
	function set_pos_x(_v:Single):Single return 0.;
	public var pos_y(get, set) : Single;
	@:hlNative("Box2d", "BodyMoveEvent_get_pos_y")
	function get_pos_y():Single return 0.;
	@:hlNative("Box2d", "BodyMoveEvent_set_pos_y")
	function set_pos_y(_v:Single):Single return 0.;
	public var quat_c(get, set) : Single;
	@:hlNative("Box2d", "BodyMoveEvent_get_quat_c")
	function get_quat_c():Single return 0.;
	@:hlNative("Box2d", "BodyMoveEvent_set_quat_c")
	function set_quat_c(_v:Single):Single return 0.;
	public var quat_s(get, set) : Single;
	@:hlNative("Box2d", "BodyMoveEvent_get_quat_s")
	function get_quat_s():Single return 0.;
	@:hlNative("Box2d", "BodyMoveEvent_set_quat_s")
	function set_quat_s(_v:Single):Single return 0.;
	public var body(get, set) : box2d.Body;
	@:hlNative("Box2d", "BodyMoveEvent_get_body")
	function get_body():box2d.Body return cast(0, Body);
	@:hlNative("Box2d", "BodyMoveEvent_set_body")
	function set_body(_v:box2d.Body):box2d.Body return cast(0, Body);
	public var userData(get, set) : Dynamic;
	@:hlNative("Box2d", "BodyMoveEvent_get_userData")
	function get_userData():Dynamic return null;
	@:hlNative("Box2d", "BodyMoveEvent_set_userData")
	function set_userData(_v:Dynamic):Dynamic return null;
	public var fellAsleep(get, set) : Bool;
	@:hlNative("Box2d", "BodyMoveEvent_get_fellAsleep")
	function get_fellAsleep():Bool return false;
	@:hlNative("Box2d", "BodyMoveEvent_set_fellAsleep")
	function set_fellAsleep(_v:Bool):Bool return false;
}
abstract BodyEvents(idl.Types.Ref) from idl.Types.Ref to idl.Types.Ref {
	@:hlNative("Box2d", "BodyEvents_getMove2")
	public function getMove(i:Int, moveEvent:box2d.BodyMoveEvent):Void { }
	public var moveCount(get, set) : Int;
	@:hlNative("Box2d", "BodyEvents_get_moveCount")
	function get_moveCount():Int return 0;
	@:hlNative("Box2d", "BodyEvents_set_moveCount")
	function set_moveCount(_v:Int):Int return 0;
}
abstract SensorBeginTouchEvent(idl.Types.Ref) from idl.Types.Ref to idl.Types.Ref {
	public var sensorShapeId(get, set) : box2d.ShapeId;
	@:hlNative("Box2d", "SensorBeginTouchEvent_get_sensorShapeId")
	function get_sensorShapeId():box2d.ShapeId return cast(0, ShapeId);
	@:hlNative("Box2d", "SensorBeginTouchEvent_set_sensorShapeId")
	function set_sensorShapeId(_v:box2d.ShapeId):box2d.ShapeId return cast(0, ShapeId);
	public var visitorShapeId(get, set) : box2d.ShapeId;
	@:hlNative("Box2d", "SensorBeginTouchEvent_get_visitorShapeId")
	function get_visitorShapeId():box2d.ShapeId return cast(0, ShapeId);
	@:hlNative("Box2d", "SensorBeginTouchEvent_set_visitorShapeId")
	function set_visitorShapeId(_v:box2d.ShapeId):box2d.ShapeId return cast(0, ShapeId);
}
abstract SensorEndTouchEvent(idl.Types.Ref) from idl.Types.Ref to idl.Types.Ref {
	public var sensorShapeId(get, set) : box2d.ShapeId;
	@:hlNative("Box2d", "SensorEndTouchEvent_get_sensorShapeId")
	function get_sensorShapeId():box2d.ShapeId return cast(0, ShapeId);
	@:hlNative("Box2d", "SensorEndTouchEvent_set_sensorShapeId")
	function set_sensorShapeId(_v:box2d.ShapeId):box2d.ShapeId return cast(0, ShapeId);
	public var visitorShapeId(get, set) : box2d.ShapeId;
	@:hlNative("Box2d", "SensorEndTouchEvent_get_visitorShapeId")
	function get_visitorShapeId():box2d.ShapeId return cast(0, ShapeId);
	@:hlNative("Box2d", "SensorEndTouchEvent_set_visitorShapeId")
	function set_visitorShapeId(_v:box2d.ShapeId):box2d.ShapeId return cast(0, ShapeId);
}
abstract SensorEvents(idl.Types.Ref) from idl.Types.Ref to idl.Types.Ref {
	@:hlNative("Box2d", "SensorEvents_new0")
	static function new0():box2d.SensorEvents return cast(0, SensorEvents);
	public inline function new():box2d.SensorEvents return new0();
	@:hlNative("Box2d", "SensorEvents_getBegin2")
	public function getBegin(i:Int, event:box2d.SensorBeginTouchEvent):Void { }
	@:hlNative("Box2d", "SensorEvents_getEnd2")
	public function getEnd(i:Int, event:box2d.SensorEndTouchEvent):Void { }
	public var beginCount(get, set) : Int;
	@:hlNative("Box2d", "SensorEvents_get_beginCount")
	function get_beginCount():Int return 0;
	@:hlNative("Box2d", "SensorEvents_set_beginCount")
	function set_beginCount(_v:Int):Int return 0;
	public var endCount(get, set) : Int;
	@:hlNative("Box2d", "SensorEvents_get_endCount")
	function get_endCount():Int return 0;
	@:hlNative("Box2d", "SensorEvents_set_endCount")
	function set_endCount(_v:Int):Int return 0;
}
abstract QueryFunc(idl.Types.Ref) from idl.Types.Ref to idl.Types.Ref {
	@:hlNative("Box2d", "QueryFunc_getDefault0")
	static public function getDefault():box2d.QueryFilter return cast(0, QueryFilter);
	@:hlNative("Box2d", "QueryFunc_getCategoryBits1")
	static public function getCategoryBits(filter:box2d.QueryFilter):Int return 0;
	@:hlNative("Box2d", "QueryFunc_getMaskBits1")
	static public function getMaskBits(filter:box2d.QueryFilter):Int return 0;
	@:hlNative("Box2d", "QueryFunc_makeQueryFilter2")
	static public function makeQueryFilter(categoryBits:Int, maskBits:Int):box2d.QueryFilter return cast(0, QueryFilter);
}
abstract ContactBeginTouchEvent(idl.Types.Ref) from idl.Types.Ref to idl.Types.Ref {
	public var shapeIdA(get, set) : box2d.ShapeId;
	@:hlNative("Box2d", "ContactBeginTouchEvent_get_shapeIdA")
	function get_shapeIdA():box2d.ShapeId return cast(0, ShapeId);
	@:hlNative("Box2d", "ContactBeginTouchEvent_set_shapeIdA")
	function set_shapeIdA(_v:box2d.ShapeId):box2d.ShapeId return cast(0, ShapeId);
	public var shapeIdB(get, set) : box2d.ShapeId;
	@:hlNative("Box2d", "ContactBeginTouchEvent_get_shapeIdB")
	function get_shapeIdB():box2d.ShapeId return cast(0, ShapeId);
	@:hlNative("Box2d", "ContactBeginTouchEvent_set_shapeIdB")
	function set_shapeIdB(_v:box2d.ShapeId):box2d.ShapeId return cast(0, ShapeId);
}
abstract ContactEndTouchEvent(idl.Types.Ref) from idl.Types.Ref to idl.Types.Ref {
	public var shapeIdA(get, set) : box2d.ShapeId;
	@:hlNative("Box2d", "ContactEndTouchEvent_get_shapeIdA")
	function get_shapeIdA():box2d.ShapeId return cast(0, ShapeId);
	@:hlNative("Box2d", "ContactEndTouchEvent_set_shapeIdA")
	function set_shapeIdA(_v:box2d.ShapeId):box2d.ShapeId return cast(0, ShapeId);
	public var shapeIdB(get, set) : box2d.ShapeId;
	@:hlNative("Box2d", "ContactEndTouchEvent_get_shapeIdB")
	function get_shapeIdB():box2d.ShapeId return cast(0, ShapeId);
	@:hlNative("Box2d", "ContactEndTouchEvent_set_shapeIdB")
	function set_shapeIdB(_v:box2d.ShapeId):box2d.ShapeId return cast(0, ShapeId);
}
abstract ContactHitEvent(idl.Types.Ref) from idl.Types.Ref to idl.Types.Ref {
	public var shapeIdA(get, set) : box2d.ShapeId;
	@:hlNative("Box2d", "ContactHitEvent_get_shapeIdA")
	function get_shapeIdA():box2d.ShapeId return cast(0, ShapeId);
	@:hlNative("Box2d", "ContactHitEvent_set_shapeIdA")
	function set_shapeIdA(_v:box2d.ShapeId):box2d.ShapeId return cast(0, ShapeId);
	public var shapeIdB(get, set) : box2d.ShapeId;
	@:hlNative("Box2d", "ContactHitEvent_get_shapeIdB")
	function get_shapeIdB():box2d.ShapeId return cast(0, ShapeId);
	@:hlNative("Box2d", "ContactHitEvent_set_shapeIdB")
	function set_shapeIdB(_v:box2d.ShapeId):box2d.ShapeId return cast(0, ShapeId);
	public var point_x(get, set) : Single;
	@:hlNative("Box2d", "ContactHitEvent_get_point_x")
	function get_point_x():Single return 0.;
	@:hlNative("Box2d", "ContactHitEvent_set_point_x")
	function set_point_x(_v:Single):Single return 0.;
	public var point_y(get, set) : Single;
	@:hlNative("Box2d", "ContactHitEvent_get_point_y")
	function get_point_y():Single return 0.;
	@:hlNative("Box2d", "ContactHitEvent_set_point_y")
	function set_point_y(_v:Single):Single return 0.;
	public var normal_x(get, set) : Single;
	@:hlNative("Box2d", "ContactHitEvent_get_normal_x")
	function get_normal_x():Single return 0.;
	@:hlNative("Box2d", "ContactHitEvent_set_normal_x")
	function set_normal_x(_v:Single):Single return 0.;
	public var normal_y(get, set) : Single;
	@:hlNative("Box2d", "ContactHitEvent_get_normal_y")
	function get_normal_y():Single return 0.;
	@:hlNative("Box2d", "ContactHitEvent_set_normal_y")
	function set_normal_y(_v:Single):Single return 0.;
	public var approachSpeed(get, set) : Single;
	@:hlNative("Box2d", "ContactHitEvent_get_approachSpeed")
	function get_approachSpeed():Single return 0.;
	@:hlNative("Box2d", "ContactHitEvent_set_approachSpeed")
	function set_approachSpeed(_v:Single):Single return 0.;
}
abstract ContactEvents(idl.Types.Ref) from idl.Types.Ref to idl.Types.Ref {
	@:hlNative("Box2d", "ContactEvents_getBegin2")
	public function getBegin(i:Int, event:box2d.ContactBeginTouchEvent):Void { }
	@:hlNative("Box2d", "ContactEvents_getEnd2")
	public function getEnd(i:Int, event:box2d.ContactEndTouchEvent):Void { }
	@:hlNative("Box2d", "ContactEvents_getHit2")
	public function getHit(i:Int, event:box2d.ContactHitEvent):Void { }
	public var beginCount(get, set) : Int;
	@:hlNative("Box2d", "ContactEvents_get_beginCount")
	function get_beginCount():Int return 0;
	@:hlNative("Box2d", "ContactEvents_set_beginCount")
	function set_beginCount(_v:Int):Int return 0;
	public var endCount(get, set) : Int;
	@:hlNative("Box2d", "ContactEvents_get_endCount")
	function get_endCount():Int return 0;
	@:hlNative("Box2d", "ContactEvents_set_endCount")
	function set_endCount(_v:Int):Int return 0;
	public var hitCount(get, set) : Int;
	@:hlNative("Box2d", "ContactEvents_get_hitCount")
	function get_hitCount():Int return 0;
	@:hlNative("Box2d", "ContactEvents_set_hitCount")
	function set_hitCount(_v:Int):Int return 0;
}
abstract RayResult(idl.Types.Ref) from idl.Types.Ref to idl.Types.Ref {
	public var shapeId(get, set) : box2d.ShapeId;
	@:hlNative("Box2d", "RayResult_get_shapeId")
	function get_shapeId():box2d.ShapeId return cast(0, ShapeId);
	@:hlNative("Box2d", "RayResult_set_shapeId")
	function set_shapeId(_v:box2d.ShapeId):box2d.ShapeId return cast(0, ShapeId);
	public var point_x(get, set) : Single;
	@:hlNative("Box2d", "RayResult_get_point_x")
	function get_point_x():Single return 0.;
	@:hlNative("Box2d", "RayResult_set_point_x")
	function set_point_x(_v:Single):Single return 0.;
	public var point_y(get, set) : Single;
	@:hlNative("Box2d", "RayResult_get_point_y")
	function get_point_y():Single return 0.;
	@:hlNative("Box2d", "RayResult_set_point_y")
	function set_point_y(_v:Single):Single return 0.;
	public var normal_x(get, set) : Single;
	@:hlNative("Box2d", "RayResult_get_normal_x")
	function get_normal_x():Single return 0.;
	@:hlNative("Box2d", "RayResult_set_normal_x")
	function set_normal_x(_v:Single):Single return 0.;
	public var normal_y(get, set) : Single;
	@:hlNative("Box2d", "RayResult_get_normal_y")
	function get_normal_y():Single return 0.;
	@:hlNative("Box2d", "RayResult_set_normal_y")
	function set_normal_y(_v:Single):Single return 0.;
	public var fraction(get, set) : Single;
	@:hlNative("Box2d", "RayResult_get_fraction")
	function get_fraction():Single return 0.;
	@:hlNative("Box2d", "RayResult_set_fraction")
	function set_fraction(_v:Single):Single return 0.;
	public var hit(get, set) : Bool;
	@:hlNative("Box2d", "RayResult_get_hit")
	function get_hit():Bool return false;
	@:hlNative("Box2d", "RayResult_set_hit")
	function set_hit(_v:Bool):Bool return false;
}
abstract Hull(idl.Types.Ref) from idl.Types.Ref to idl.Types.Ref {
	@:hlNative("Box2d", "Hull_new0")
	static function new0():box2d.Hull return cast(0, Hull);
	public inline function new():box2d.Hull return new0();
	@:hlNative("Box2d", "Hull_fromPoints2")
	public function fromPoints(points:hl.NativeArray<Single>, count:Int):Void { }
	@:hlNative("Box2d", "Hull_isValid0")
	public function isValid():Bool return false;
}
abstract Polygon(idl.Types.Ref) from idl.Types.Ref to idl.Types.Ref {
	@:hlNative("Box2d", "Polygon_new0")
	static function new0():box2d.Polygon return cast(0, Polygon);
	public inline function new():box2d.Polygon return new0();
	@:hlNative("Box2d", "Polygon_fromHull2")
	public function fromHull(hull:box2d.Hull, radius:Single):Bool return false;
	@:hlNative("Box2d", "Polygon_fromOffsetHull5")
	public function fromOffsetHull(hull:box2d.Hull, radius:Single, transform_x:Single, transform_y:Single, transform_rot:Single):Bool return false;
	@:hlNative("Box2d", "Polygon_makeSquare1")
	public function makeSquare(h:Single):Bool return false;
	@:hlNative("Box2d", "Polygon_makeBox2")
	public function makeBox(hx:Single, hy:Single):Bool return false;
	@:hlNative("Box2d", "Polygon_makeRoundedBox3")
	public function makeRoundedBox(hx:Single, hy:Single, radius:Single):Bool return false;
	@:hlNative("Box2d", "Polygon_makeOffsetBox5")
	public function makeOffsetBox(hx:Single, hy:Single, center_x:Single, center_y:Single, angle:Single):Bool return false;
	@:hlNative("Box2d", "Polygon_fromTransformedPolygon4")
	public function fromTransformedPolygon(transform_x:Single, transform_y:Single, transform_rot:Single, polygon:box2d.Polygon):Bool return false;
	@:hlNative("Box2d", "Polygon_translate2")
	public function translate(x:Single, y:Single):Void { }
}
abstract BodyDef(idl.Types.Ref) from idl.Types.Ref to idl.Types.Ref {
	@:hlNative("Box2d", "BodyDef_new0")
	static function new0():box2d.BodyDef return cast(0, BodyDef);
	public inline function new():box2d.BodyDef return new0();
	public var type(get, set) : box2d.BodyType;
	@:hlNative("Box2d", "BodyDef_get_type")
	function get_type():box2d.BodyType return cast(0, BodyType);
	@:hlNative("Box2d", "BodyDef_set_type")
	function set_type(_v:box2d.BodyType):box2d.BodyType return cast(0, BodyType);
	@:hlNative("Box2d", "BodyDef_setPosition2")
	public function setPosition(x:Single, y:Single):Void { }
	public var angle(get, set) : Single;
	@:hlNative("Box2d", "BodyDef_get_angle")
	function get_angle():Single return 0.;
	@:hlNative("Box2d", "BodyDef_set_angle")
	function set_angle(_v:Single):Single return 0.;
	@:hlNative("Box2d", "BodyDef_setLinearVelocity2")
	public function setLinearVelocity(x:Single, y:Single):Void { }
	public var angularVelocity(get, set) : Single;
	@:hlNative("Box2d", "BodyDef_get_angularVelocity")
	function get_angularVelocity():Single return 0.;
	@:hlNative("Box2d", "BodyDef_set_angularVelocity")
	function set_angularVelocity(_v:Single):Single return 0.;
	public var linearDamping(get, set) : Single;
	@:hlNative("Box2d", "BodyDef_get_linearDamping")
	function get_linearDamping():Single return 0.;
	@:hlNative("Box2d", "BodyDef_set_linearDamping")
	function set_linearDamping(_v:Single):Single return 0.;
	public var angularDamping(get, set) : Single;
	@:hlNative("Box2d", "BodyDef_get_angularDamping")
	function get_angularDamping():Single return 0.;
	@:hlNative("Box2d", "BodyDef_set_angularDamping")
	function set_angularDamping(_v:Single):Single return 0.;
	public var gravityScale(get, set) : Single;
	@:hlNative("Box2d", "BodyDef_get_gravityScale")
	function get_gravityScale():Single return 0.;
	@:hlNative("Box2d", "BodyDef_set_gravityScale")
	function set_gravityScale(_v:Single):Single return 0.;
	public var sleepThreshold(get, set) : Single;
	@:hlNative("Box2d", "BodyDef_get_sleepThreshold")
	function get_sleepThreshold():Single return 0.;
	@:hlNative("Box2d", "BodyDef_set_sleepThreshold")
	function set_sleepThreshold(_v:Single):Single return 0.;
	@:hlNative("Box2d", "BodyDef_setUserData1")
	public function setUserData(data:Dynamic):Void { }
	public var enableSleep(get, set) : Bool;
	@:hlNative("Box2d", "BodyDef_get_enableSleep")
	function get_enableSleep():Bool return false;
	@:hlNative("Box2d", "BodyDef_set_enableSleep")
	function set_enableSleep(_v:Bool):Bool return false;
	public var isAwake(get, set) : Bool;
	@:hlNative("Box2d", "BodyDef_get_isAwake")
	function get_isAwake():Bool return false;
	@:hlNative("Box2d", "BodyDef_set_isAwake")
	function set_isAwake(_v:Bool):Bool return false;
	public var fixedRotation(get, set) : Bool;
	@:hlNative("Box2d", "BodyDef_get_fixedRotation")
	function get_fixedRotation():Bool return false;
	@:hlNative("Box2d", "BodyDef_set_fixedRotation")
	function set_fixedRotation(_v:Bool):Bool return false;
	public var isBullet(get, set) : Bool;
	@:hlNative("Box2d", "BodyDef_get_isBullet")
	function get_isBullet():Bool return false;
	@:hlNative("Box2d", "BodyDef_set_isBullet")
	function set_isBullet(_v:Bool):Bool return false;
	public var isEnabled(get, set) : Bool;
	@:hlNative("Box2d", "BodyDef_get_isEnabled")
	function get_isEnabled():Bool return false;
	@:hlNative("Box2d", "BodyDef_set_isEnabled")
	function set_isEnabled(_v:Bool):Bool return false;
	public var automaticMass(get, set) : Bool;
	@:hlNative("Box2d", "BodyDef_get_automaticMass")
	function get_automaticMass():Bool return false;
	@:hlNative("Box2d", "BodyDef_set_automaticMass")
	function set_automaticMass(_v:Bool):Bool return false;
}
abstract ShapeFunc(idl.Types.Ref) from idl.Types.Ref to idl.Types.Ref {
	@:hlNative("Box2d", "ShapeFunc_destroyShape1")
	static public function destroyShape(shapeId:box2d.ShapeId):Void { }
	@:hlNative("Box2d", "ShapeFunc_isValid1")
	static public function isValid(id:box2d.ShapeId):Bool return false;
}
abstract BodyFunc(idl.Types.Ref) from idl.Types.Ref to idl.Types.Ref {
	@:hlNative("Box2d", "BodyFunc_createSegmentShape6")
	static public function createSegmentShape(Body:box2d.Body, def:box2d.ShapeDef, point_1_x:Single, point_1_y:Single, point_2_x:Single, point_2_y:Single):box2d.ShapeId return cast(0, ShapeId);
	@:hlNative("Box2d", "BodyFunc_createCapsuleShape7")
	static public function createCapsuleShape(Body:box2d.Body, def:box2d.ShapeDef, center_1_x:Single, center_1_y:Single, center_2_x:Single, center_2_y:Single, radius:Single):box2d.ShapeId return cast(0, ShapeId);
	@:hlNative("Box2d", "BodyFunc_createPolygonShape3")
	static public function createPolygonShape(Body:box2d.Body, def:box2d.ShapeDef, polygon:box2d.Polygon):box2d.ShapeId return cast(0, ShapeId);
	@:hlNative("Box2d", "BodyFunc_isValid1")
	static public function isValid(id:box2d.Body):Bool return false;
	@:hlNative("Box2d", "BodyFunc_getType1")
	static public function getType(Body:box2d.Body):box2d.BodyType return cast(0, BodyType);
	@:hlNative("Box2d", "BodyFunc_setType2")
	static public function setType(Body:box2d.Body, type:box2d.BodyType):Void { }
	@:hlNative("Box2d", "BodyFunc_setUserData2")
	static public function setUserData(Body:box2d.Body, userData:Dynamic):Void { }
	@:hlNative("Box2d", "BodyFunc_getUserData1")
	static public function getUserData(Body:box2d.Body):Dynamic return null;
	@:hlNative("Box2d", "BodyFunc_getPosition2")
	static public function getPosition(Body:box2d.Body, o_position:hvector.Vec2):Void { }
	@:hlNative("Box2d", "BodyFunc_getRotation2")
	static public function getRotation(Body:box2d.Body, quat:hvector.Vec2):Void { }
	@:hlNative("Box2d", "BodyFunc_getAngle1")
	static public function getAngle(Body:box2d.Body):Single return 0.;
	@:hlNative("Box2d", "BodyFunc_getTransform2")
	static public function getTransform(Body:box2d.Body, transform:box2d.Transform):Void { }
	@:hlNative("Box2d", "BodyFunc_getTransformAsArray2")
	static public function getTransformAsArray(Body:box2d.Body, transform:hl.NativeArray<Single>):Void { }
	@:hlNative("Box2d", "BodyFunc_getLocalPoint4")
	static public function getLocalPoint(Body:box2d.Body, worldPoint_x:Single, worldPoint_y:Single, o_position:hvector.Vec2):Void { }
	@:hlNative("Box2d", "BodyFunc_getWorldPoint4")
	static public function getWorldPoint(Body:box2d.Body, localPoint_x:Single, localPoint_y:Single, o_position:hvector.Vec2):Void { }
	@:hlNative("Box2d", "BodyFunc_getLocalVector4")
	static public function getLocalVector(Body:box2d.Body, worldVector_x:Single, worldVector_y:Single, o_vector:hvector.Vec2):Void { }
	@:hlNative("Box2d", "BodyFunc_getWorldVector4")
	static public function getWorldVector(Body:box2d.Body, localVector_x:Single, localVector_y:Single, o_vector:hvector.Vec2):Void { }
	@:hlNative("Box2d", "BodyFunc_getLinearVelocity2")
	static public function getLinearVelocity(Body:box2d.Body, o_velocity:hvector.Vec2):Void { }
	@:hlNative("Box2d", "BodyFunc_getLinearVelocityAsArray2")
	static public function getLinearVelocityAsArray(Body:box2d.Body, o_velocity:hl.NativeArray<Single>):Void { }
	@:hlNative("Box2d", "BodyFunc_getLinearVelocityS2")
	static public function getLinearVelocityS(Body:box2d.Body, o_velocity:hvector.Vec2):Void { }
	@:hlNative("Box2d", "BodyFunc_getLinearVelocityF2")
	static public function getLinearVelocityF(Body:box2d.Body, o_velocity:hvector.Float2):Void { }
	@:hlNative("Box2d", "BodyFunc_getAngularVelocity1")
	static public function getAngularVelocity(Body:box2d.Body):Single return 0.;
	@:hlNative("Box2d", "BodyFunc_setLinearVelocity3")
	static public function setLinearVelocity(Body:box2d.Body, linearVelocity_x:Single, linearVelocity_y:Single):Void { }
	@:hlNative("Box2d", "BodyFunc_setAngularVelocity2")
	static public function setAngularVelocity(Body:box2d.Body, angularVelocity:Single):Void { }
	@:hlNative("Box2d", "BodyFunc_applyForce6")
	static public function applyForce(Body:box2d.Body, force_x:Single, force_y:Single, point_x:Single, point_y:Single, wake:Bool):Void { }
	@:hlNative("Box2d", "BodyFunc_applyForceToCenter4")
	static public function applyForceToCenter(Body:box2d.Body, force_x:Single, force_y:Single, wake:Bool):Void { }
	@:hlNative("Box2d", "BodyFunc_applyTorque3")
	static public function applyTorque(Body:box2d.Body, torque:Single, wake:Bool):Void { }
	@:hlNative("Box2d", "BodyFunc_applyLinearImpulse6")
	static public function applyLinearImpulse(Body:box2d.Body, impulse_x:Single, impulse_y:Single, point_x:Single, point_y:Single, wake:Bool):Void { }
	@:hlNative("Box2d", "BodyFunc_applyLinearImpulseToCenter4")
	static public function applyLinearImpulseToCenter(Body:box2d.Body, impulse_x:Single, impulse_y:Single, wake:Bool):Void { }
	@:hlNative("Box2d", "BodyFunc_applyAngularImpulse3")
	static public function applyAngularImpulse(Body:box2d.Body, impulse:Single, wake:Bool):Void { }
	@:hlNative("Box2d", "BodyFunc_getMass1")
	static public function getMass(Body:box2d.Body):Single return 0.;
	@:hlNative("Box2d", "BodyFunc_getInertiaTensor1")
	static public function getInertiaTensor(Body:box2d.Body):Single return 0.;
	@:hlNative("Box2d", "BodyFunc_getLocalCenterOfMass2")
	static public function getLocalCenterOfMass(Body:box2d.Body, o_centerOfMass:hvector.Vec2):Void { }
	@:hlNative("Box2d", "BodyFunc_getWorldCenterOfMass2")
	static public function getWorldCenterOfMass(Body:box2d.Body, o_centerOfMass:hvector.Vec2):Void { }
	@:hlNative("Box2d", "BodyFunc_applyMassFromShapes1")
	static public function applyMassFromShapes(Body:box2d.Body):Void { }
	@:hlNative("Box2d", "BodyFunc_SetLinearDamping2")
	static public function SetLinearDamping(Body:box2d.Body, linearDamping:Single):Void { }
	@:hlNative("Box2d", "BodyFunc_getLinearDamping1")
	static public function getLinearDamping(Body:box2d.Body):Single return 0.;
	@:hlNative("Box2d", "BodyFunc_SetAngularDamping2")
	static public function SetAngularDamping(Body:box2d.Body, angularDamping:Single):Void { }
	@:hlNative("Box2d", "BodyFunc_getAngularDamping1")
	static public function getAngularDamping(Body:box2d.Body):Single return 0.;
	@:hlNative("Box2d", "BodyFunc_SetGravityScale2")
	static public function SetGravityScale(Body:box2d.Body, gravityScale:Single):Void { }
	@:hlNative("Box2d", "BodyFunc_getGravityScale1")
	static public function getGravityScale(Body:box2d.Body):Single return 0.;
	@:hlNative("Box2d", "BodyFunc_isAwake1")
	static public function isAwake(Body:box2d.Body):Bool return false;
	@:hlNative("Box2d", "BodyFunc_setAwake2")
	static public function setAwake(Body:box2d.Body, awake:Bool):Void { }
	@:hlNative("Box2d", "BodyFunc_enableSleep2")
	static public function enableSleep(Body:box2d.Body, enableSleep:Bool):Void { }
	@:hlNative("Box2d", "BodyFunc_isSleepEnabled1")
	static public function isSleepEnabled(Body:box2d.Body):Bool return false;
	@:hlNative("Box2d", "BodyFunc_setSleepThreshold2")
	static public function setSleepThreshold(Body:box2d.Body, sleepVelocity:Single):Void { }
	@:hlNative("Box2d", "BodyFunc_getSleepThreshold1")
	static public function getSleepThreshold(Body:box2d.Body):Single return 0.;
	@:hlNative("Box2d", "BodyFunc_isEnabled1")
	static public function isEnabled(Body:box2d.Body):Bool return false;
	@:hlNative("Box2d", "BodyFunc_disable1")
	static public function disable(Body:box2d.Body):Void { }
	@:hlNative("Box2d", "BodyFunc_enable1")
	static public function enable(Body:box2d.Body):Void { }
	@:hlNative("Box2d", "BodyFunc_setFixedRotation2")
	static public function setFixedRotation(Body:box2d.Body, flag:Bool):Void { }
	@:hlNative("Box2d", "BodyFunc_isFixedRotation1")
	static public function isFixedRotation(Body:box2d.Body):Bool return false;
	@:hlNative("Box2d", "BodyFunc_setBullet2")
	static public function setBullet(Body:box2d.Body, flag:Bool):Void { }
	@:hlNative("Box2d", "BodyFunc_isBullet1")
	static public function isBullet(Body:box2d.Body):Bool return false;
	@:hlNative("Box2d", "BodyFunc_enableHitEvents2")
	static public function enableHitEvents(Body:box2d.Body, enableHitEvents:Bool):Void { }
	@:hlNative("Box2d", "BodyFunc_getShapeCount1")
	static public function getShapeCount(Body:box2d.Body):Int return 0;
	@:hlNative("Box2d", "BodyFunc_getJointCount1")
	static public function getJointCount(Body:box2d.Body):Int return 0;
	@:hlNative("Box2d", "BodyFunc_getContactCapacity1")
	static public function getContactCapacity(Body:box2d.Body):Int return 0;
	@:hlNative("Box2d", "BodyFunc_computeAABB2")
	static public function computeAABB(Body:box2d.Body, aabb:box2d.AABB):Void { }
}
enum abstract ShapeType(Int) {
	var circleShape = 0;
	var capsuleShape = 1;
	var segmentShape = 2;
	var polygonShape = 3;
	var smoothSegmentShape = 4;
	var shapeTypeCount = 5;
	@:hlNative("Box2d", "ShapeType_indexToValue1")
	static public function indexToValue(index:Int):Int return 0;
	@:hlNative("Box2d", "ShapeType_valueToIndex1")
	static public function valueToIndex(value:Int):Int return 0;
	@:hlNative("Box2d", "ShapeType_fromValue1")
	static public function fromValue(value:Int):ShapeType return 0;
	@:hlNative("Box2d", "ShapeType_fromIndex1")
	static public function fromIndex(index:Int):ShapeType return 0;
	@:hlNative("Box2d", "ShapeType_toValue0")
	public function toValue():Int return 0;
}
abstract B2Filter(idl.Types.Ref) from idl.Types.Ref to idl.Types.Ref {
	public var categoryBits(get, set) : Int;
	@:hlNative("Box2d", "b2Filter_get_categoryBits")
	function get_categoryBits():Int return 0;
	@:hlNative("Box2d", "b2Filter_set_categoryBits")
	function set_categoryBits(_v:Int):Int return 0;
	public var maskBits(get, set) : Int;
	@:hlNative("Box2d", "b2Filter_get_maskBits")
	function get_maskBits():Int return 0;
	@:hlNative("Box2d", "b2Filter_set_maskBits")
	function set_maskBits(_v:Int):Int return 0;
	public var groupIndex(get, set) : Int;
	@:hlNative("Box2d", "b2Filter_get_groupIndex")
	function get_groupIndex():Int return 0;
	@:hlNative("Box2d", "b2Filter_set_groupIndex")
	function set_groupIndex(_v:Int):Int return 0;
}
abstract ManifoldPoint(idl.Types.Ref) from idl.Types.Ref to idl.Types.Ref {
	public var point_x(get, set) : Single;
	@:hlNative("Box2d", "ManifoldPoint_get_point_x")
	function get_point_x():Single return 0.;
	@:hlNative("Box2d", "ManifoldPoint_set_point_x")
	function set_point_x(_v:Single):Single return 0.;
	public var point_y(get, set) : Single;
	@:hlNative("Box2d", "ManifoldPoint_get_point_y")
	function get_point_y():Single return 0.;
	@:hlNative("Box2d", "ManifoldPoint_set_point_y")
	function set_point_y(_v:Single):Single return 0.;
	public var anchorA_x(get, set) : Single;
	@:hlNative("Box2d", "ManifoldPoint_get_anchorA_x")
	function get_anchorA_x():Single return 0.;
	@:hlNative("Box2d", "ManifoldPoint_set_anchorA_x")
	function set_anchorA_x(_v:Single):Single return 0.;
	public var anchorA_y(get, set) : Single;
	@:hlNative("Box2d", "ManifoldPoint_get_anchorA_y")
	function get_anchorA_y():Single return 0.;
	@:hlNative("Box2d", "ManifoldPoint_set_anchorA_y")
	function set_anchorA_y(_v:Single):Single return 0.;
	public var anchorB_x(get, set) : Single;
	@:hlNative("Box2d", "ManifoldPoint_get_anchorB_x")
	function get_anchorB_x():Single return 0.;
	@:hlNative("Box2d", "ManifoldPoint_set_anchorB_x")
	function set_anchorB_x(_v:Single):Single return 0.;
	public var anchorB_y(get, set) : Single;
	@:hlNative("Box2d", "ManifoldPoint_get_anchorB_y")
	function get_anchorB_y():Single return 0.;
	@:hlNative("Box2d", "ManifoldPoint_set_anchorB_y")
	function set_anchorB_y(_v:Single):Single return 0.;
	public var separation(get, set) : Single;
	@:hlNative("Box2d", "ManifoldPoint_get_separation")
	function get_separation():Single return 0.;
	@:hlNative("Box2d", "ManifoldPoint_set_separation")
	function set_separation(_v:Single):Single return 0.;
	public var normalImpulse(get, set) : Single;
	@:hlNative("Box2d", "ManifoldPoint_get_normalImpulse")
	function get_normalImpulse():Single return 0.;
	@:hlNative("Box2d", "ManifoldPoint_set_normalImpulse")
	function set_normalImpulse(_v:Single):Single return 0.;
	public var tangentImpulse(get, set) : Single;
	@:hlNative("Box2d", "ManifoldPoint_get_tangentImpulse")
	function get_tangentImpulse():Single return 0.;
	@:hlNative("Box2d", "ManifoldPoint_set_tangentImpulse")
	function set_tangentImpulse(_v:Single):Single return 0.;
	public var maxNormalImpulse(get, set) : Single;
	@:hlNative("Box2d", "ManifoldPoint_get_maxNormalImpulse")
	function get_maxNormalImpulse():Single return 0.;
	@:hlNative("Box2d", "ManifoldPoint_set_maxNormalImpulse")
	function set_maxNormalImpulse(_v:Single):Single return 0.;
	public var normalVelocity(get, set) : Single;
	@:hlNative("Box2d", "ManifoldPoint_get_normalVelocity")
	function get_normalVelocity():Single return 0.;
	@:hlNative("Box2d", "ManifoldPoint_set_normalVelocity")
	function set_normalVelocity(_v:Single):Single return 0.;
	public var id(get, set) : Int;
	@:hlNative("Box2d", "ManifoldPoint_get_id")
	function get_id():Int return 0;
	@:hlNative("Box2d", "ManifoldPoint_set_id")
	function set_id(_v:Int):Int return 0;
	public var persisted(get, set) : Bool;
	@:hlNative("Box2d", "ManifoldPoint_get_persisted")
	function get_persisted():Bool return false;
	@:hlNative("Box2d", "ManifoldPoint_set_persisted")
	function set_persisted(_v:Bool):Bool return false;
}
abstract Manifold(idl.Types.Ref) from idl.Types.Ref to idl.Types.Ref {
	public var points0(get, never) : box2d.ManifoldPoint;
	@:hlNative("Box2d", "Manifold_get_points0")
	function get_points0():box2d.ManifoldPoint return cast(0, ManifoldPoint);
	public var points1(get, never) : box2d.ManifoldPoint;
	@:hlNative("Box2d", "Manifold_get_points1")
	function get_points1():box2d.ManifoldPoint return cast(0, ManifoldPoint);
	public var normal_x(get, set) : Single;
	@:hlNative("Box2d", "Manifold_get_normal_x")
	function get_normal_x():Single return 0.;
	@:hlNative("Box2d", "Manifold_set_normal_x")
	function set_normal_x(_v:Single):Single return 0.;
	public var normal_y(get, set) : Single;
	@:hlNative("Box2d", "Manifold_get_normal_y")
	function get_normal_y():Single return 0.;
	@:hlNative("Box2d", "Manifold_set_normal_y")
	function set_normal_y(_v:Single):Single return 0.;
	public var pointCount(get, set) : Int;
	@:hlNative("Box2d", "Manifold_get_pointCount")
	function get_pointCount():Int return 0;
	@:hlNative("Box2d", "Manifold_set_pointCount")
	function set_pointCount(_v:Int):Int return 0;
}
abstract WorldFunc(idl.Types.Ref) from idl.Types.Ref to idl.Types.Ref {

}
abstract WorldContext(idl.Types.Ref) from idl.Types.Ref to idl.Types.Ref {
	@:hlNative("Box2d", "WorldContext_new1")
	static function new1(workerCount:Int):box2d.WorldContext return cast(0, WorldContext);
	public inline function new(workerCount:Int):box2d.WorldContext return new1(cast workerCount);
	@:hlNative("Box2d", "WorldContext_setGravity2")
	public function setGravity(x:Single, y:Single):Void { }
	public var restitutionThreshold(get, set) : Single;
	@:hlNative("Box2d", "WorldContext_get_restitutionThreshold")
	function get_restitutionThreshold():Single return 0.;
	@:hlNative("Box2d", "WorldContext_set_restitutionThreshold")
	function set_restitutionThreshold(_v:Single):Single return 0.;
	public var contactPushoutVelocity(get, set) : Single;
	@:hlNative("Box2d", "WorldContext_get_contactPushoutVelocity")
	function get_contactPushoutVelocity():Single return 0.;
	@:hlNative("Box2d", "WorldContext_set_contactPushoutVelocity")
	function set_contactPushoutVelocity(_v:Single):Single return 0.;
	public var hitEventThreshold(get, set) : Single;
	@:hlNative("Box2d", "WorldContext_get_hitEventThreshold")
	function get_hitEventThreshold():Single return 0.;
	@:hlNative("Box2d", "WorldContext_set_hitEventThreshold")
	function set_hitEventThreshold(_v:Single):Single return 0.;
	public var contactHertz(get, set) : Single;
	@:hlNative("Box2d", "WorldContext_get_contactHertz")
	function get_contactHertz():Single return 0.;
	@:hlNative("Box2d", "WorldContext_set_contactHertz")
	function set_contactHertz(_v:Single):Single return 0.;
	public var contactDampingRatio(get, set) : Single;
	@:hlNative("Box2d", "WorldContext_get_contactDampingRatio")
	function get_contactDampingRatio():Single return 0.;
	@:hlNative("Box2d", "WorldContext_set_contactDampingRatio")
	function set_contactDampingRatio(_v:Single):Single return 0.;
	public var jointHertz(get, set) : Single;
	@:hlNative("Box2d", "WorldContext_get_jointHertz")
	function get_jointHertz():Single return 0.;
	@:hlNative("Box2d", "WorldContext_set_jointHertz")
	function set_jointHertz(_v:Single):Single return 0.;
	public var jointDampingRatio(get, set) : Single;
	@:hlNative("Box2d", "WorldContext_get_jointDampingRatio")
	function get_jointDampingRatio():Single return 0.;
	@:hlNative("Box2d", "WorldContext_set_jointDampingRatio")
	function set_jointDampingRatio(_v:Single):Single return 0.;
	public var enableSleep(get, set) : Bool;
	@:hlNative("Box2d", "WorldContext_get_enableSleep")
	function get_enableSleep():Bool return false;
	@:hlNative("Box2d", "WorldContext_set_enableSleep")
	function set_enableSleep(_v:Bool):Bool return false;
	public var enableContinous(get, set) : Bool;
	@:hlNative("Box2d", "WorldContext_get_enableContinous")
	function get_enableContinous():Bool return false;
	@:hlNative("Box2d", "WorldContext_set_enableContinous")
	function set_enableContinous(_v:Bool):Bool return false;
	@:hlNative("Box2d", "WorldContext_createWorld0")
	public function createWorld():box2d.World return cast(0, World);
	@:hlNative("Box2d", "WorldContext_destroyWorld1")
	public function destroyWorld(id:box2d.World):Void { }
	@:hlNative("Box2d", "WorldContext_step3")
	public function step(worldId:box2d.World, timeStep:Single, subStepCount:Int):Void { }
	@:hlNative("Box2d", "WorldContext_EnableDebug0")
	static public function EnableDebug():Void { }
}

#end
#if cpp

@:native("ShapeId") @:structAccess @:unreflective @:nativeArrayAccess @:build(idl.macros.MacroTools.buildHXCPPIDLType("${BOX2D_IDL_DIR}/box2d.idl")) extern abstract ShapeId(haxe.Int64) from haxe.Int64 to haxe.Int64 {

}
@:native("hbox2c::ShapeDef") @:structAccess @:unreflective @:nativeArrayAccess @:build(idl.macros.MacroTools.buildHXCPPIDLType("${BOX2D_IDL_DIR}/box2d.idl")) extern class ShapeDef {
	public extern function clear():Void;
	public var userData : Dynamic;
	public var friction : Single;
	public var restitution : Single;
	public var density : Single;
	@:native("filter.categoryBits")
	public var categoryBits : Int;
	@:native("filter.maskBits")
	public var maskBits : Int;
	@:native("filter.groupIndex")
	public var groupIndex : Int;
	public var isSensor : Bool;
	public var enableSensorEvents : Bool;
	public var enableContactEvents : Bool;
	public var enableHitEvents : Bool;
	public var enablePreSolveEvents : Bool;
	public var forceContactCreation : Bool;
	public inline function asPtr():box2d.ShapeDefPtr return cpp.Pointer.addressOf(this);
	@:native("hbox2c::ShapeDef")
	public static function make():box2d.ShapeDef;
}
@:forward @:forwardStatics @:unreflective extern abstract ShapeDefPtr(cpp.Pointer<box2d.ShapeDef>) from cpp.Pointer<box2d.ShapeDef> to cpp.Pointer<box2d.ShapeDef> {
	@:native("new hbox2c::ShapeDef")
	public static extern function alloc():box2d.ShapeDefPtr;
	@:native("delete ")
	public extern function free():Void;
	public inline function clear():Void this.ref.clear();
	public inline function asPtr():box2d.ShapeDefPtr return this;
	@:from
	public static inline function fromCast(self:cpp.Reference<box2d.ShapeDef>):box2d.ShapeDefPtr return cpp.Pointer.addressOf(self);
}
@:native("b2Transform") @:structAccess @:unreflective @:nativeArrayAccess @:build(idl.macros.MacroTools.buildHXCPPIDLType("${BOX2D_IDL_DIR}/box2d.idl")) extern class Transform {
	@:native("p.x")
	public var x : Single;
	@:native("p.y")
	public var y : Single;
	@:native("q.c")
	public var c : Single;
	@:native("q.s")
	public var s : Single;
	public inline function asPtr():box2d.TransformPtr return cpp.Pointer.addressOf(this);
	@:native("b2Transform")
	public static function make():box2d.Transform;
}
@:forward @:forwardStatics @:unreflective extern abstract TransformPtr(cpp.Pointer<box2d.Transform>) from cpp.Pointer<box2d.Transform> to cpp.Pointer<box2d.Transform> {
	@:native("new b2Transform")
	public static extern function alloc():box2d.TransformPtr;
	@:native("delete ")
	public extern function free():Void;
	public inline function asPtr():box2d.TransformPtr return this;
	@:from
	public static inline function fromCast(self:cpp.Reference<box2d.Transform>):box2d.TransformPtr return cpp.Pointer.addressOf(self);
}
@:native("hb2BodyId") @:structAccess @:unreflective @:nativeArrayAccess @:build(idl.macros.MacroTools.buildHXCPPIDLType("${BOX2D_IDL_DIR}/box2d.idl")) extern abstract Body(haxe.Int64) from haxe.Int64 to haxe.Int64 {
	@:native("hbox2c::Body::CreateCircleShape")
	static function _r_createCircleShape(This:Body, def:ShapeDefPtr, center_x:Single, center_y:Single, radius:Single):ShapeId;
	public inline function createCircleShape(def:ShapeDefPtr, center_x:Single, center_y:Single, radius:Single):ShapeId return _r_createCircleShape(this, cast def, cast center_x, cast center_y, cast radius);
	@:native("hbox2c::Body::SetTransform")
	static function _r_setTransform(This:Body, position_x:Single, position_y:Single, angle:Single):Void;
	public inline function setTransform(position_x:Single, position_y:Single, angle:Single):Void _r_setTransform(this, cast position_x, cast position_y, cast angle);
	@:native("hbox2c::Body::SetTransformF")
	static function _r_setTransformF(This:Body, position:hvector.Float2, angle:Single):Void;
	public inline function setTransformF(position:hvector.Float2, angle:Single):Void _r_setTransformF(this, cast position, cast angle);
	@:native("hbox2c::Body::GetTransform")
	static function _r_getTransform(This:Body, transform:TransformPtr):Void;
	public inline function getTransform(transform:TransformPtr):Void _r_getTransform(this, cast transform);
	@:native("hbox2c::Body::GetTransformAsArray")
	static function _r_getTransformAsArray(This:Body, transform:Array<Single>):Void;
	public inline function getTransformAsArray(transform:Array<Single>):Void _r_getTransformAsArray(this, cast transform);
}
@:native("hb2WorldId") @:structAccess @:unreflective @:nativeArrayAccess @:build(idl.macros.MacroTools.buildHXCPPIDLType("${BOX2D_IDL_DIR}/box2d.idl")) extern abstract World(Int) from Int to Int {
	@:native("hb2DestroyWorld")
	static function _r_destroy(This:World):Void;
	public inline function destroy():Void _r_destroy(this);
	@:native("hb2CreateBody")
	static function _r_createBody(This:World, def:BodyDefPtr):Body;
	public inline function createBody(def:BodyDefPtr):Body return _r_createBody(this, cast def);
}
@:native("QueryFilter") @:structAccess @:unreflective @:nativeArrayAccess @:build(idl.macros.MacroTools.buildHXCPPIDLType("${BOX2D_IDL_DIR}/box2d.idl")) extern abstract QueryFilter(haxe.Int64) from haxe.Int64 to haxe.Int64 {

}
@:native("b2BodyType") @:notNull @:build(idl.macros.MacroTools.buildHXCPPIDLType("${BOX2D_IDL_DIR}/box2d.idl")) extern enum abstract BodyType(Int) {
	@:native("b2BodyType::b2_staticBody")
	var staticBody;
	@:native("b2BodyType::b2_kinematicBody")
	var kinematicBody;
	@:native("b2BodyType::b2_dynamicBody")
	var dynamicBody;
	public inline function toString():String {
		var thisAsEnum:BodyType = cast this;
		return switch thisAsEnum {
			case staticBody:"staticBody";
			case kinematicBody:"kinematicBody";
			case dynamicBody:"dynamicBody";
			default:"Unknown BodyType";
		};
	}
	public inline function toInt():Int return cast this;
}
@:native("b2AABB") @:structAccess @:unreflective @:nativeArrayAccess @:build(idl.macros.MacroTools.buildHXCPPIDLType("${BOX2D_IDL_DIR}/box2d.idl")) extern class AABB {
	@:native("lowerBound.x")
	public var lowerBound_x : Single;
	@:native("lowerBound.y")
	public var lowerBound_y : Single;
	@:native("upperBound.x")
	public var upperBound_x : Single;
	@:native("upperBound.y")
	public var upperBound_y : Single;
	public inline function asPtr():box2d.AABBPtr return cpp.Pointer.addressOf(this);
	@:native("b2AABB")
	public static function make():box2d.AABB;
}
@:forward @:forwardStatics @:unreflective extern abstract AABBPtr(cpp.Pointer<box2d.AABB>) from cpp.Pointer<box2d.AABB> to cpp.Pointer<box2d.AABB> {
	@:native("new b2AABB")
	public static extern function alloc():box2d.AABBPtr;
	@:native("delete ")
	public extern function free():Void;
	public inline function asPtr():box2d.AABBPtr return this;
	@:from
	public static inline function fromCast(self:cpp.Reference<box2d.AABB>):box2d.AABBPtr return cpp.Pointer.addressOf(self);
}
@:native("b2BodyMoveEvent") @:structAccess @:unreflective @:nativeArrayAccess @:build(idl.macros.MacroTools.buildHXCPPIDLType("${BOX2D_IDL_DIR}/box2d.idl")) extern class BodyMoveEvent {
	@:native("transform.p.x")
	public var pos_x : Single;
	@:native("transform.p.y")
	public var pos_y : Single;
	@:native("transform.q.c")
	public var quat_c : Single;
	@:native("transform.q.s")
	public var quat_s : Single;
	public var body : Body;
	public var userData : Dynamic;
	public var fellAsleep : Bool;
	public inline function asPtr():box2d.BodyMoveEventPtr return cpp.Pointer.addressOf(this);
}
@:forward @:forwardStatics @:unreflective extern abstract BodyMoveEventPtr(cpp.Pointer<box2d.BodyMoveEvent>) from cpp.Pointer<box2d.BodyMoveEvent> to cpp.Pointer<box2d.BodyMoveEvent> {
	public inline function asPtr():box2d.BodyMoveEventPtr return this;
	@:from
	public static inline function fromCast(self:cpp.Reference<box2d.BodyMoveEvent>):box2d.BodyMoveEventPtr return cpp.Pointer.addressOf(self);
}
@:native("hbox2c::BodyEvents") @:structAccess @:unreflective @:nativeArrayAccess @:build(idl.macros.MacroTools.buildHXCPPIDLType("${BOX2D_IDL_DIR}/box2d.idl")) extern class BodyEvents {
	public extern function getMove(i:Int, moveEvent:BodyMoveEvent):Void;
	public var moveCount : Int;
	public inline function asPtr():box2d.BodyEventsPtr return cpp.Pointer.addressOf(this);
}
@:forward @:forwardStatics @:unreflective extern abstract BodyEventsPtr(cpp.Pointer<box2d.BodyEvents>) from cpp.Pointer<box2d.BodyEvents> to cpp.Pointer<box2d.BodyEvents> {
	public inline function getMove(i:Int, moveEvent:BodyMoveEvent):Void this.ref.getMove(i, moveEvent);
	public inline function asPtr():box2d.BodyEventsPtr return this;
	@:from
	public static inline function fromCast(self:cpp.Reference<box2d.BodyEvents>):box2d.BodyEventsPtr return cpp.Pointer.addressOf(self);
}
@:native("hbox2c::SensorBeginTouchEvent") @:structAccess @:unreflective @:nativeArrayAccess @:build(idl.macros.MacroTools.buildHXCPPIDLType("${BOX2D_IDL_DIR}/box2d.idl")) extern class SensorBeginTouchEvent {
	public var sensorShapeId : ShapeId;
	public var visitorShapeId : ShapeId;
	public inline function asPtr():box2d.SensorBeginTouchEventPtr return cpp.Pointer.addressOf(this);
}
@:forward @:forwardStatics @:unreflective extern abstract SensorBeginTouchEventPtr(cpp.Pointer<box2d.SensorBeginTouchEvent>) from cpp.Pointer<box2d.SensorBeginTouchEvent> to cpp.Pointer<box2d.SensorBeginTouchEvent> {
	public inline function asPtr():box2d.SensorBeginTouchEventPtr return this;
	@:from
	public static inline function fromCast(self:cpp.Reference<box2d.SensorBeginTouchEvent>):box2d.SensorBeginTouchEventPtr return cpp.Pointer.addressOf(self);
}
@:native("hbox2c::SensorEndTouchEvent") @:structAccess @:unreflective @:nativeArrayAccess @:build(idl.macros.MacroTools.buildHXCPPIDLType("${BOX2D_IDL_DIR}/box2d.idl")) extern class SensorEndTouchEvent {
	public var sensorShapeId : ShapeId;
	public var visitorShapeId : ShapeId;
	public inline function asPtr():box2d.SensorEndTouchEventPtr return cpp.Pointer.addressOf(this);
}
@:forward @:forwardStatics @:unreflective extern abstract SensorEndTouchEventPtr(cpp.Pointer<box2d.SensorEndTouchEvent>) from cpp.Pointer<box2d.SensorEndTouchEvent> to cpp.Pointer<box2d.SensorEndTouchEvent> {
	public inline function asPtr():box2d.SensorEndTouchEventPtr return this;
	@:from
	public static inline function fromCast(self:cpp.Reference<box2d.SensorEndTouchEvent>):box2d.SensorEndTouchEventPtr return cpp.Pointer.addressOf(self);
}
@:native("hbox2c::SensorEvents") @:structAccess @:unreflective @:nativeArrayAccess @:build(idl.macros.MacroTools.buildHXCPPIDLType("${BOX2D_IDL_DIR}/box2d.idl")) extern class SensorEvents {
	public extern function getBegin(i:Int, event:SensorBeginTouchEvent):Void;
	public extern function getEnd(i:Int, event:SensorEndTouchEvent):Void;
	public var beginCount : Int;
	public var endCount : Int;
	public inline function asPtr():box2d.SensorEventsPtr return cpp.Pointer.addressOf(this);
	@:native("hbox2c::SensorEvents")
	public static function make():box2d.SensorEvents;
}
@:forward @:forwardStatics @:unreflective extern abstract SensorEventsPtr(cpp.Pointer<box2d.SensorEvents>) from cpp.Pointer<box2d.SensorEvents> to cpp.Pointer<box2d.SensorEvents> {
	@:native("new hbox2c::SensorEvents")
	public static extern function alloc():box2d.SensorEventsPtr;
	@:native("delete ")
	public extern function free():Void;
	public inline function getBegin(i:Int, event:SensorBeginTouchEvent):Void this.ref.getBegin(i, event);
	public inline function getEnd(i:Int, event:SensorEndTouchEvent):Void this.ref.getEnd(i, event);
	public inline function asPtr():box2d.SensorEventsPtr return this;
	@:from
	public static inline function fromCast(self:cpp.Reference<box2d.SensorEvents>):box2d.SensorEventsPtr return cpp.Pointer.addressOf(self);
}
@:native("QueryFunc") @:structAccess @:unreflective @:nativeArrayAccess @:build(idl.macros.MacroTools.buildHXCPPIDLType("${BOX2D_IDL_DIR}/box2d.idl")) extern class QueryFunc {
	@:native("b2DefaultQueryFilter")
	static public extern function getDefault():QueryFilter;
	static public extern function getCategoryBits(filter:QueryFilter):Int;
	static public extern function getMaskBits(filter:QueryFilter):Int;
	static public extern function makeQueryFilter(categoryBits:Int, maskBits:Int):QueryFilter;
	public inline function asPtr():box2d.QueryFuncPtr return cpp.Pointer.addressOf(this);
}
@:forward @:forwardStatics @:unreflective extern abstract QueryFuncPtr(cpp.Pointer<box2d.QueryFunc>) from cpp.Pointer<box2d.QueryFunc> to cpp.Pointer<box2d.QueryFunc> {
	@:native("b2DefaultQueryFilter")
	static public inline function getDefault():QueryFilter return box2d.QueryFunc.getDefault();
	static public inline function getCategoryBits(filter:QueryFilter):Int return box2d.QueryFunc.getCategoryBits(filter);
	static public inline function getMaskBits(filter:QueryFilter):Int return box2d.QueryFunc.getMaskBits(filter);
	static public inline function makeQueryFilter(categoryBits:Int, maskBits:Int):QueryFilter return box2d.QueryFunc.makeQueryFilter(categoryBits, maskBits);
	public inline function asPtr():box2d.QueryFuncPtr return this;
	@:from
	public static inline function fromCast(self:cpp.Reference<box2d.QueryFunc>):box2d.QueryFuncPtr return cpp.Pointer.addressOf(self);
}
@:native("b2ContactBeginTouchEvent") @:structAccess @:unreflective @:nativeArrayAccess @:build(idl.macros.MacroTools.buildHXCPPIDLType("${BOX2D_IDL_DIR}/box2d.idl")) extern class ContactBeginTouchEvent {
	public var shapeIdA : ShapeId;
	public var shapeIdB : ShapeId;
	public inline function asPtr():box2d.ContactBeginTouchEventPtr return cpp.Pointer.addressOf(this);
}
@:forward @:forwardStatics @:unreflective extern abstract ContactBeginTouchEventPtr(cpp.Pointer<box2d.ContactBeginTouchEvent>) from cpp.Pointer<box2d.ContactBeginTouchEvent> to cpp.Pointer<box2d.ContactBeginTouchEvent> {
	public inline function asPtr():box2d.ContactBeginTouchEventPtr return this;
	@:from
	public static inline function fromCast(self:cpp.Reference<box2d.ContactBeginTouchEvent>):box2d.ContactBeginTouchEventPtr return cpp.Pointer.addressOf(self);
}
@:native("b2ContactEndTouchEvent") @:structAccess @:unreflective @:nativeArrayAccess @:build(idl.macros.MacroTools.buildHXCPPIDLType("${BOX2D_IDL_DIR}/box2d.idl")) extern class ContactEndTouchEvent {
	public var shapeIdA : ShapeId;
	public var shapeIdB : ShapeId;
	public inline function asPtr():box2d.ContactEndTouchEventPtr return cpp.Pointer.addressOf(this);
}
@:forward @:forwardStatics @:unreflective extern abstract ContactEndTouchEventPtr(cpp.Pointer<box2d.ContactEndTouchEvent>) from cpp.Pointer<box2d.ContactEndTouchEvent> to cpp.Pointer<box2d.ContactEndTouchEvent> {
	public inline function asPtr():box2d.ContactEndTouchEventPtr return this;
	@:from
	public static inline function fromCast(self:cpp.Reference<box2d.ContactEndTouchEvent>):box2d.ContactEndTouchEventPtr return cpp.Pointer.addressOf(self);
}
@:native("hbox2c::ContactHitEvent") @:structAccess @:unreflective @:nativeArrayAccess @:build(idl.macros.MacroTools.buildHXCPPIDLType("${BOX2D_IDL_DIR}/box2d.idl")) extern class ContactHitEvent {
	public var shapeIdA : ShapeId;
	public var shapeIdB : ShapeId;
	@:native("point.x")
	public var point_x : Single;
	@:native("point.y")
	public var point_y : Single;
	@:native("normal.x")
	public var normal_x : Single;
	@:native("normal.y")
	public var normal_y : Single;
	public var approachSpeed : Single;
	public inline function asPtr():box2d.ContactHitEventPtr return cpp.Pointer.addressOf(this);
}
@:forward @:forwardStatics @:unreflective extern abstract ContactHitEventPtr(cpp.Pointer<box2d.ContactHitEvent>) from cpp.Pointer<box2d.ContactHitEvent> to cpp.Pointer<box2d.ContactHitEvent> {
	public inline function asPtr():box2d.ContactHitEventPtr return this;
	@:from
	public static inline function fromCast(self:cpp.Reference<box2d.ContactHitEvent>):box2d.ContactHitEventPtr return cpp.Pointer.addressOf(self);
}
@:native("hbox2c::ContactEvents") @:structAccess @:unreflective @:nativeArrayAccess @:build(idl.macros.MacroTools.buildHXCPPIDLType("${BOX2D_IDL_DIR}/box2d.idl")) extern class ContactEvents {
	public extern function getBegin(i:Int, event:ContactBeginTouchEvent):Void;
	public extern function getEnd(i:Int, event:ContactEndTouchEvent):Void;
	public extern function getHit(i:Int, event:ContactHitEvent):Void;
	public var beginCount : Int;
	public var endCount : Int;
	public var hitCount : Int;
	public inline function asPtr():box2d.ContactEventsPtr return cpp.Pointer.addressOf(this);
}
@:forward @:forwardStatics @:unreflective extern abstract ContactEventsPtr(cpp.Pointer<box2d.ContactEvents>) from cpp.Pointer<box2d.ContactEvents> to cpp.Pointer<box2d.ContactEvents> {
	public inline function getBegin(i:Int, event:ContactBeginTouchEvent):Void this.ref.getBegin(i, event);
	public inline function getEnd(i:Int, event:ContactEndTouchEvent):Void this.ref.getEnd(i, event);
	public inline function getHit(i:Int, event:ContactHitEvent):Void this.ref.getHit(i, event);
	public inline function asPtr():box2d.ContactEventsPtr return this;
	@:from
	public static inline function fromCast(self:cpp.Reference<box2d.ContactEvents>):box2d.ContactEventsPtr return cpp.Pointer.addressOf(self);
}
@:native("hbox2c::RayResult") @:structAccess @:unreflective @:nativeArrayAccess @:build(idl.macros.MacroTools.buildHXCPPIDLType("${BOX2D_IDL_DIR}/box2d.idl")) extern class RayResult {
	public var shapeId : ShapeId;
	@:native("point.x")
	public var point_x : Single;
	@:native("point.y")
	public var point_y : Single;
	@:native("normal.x")
	public var normal_x : Single;
	@:native("normal.y")
	public var normal_y : Single;
	public var fraction : Single;
	public var hit : Bool;
	public inline function asPtr():box2d.RayResultPtr return cpp.Pointer.addressOf(this);
}
@:forward @:forwardStatics @:unreflective extern abstract RayResultPtr(cpp.Pointer<box2d.RayResult>) from cpp.Pointer<box2d.RayResult> to cpp.Pointer<box2d.RayResult> {
	public inline function asPtr():box2d.RayResultPtr return this;
	@:from
	public static inline function fromCast(self:cpp.Reference<box2d.RayResult>):box2d.RayResultPtr return cpp.Pointer.addressOf(self);
}
@:native("hbox2c::Hull") @:structAccess @:unreflective @:nativeArrayAccess @:build(idl.macros.MacroTools.buildHXCPPIDLType("${BOX2D_IDL_DIR}/box2d.idl")) extern class Hull {
	public extern function fromPoints(points:Array<Single>, count:Int):Void;
	public extern function isValid():Bool;
	public inline function asPtr():box2d.HullPtr return cpp.Pointer.addressOf(this);
	@:native("hbox2c::Hull")
	public static function make():box2d.Hull;
}
@:forward @:forwardStatics @:unreflective extern abstract HullPtr(cpp.Pointer<box2d.Hull>) from cpp.Pointer<box2d.Hull> to cpp.Pointer<box2d.Hull> {
	@:native("new hbox2c::Hull")
	public static extern function alloc():box2d.HullPtr;
	@:native("delete ")
	public extern function free():Void;
	public inline function fromPoints(points:Array<Single>, count:Int):Void this.ref.fromPoints(points, count);
	public inline function isValid():Bool return this.ref.isValid();
	public inline function asPtr():box2d.HullPtr return this;
	@:from
	public static inline function fromCast(self:cpp.Reference<box2d.Hull>):box2d.HullPtr return cpp.Pointer.addressOf(self);
}
@:native("hbox2c::Polygon") @:structAccess @:unreflective @:nativeArrayAccess @:build(idl.macros.MacroTools.buildHXCPPIDLType("${BOX2D_IDL_DIR}/box2d.idl")) extern class Polygon {
	public extern function fromHull(hull:Hull, radius:Single):Bool;
	public extern function fromOffsetHull(hull:Hull, radius:Single, transform_x:Single, transform_y:Single, transform_rot:Single):Bool;
	public extern function makeSquare(h:Single):Bool;
	public extern function makeBox(hx:Single, hy:Single):Bool;
	public extern function makeRoundedBox(hx:Single, hy:Single, radius:Single):Bool;
	public extern function makeOffsetBox(hx:Single, hy:Single, center_x:Single, center_y:Single, angle:Single):Bool;
	public extern function fromTransformedPolygon(transform_x:Single, transform_y:Single, transform_rot:Single, polygon:Polygon):Bool;
	public extern function translate(x:Single, y:Single):Void;
	public inline function asPtr():box2d.PolygonPtr return cpp.Pointer.addressOf(this);
	@:native("hbox2c::Polygon")
	public static function make():box2d.Polygon;
}
@:forward @:forwardStatics @:unreflective extern abstract PolygonPtr(cpp.Pointer<box2d.Polygon>) from cpp.Pointer<box2d.Polygon> to cpp.Pointer<box2d.Polygon> {
	@:native("new hbox2c::Polygon")
	public static extern function alloc():box2d.PolygonPtr;
	@:native("delete ")
	public extern function free():Void;
	public inline function fromHull(hull:Hull, radius:Single):Bool return this.ref.fromHull(hull, radius);
	public inline function fromOffsetHull(hull:Hull, radius:Single, transform_x:Single, transform_y:Single, transform_rot:Single):Bool return this.ref.fromOffsetHull(hull, radius, transform_x, transform_y, transform_rot);
	public inline function makeSquare(h:Single):Bool return this.ref.makeSquare(h);
	public inline function makeBox(hx:Single, hy:Single):Bool return this.ref.makeBox(hx, hy);
	public inline function makeRoundedBox(hx:Single, hy:Single, radius:Single):Bool return this.ref.makeRoundedBox(hx, hy, radius);
	public inline function makeOffsetBox(hx:Single, hy:Single, center_x:Single, center_y:Single, angle:Single):Bool return this.ref.makeOffsetBox(hx, hy, center_x, center_y, angle);
	public inline function fromTransformedPolygon(transform_x:Single, transform_y:Single, transform_rot:Single, polygon:Polygon):Bool return this.ref.fromTransformedPolygon(transform_x, transform_y, transform_rot, polygon);
	public inline function translate(x:Single, y:Single):Void this.ref.translate(x, y);
	public inline function asPtr():box2d.PolygonPtr return this;
	@:from
	public static inline function fromCast(self:cpp.Reference<box2d.Polygon>):box2d.PolygonPtr return cpp.Pointer.addressOf(self);
}
@:native("hbox2c::BodyDef") @:structAccess @:unreflective @:nativeArrayAccess @:build(idl.macros.MacroTools.buildHXCPPIDLType("${BOX2D_IDL_DIR}/box2d.idl")) extern class BodyDef {
	public var type : box2d.BodyType;
	public extern function setPosition(x:Single, y:Single):Void;
	public var angle : Single;
	public extern function setLinearVelocity(x:Single, y:Single):Void;
	public var angularVelocity : Single;
	public var linearDamping : Single;
	public var angularDamping : Single;
	public var gravityScale : Single;
	public var sleepThreshold : Single;
	public extern function setUserData(data:Dynamic):Void;
	public var enableSleep : Bool;
	public var isAwake : Bool;
	public var fixedRotation : Bool;
	public var isBullet : Bool;
	public var isEnabled : Bool;
	public var automaticMass : Bool;
	public inline function asPtr():box2d.BodyDefPtr return cpp.Pointer.addressOf(this);
	@:native("hbox2c::BodyDef")
	public static function make():box2d.BodyDef;
}
@:forward @:forwardStatics @:unreflective extern abstract BodyDefPtr(cpp.Pointer<box2d.BodyDef>) from cpp.Pointer<box2d.BodyDef> to cpp.Pointer<box2d.BodyDef> {
	@:native("new hbox2c::BodyDef")
	public static extern function alloc():box2d.BodyDefPtr;
	@:native("delete ")
	public extern function free():Void;
	public inline function setPosition(x:Single, y:Single):Void this.ref.setPosition(x, y);
	public inline function setLinearVelocity(x:Single, y:Single):Void this.ref.setLinearVelocity(x, y);
	public inline function setUserData(data:Dynamic):Void this.ref.setUserData(data);
	public inline function asPtr():box2d.BodyDefPtr return this;
	@:from
	public static inline function fromCast(self:cpp.Reference<box2d.BodyDef>):box2d.BodyDefPtr return cpp.Pointer.addressOf(self);
}
@:native("ShapeFunc") @:structAccess @:unreflective @:nativeArrayAccess @:build(idl.macros.MacroTools.buildHXCPPIDLType("${BOX2D_IDL_DIR}/box2d.idl")) extern class ShapeFunc {
	@:native("hbox2c::Body::DestroyShape")
	static public extern function destroyShape(shapeId:ShapeId):Void;
	@:native("b2Shape_IsValid")
	static public extern function isValid(id:ShapeId):Bool;
}
@:native("BodyFunc") @:structAccess @:unreflective @:nativeArrayAccess @:build(idl.macros.MacroTools.buildHXCPPIDLType("${BOX2D_IDL_DIR}/box2d.idl")) extern class BodyFunc {
	@:native("hbox2c::Body::CreateSegmentShape")
	static public extern function createSegmentShape(Body:Body, def:ShapeDef, point_1_x:Single, point_1_y:Single, point_2_x:Single, point_2_y:Single):ShapeId;
	@:native("hbox2c::Body::CreateCapsuleShape")
	static public extern function createCapsuleShape(Body:Body, def:ShapeDef, center_1_x:Single, center_1_y:Single, center_2_x:Single, center_2_y:Single, radius:Single):ShapeId;
	@:native("b2CreatePolygonShape")
	static public extern function createPolygonShape(Body:Body, def:ShapeDef, polygon:Polygon):ShapeId;
	@:native("b2Body_IsValid")
	static public extern function isValid(id:Body):Bool;
	@:native("b2Body_GetType")
	static public extern function getType(Body:Body):box2d.BodyType;
	@:native("b2Body_SetType")
	static public extern function setType(Body:Body, type:box2d.BodyType):Void;
	@:native("b2Body_SetUserData")
	static public extern function setUserData(Body:Body, userData:Dynamic):Void;
	@:native("b2Body_GetUserData")
	static public extern function getUserData(Body:Body):Dynamic;
	@:native("hbox2c::Body::GetPosition")
	static public extern function getPosition(Body:Body, o_position:hvector.Vec2):Void;
	@:native("hbox2c::Body::GetRotation")
	static public extern function getRotation(Body:Body, quat:hvector.Vec2):Void;
	@:native("b2Body_GetAngle")
	static public extern function getAngle(Body:Body):Single;
	@:native("hbox2c::Body::GetTransform")
	static public extern function getTransform(Body:Body, transform:Transform):Void;
	@:native("hbox2c::Body::GetTransformAsArray")
	static public extern function getTransformAsArray(Body:Body, transform:Array<Single>):Void;
	@:native("hbox2c::Body::GetLocalPoint")
	static public extern function getLocalPoint(Body:Body, worldPoint_x:Single, worldPoint_y:Single, o_position:hvector.Vec2):Void;
	@:native("hbox2c::Body::GetWorldPoint")
	static public extern function getWorldPoint(Body:Body, localPoint_x:Single, localPoint_y:Single, o_position:hvector.Vec2):Void;
	@:native("hbox2c::Body::GetLocalVector")
	static public extern function getLocalVector(Body:Body, worldVector_x:Single, worldVector_y:Single, o_vector:hvector.Vec2):Void;
	@:native("hbox2c::Body::GetWorldVector")
	static public extern function getWorldVector(Body:Body, localVector_x:Single, localVector_y:Single, o_vector:hvector.Vec2):Void;
	@:native("hbox2c::Body::GetLinearVelocity")
	static public extern function getLinearVelocity(Body:Body, o_velocity:hvector.Vec2):Void;
	@:native("hbox2c::Body::GetLinearVelocityAsArray")
	static public extern function getLinearVelocityAsArray(Body:Body, o_velocity:Array<Single>):Void;
	@:native("hbox2c::Body::GetLinearVelocityS")
	static public extern function getLinearVelocityS(Body:Body, o_velocity:hvector.Vec2):Void;
	@:native("hbox2c::Body::GetLinearVelocityF")
	static public extern function getLinearVelocityF(Body:Body, o_velocity:hvector.Float2):Void;
	@:native("b2Body_GetAngularVelocity")
	static public extern function getAngularVelocity(Body:Body):Single;
	@:native("hbox2c::Body::SetLinearVelocity")
	static public extern function setLinearVelocity(Body:Body, linearVelocity_x:Single, linearVelocity_y:Single):Void;
	@:native("b2Body_SetAngularVelocity")
	static public extern function setAngularVelocity(Body:Body, angularVelocity:Single):Void;
	@:native("hbox2c::Body::ApplyForce")
	static public extern function applyForce(Body:Body, force_x:Single, force_y:Single, point_x:Single, point_y:Single, wake:Bool):Void;
	@:native("hbox2c::Body::ApplyForceToCenter")
	static public extern function applyForceToCenter(Body:Body, force_x:Single, force_y:Single, wake:Bool):Void;
	@:native("b2Body_ApplyTorque")
	static public extern function applyTorque(Body:Body, torque:Single, wake:Bool):Void;
	@:native("hbox2c::Body::ApplyLinearImpulse")
	static public extern function applyLinearImpulse(Body:Body, impulse_x:Single, impulse_y:Single, point_x:Single, point_y:Single, wake:Bool):Void;
	@:native("hbox2c::Body::ApplyLinearImpulseToCenter")
	static public extern function applyLinearImpulseToCenter(Body:Body, impulse_x:Single, impulse_y:Single, wake:Bool):Void;
	@:native("b2Body_ApplyAngularImpulse")
	static public extern function applyAngularImpulse(Body:Body, impulse:Single, wake:Bool):Void;
	@:native("b2Body_GetMass")
	static public extern function getMass(Body:Body):Single;
	@:native("b2Body_GetInertiaTensor")
	static public extern function getInertiaTensor(Body:Body):Single;
	@:native("hbox2c::Body::GetLocalCenterOfMass")
	static public extern function getLocalCenterOfMass(Body:Body, o_centerOfMass:hvector.Vec2):Void;
	@:native("hbox2c::Body::GetWorldCenterOfMass")
	static public extern function getWorldCenterOfMass(Body:Body, o_centerOfMass:hvector.Vec2):Void;
	@:native("b2Body_ApplyMassFromShapes")
	static public extern function applyMassFromShapes(Body:Body):Void;
	@:native("b2Body_SetLinearDamping")
	static public extern function SetLinearDamping(Body:Body, linearDamping:Single):Void;
	@:native("b2Body_GetLinearDamping")
	static public extern function getLinearDamping(Body:Body):Single;
	@:native("b2Body_SetAngularDamping")
	static public extern function SetAngularDamping(Body:Body, angularDamping:Single):Void;
	@:native("b2Body_GetAngularDamping")
	static public extern function getAngularDamping(Body:Body):Single;
	@:native("b2Body_SetGravityScale")
	static public extern function SetGravityScale(Body:Body, gravityScale:Single):Void;
	@:native("b2Body_GetGravityScale")
	static public extern function getGravityScale(Body:Body):Single;
	@:native("b2Body_IsAwake")
	static public extern function isAwake(Body:Body):Bool;
	@:native("b2Body_SetAwake")
	static public extern function setAwake(Body:Body, awake:Bool):Void;
	@:native("b2Body_EnableSleep")
	static public extern function enableSleep(Body:Body, enableSleep:Bool):Void;
	@:native("b2Body_IsSleepEnabled")
	static public extern function isSleepEnabled(Body:Body):Bool;
	@:native("b2Body_SetSleepThreshold")
	static public extern function setSleepThreshold(Body:Body, sleepVelocity:Single):Void;
	@:native("b2Body_GetSleepThreshold")
	static public extern function getSleepThreshold(Body:Body):Single;
	@:native("b2Body_IsEnabled")
	static public extern function isEnabled(Body:Body):Bool;
	@:native("b2Body_Disable")
	static public extern function disable(Body:Body):Void;
	@:native("b2Body_Enable")
	static public extern function enable(Body:Body):Void;
	@:native("b2Body_SetFixedRotation")
	static public extern function setFixedRotation(Body:Body, flag:Bool):Void;
	@:native("b2Body_IsFixedRotation")
	static public extern function isFixedRotation(Body:Body):Bool;
	@:native("b2Body_SetBullet")
	static public extern function setBullet(Body:Body, flag:Bool):Void;
	@:native("b2Body_IsBullet")
	static public extern function isBullet(Body:Body):Bool;
	@:native("b2Body_EnableHitEvents")
	static public extern function enableHitEvents(Body:Body, enableHitEvents:Bool):Void;
	@:native("b2Body_GetShapeCount")
	static public extern function getShapeCount(Body:Body):Int;
	@:native("b2Body_GetJointCount")
	static public extern function getJointCount(Body:Body):Int;
	@:native("b2Body_GetContactCapacity")
	static public extern function getContactCapacity(Body:Body):Int;
	@:native("hbox2c::Body::ComputeAABB")
	static public extern function computeAABB(Body:Body, aabb:AABB):Void;
}
@:native("b2ShapeType") @:notNull @:build(idl.macros.MacroTools.buildHXCPPIDLType("${BOX2D_IDL_DIR}/box2d.idl")) extern enum abstract ShapeType(Int) {
	@:native("b2ShapeType::b2_circleShape")
	var circleShape;
	@:native("b2ShapeType::b2_capsuleShape")
	var capsuleShape;
	@:native("b2ShapeType::b2_segmentShape")
	var segmentShape;
	@:native("b2ShapeType::b2_polygonShape")
	var polygonShape;
	@:native("b2ShapeType::b2_smoothSegmentShape")
	var smoothSegmentShape;
	@:native("b2ShapeType::b2_shapeTypeCount")
	var shapeTypeCount;
	public inline function toString():String {
		var thisAsEnum:ShapeType = cast this;
		return switch thisAsEnum {
			case circleShape:"circleShape";
			case capsuleShape:"capsuleShape";
			case segmentShape:"segmentShape";
			case polygonShape:"polygonShape";
			case smoothSegmentShape:"smoothSegmentShape";
			case shapeTypeCount:"shapeTypeCount";
			default:"Unknown ShapeType";
		};
	}
	public inline function toInt():Int return cast this;
}
@:native("b2Filter") @:structAccess @:unreflective @:nativeArrayAccess @:build(idl.macros.MacroTools.buildHXCPPIDLType("${BOX2D_IDL_DIR}/box2d.idl")) extern class B2Filter {
	public var categoryBits : Int;
	public var maskBits : Int;
	public var groupIndex : Int;
	public inline function asPtr():box2d.B2FilterPtr return cpp.Pointer.addressOf(this);
}
@:forward @:forwardStatics @:unreflective extern abstract B2FilterPtr(cpp.Pointer<box2d.B2Filter>) from cpp.Pointer<box2d.B2Filter> to cpp.Pointer<box2d.B2Filter> {
	public inline function asPtr():box2d.B2FilterPtr return this;
	@:from
	public static inline function fromCast(self:cpp.Reference<box2d.B2Filter>):box2d.B2FilterPtr return cpp.Pointer.addressOf(self);
}
@:native("hbox2c::ManifoldPoint") @:structAccess @:unreflective @:nativeArrayAccess @:build(idl.macros.MacroTools.buildHXCPPIDLType("${BOX2D_IDL_DIR}/box2d.idl")) extern class ManifoldPoint {
	@:native("point.x")
	public var point_x : Single;
	@:native("point.y")
	public var point_y : Single;
	@:native("anchorA.x")
	public var anchorA_x : Single;
	@:native("anchorA.y")
	public var anchorA_y : Single;
	@:native("anchorB.x")
	public var anchorB_x : Single;
	@:native("anchorB.y")
	public var anchorB_y : Single;
	public var separation : Single;
	public var normalImpulse : Single;
	public var tangentImpulse : Single;
	public var maxNormalImpulse : Single;
	public var normalVelocity : Single;
	public var id : Int;
	public var persisted : Bool;
	public inline function asPtr():box2d.ManifoldPointPtr return cpp.Pointer.addressOf(this);
}
@:forward @:forwardStatics @:unreflective extern abstract ManifoldPointPtr(cpp.Pointer<box2d.ManifoldPoint>) from cpp.Pointer<box2d.ManifoldPoint> to cpp.Pointer<box2d.ManifoldPoint> {
	public inline function asPtr():box2d.ManifoldPointPtr return this;
	@:from
	public static inline function fromCast(self:cpp.Reference<box2d.ManifoldPoint>):box2d.ManifoldPointPtr return cpp.Pointer.addressOf(self);
}
@:native("hbox2c::Manifold") @:structAccess @:unreflective @:nativeArrayAccess @:build(idl.macros.MacroTools.buildHXCPPIDLType("${BOX2D_IDL_DIR}/box2d.idl")) extern class Manifold {
	@:native("points[0]")
	public var points0 : ManifoldPoint;
	@:native("points[1]")
	public var points1 : ManifoldPoint;
	@:native("normal.x")
	public var normal_x : Single;
	@:native("normal.x")
	public var normal_y : Single;
	public var pointCount : Int;
	public inline function asPtr():box2d.ManifoldPtr return cpp.Pointer.addressOf(this);
}
@:forward @:forwardStatics @:unreflective extern abstract ManifoldPtr(cpp.Pointer<box2d.Manifold>) from cpp.Pointer<box2d.Manifold> to cpp.Pointer<box2d.Manifold> {
	public inline function asPtr():box2d.ManifoldPtr return this;
	@:from
	public static inline function fromCast(self:cpp.Reference<box2d.Manifold>):box2d.ManifoldPtr return cpp.Pointer.addressOf(self);
}
@:native("WorldFunc") @:structAccess @:unreflective @:nativeArrayAccess @:build(idl.macros.MacroTools.buildHXCPPIDLType("${BOX2D_IDL_DIR}/box2d.idl")) extern class WorldFunc {

}
@:native("hbox2c::WorldContext") @:structAccess @:unreflective @:nativeArrayAccess @:build(idl.macros.MacroTools.buildHXCPPIDLType("${BOX2D_IDL_DIR}/box2d.idl")) extern class WorldContext {
	public extern function setGravity(x:Single, y:Single):Void;
	public var restitutionThreshold : Single;
	public var contactPushoutVelocity : Single;
	public var hitEventThreshold : Single;
	public var contactHertz : Single;
	public var contactDampingRatio : Single;
	public var jointHertz : Single;
	public var jointDampingRatio : Single;
	public var enableSleep : Bool;
	public var enableContinous : Bool;
	public extern function createWorld():World;
	public extern function destroyWorld(id:World):Void;
	public extern function step(worldId:World, timeStep:Single, subStepCount:Int):Void;
	@:native("hbox2c::WorldContext::EnableDebug")
	static public extern function EnableDebug():Void;
	public inline function asPtr():box2d.WorldContextPtr return cpp.Pointer.addressOf(this);
	@:native("hbox2c::WorldContext")
	public static function make(workerCount:Int):box2d.WorldContext;
}
@:forward @:forwardStatics @:unreflective extern abstract WorldContextPtr(cpp.Pointer<box2d.WorldContext>) from cpp.Pointer<box2d.WorldContext> to cpp.Pointer<box2d.WorldContext> {
	@:native("new hbox2c::WorldContext")
	public static extern function alloc(workerCount:Int):box2d.WorldContextPtr;
	@:native("delete ")
	public extern function free():Void;
	public inline function setGravity(x:Single, y:Single):Void this.ref.setGravity(x, y);
	public inline function createWorld():World return this.ref.createWorld();
	public inline function destroyWorld(id:World):Void this.ref.destroyWorld(id);
	public inline function step(worldId:World, timeStep:Single, subStepCount:Int):Void this.ref.step(worldId, timeStep, subStepCount);
	@:native("hbox2c::WorldContext::EnableDebug")
	static public inline function EnableDebug():Void box2d.WorldContext.EnableDebug();
	public inline function asPtr():box2d.WorldContextPtr return this;
	@:from
	public static inline function fromCast(self:cpp.Reference<box2d.WorldContext>):box2d.WorldContextPtr return cpp.Pointer.addressOf(self);
}

#end
