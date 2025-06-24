package box2d;

@:forward
@:forward.new
abstract ShapeDef(box2d.Native.ShapeDefinition) from box2d.Native.ShapeDefinition to box2d.Native.ShapeDefinition {

    static var _shapes = new Array<ShapeDef>();

    public static function rent() {
        if (_shapes.length > 0)
            return _shapes.pop();
        else
            return new box2d.Native.ShapeDefinition();
    }

    public function retire() {
        _shapes.push(this);
    }
}