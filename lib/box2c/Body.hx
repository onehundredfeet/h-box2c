package box2c;
import box2c.Native.WorldContext;
import box2c.Native.BodyType;
import box2c.Native.WorldFunc;
import box2c.ShapeDef;
import box2c.Native.BodyFunc;
import box2c.Native.ShapeFunc;
import box2c.Native.Transform;
import box2c.Native.Polygon;
import hvector.Float2;
import hvector.Vec2;

#if hl
import hl.NativeArray;
#end

abstract Body(haxe.Int64) from haxe.Int64 to haxe.Int64 {
    public static inline final INVALID = 0;

    public inline function isValid() : Bool {
        return BodyFunc.isValid(this);
    }
    public inline function addCircleShape( def : ShapeDef, center_x : Float, center_y : Float, radius : Float) : haxe.Int64 {
        return BodyFunc.createCircleShape(this, def, center_x, center_y, radius);
    }

    function getPolygon() : Polygon {
        if (_polygons.length == 0) {
            return new Polygon();
        }
        return _polygons.pop();
    }

    public inline function addBoxShape( def : ShapeDef, center_x : Float, center_y : Float, width : Float, height : Float) : haxe.Int64 {
        var p = getPolygon();
        p.makeBox( width, height );
        p.translate( center_x, center_y );
        _polygons.push(p);
        return BodyFunc.createPolygonShape(this, def, p);
    }

    public inline function setTransform( x : Float, y : Float, angle : Float) : Void {
        return BodyFunc.setTransform(this, x, y, angle);
    }
    public inline function setTransformF( p : Float2, angle : Float) : Void {
        return BodyFunc.setTransformF(this, p, angle);
    }

    public inline function getTransform(t : Transform) : Void {
        return BodyFunc.getTransform(this, t);
    }
    public inline function getTransformAsArray(t : NativeArray<Single>) : Void {
        return BodyFunc.getTransformAsArray(this, t);
    }

    public inline function getLinearVelocity(v : Vec2) : Void {
        return BodyFunc.getLinearVelocity(this, v);
    }
    public inline function getLinearVelocityAsArray(v : NativeArray<Single>) : Void {
        return BodyFunc.getLinearVelocityAsArray(this, v);
    }
    public inline function getLinearVelocityF(v : Float2) : Void {
        return BodyFunc.getLinearVelocityF(this, v);
    }

    public inline function getAngle() : Float {
        return BodyFunc.getAngle(this);
    }

    public inline function getPosition(v : Vec2) : Void {
        return BodyFunc.getPosition(this, v);
    }
    public inline function getRotation(v : Vec2) : Void {
        return BodyFunc.getRotation(this, v);
    }

    public inline function getAngularVelocity() : Float {
        return BodyFunc.getAngularVelocity(this);
    }

    public inline function setLinearVelocity(x : Float, y : Float) : Void {
        BodyFunc.setLinearVelocity(this, x, y);
    }

    public inline function setAngularVelocity(v : Float) : Void {
        BodyFunc.setAngularVelocity(this, v);
    }

    public inline function addDefaultCircleShape(x : Float, y: Float, r:Float):Shape {
        var def = ShapeDef.rent();

		var shapeID = BodyFunc.createCircleShape(this, def, x, y, r);

        def.retire();

        return shapeID;

	}
    public inline function applyForceToCenterF( force : Float2, wake : Bool) {
        BodyFunc.applyForceToCenter(this, force.x, force.y, wake);
    }
    public inline function applyTorque( torque : Float,  wake : Bool) {
        BodyFunc.applyTorque(this, torque, wake);
    }

    static var _polygons = new Array<Polygon>();

}