package box2c;

import box2c.Native.ShapeFunc;


abstract Shape(haxe.Int64) from haxe.Int64 to haxe.Int64 {
    public inline function isValid() : Bool {
        return ShapeFunc.isValid(this);
    }
}