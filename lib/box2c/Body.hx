package box2c;
import box2c.Native.WorldContext;
import box2c.Native.BodyType;
import box2c.Native.WorldFunc;
import box2c.ShapeDef;
import box2c.Native.BodyFunc;
import box2c.Native.ShapeFunc;
import box2c.Native.Transform;
import box2c.Native.Polygon;


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

    public inline function getTransform(t : Transform) : Void {
        return BodyFunc.getTransform(this, t);
    }

    public inline function addDefaultCircleShape(x : Float, y: Float, r:Float):Shape {
        var def = ShapeDef.rent();

		var shapeID = BodyFunc.createCircleShape(this, def, x, y, r);

        def.retire();

        return shapeID;

	}

    static var _polygons = new Array<Polygon>();

}