package box2d;


abstract Shape(haxe.Int64) from haxe.Int64 to haxe.Int64 {
    public inline function isValid() : Bool {
        return ShapeFunc.isValid(this);
    }
}