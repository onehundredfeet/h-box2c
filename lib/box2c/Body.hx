package box2c;
import box2c.Native.WorldContext;
import box2c.Native.BodyDef;
import box2c.Native.BodyType;
import box2c.Native.World;
import box2c.Native.ShapeDef;
import box2c.Native.BodyFunc;
import box2c.Native.Transform;


abstract Body(haxe.Int64) from haxe.Int64 to haxe.Int64 {
    public inline function createCircleShape( def : ShapeDef, center_x : Float, center_y : Float, radius : Float) : haxe.Int64 {
        return BodyFunc.createCircleShape(this, def, center_x, center_y, radius);
    }

    public inline function setTransform( x : Float, y : Float, angle : Float) : Void {
        return BodyFunc.setTransform(this, x, y, angle);
    }

    public inline function getTransform(t : Transform) : Void {
        return BodyFunc.getTransform(this, t);
    }
}