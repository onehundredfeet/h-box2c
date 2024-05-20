package box2c;

@:forward
@:forward.new
abstract ShapeDef(box2c.Native.ShapeDefinition) from box2c.Native.ShapeDefinition to box2c.Native.ShapeDefinition {

    static var _shapes = new Array<ShapeDef>();

    public static function rent() {
        if (_shapes.length > 0)
            return _shapes.pop();
        else
            return new box2c.Native.ShapeDefinition();
    }

    public function retire() {
        _shapes.push(this);
    }
}