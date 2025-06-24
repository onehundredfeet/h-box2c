package box2d;

@:forward
@:forward.new
abstract BodyDef(box2d.Native.BodyDefinition) from box2d.Native.BodyDefinition to box2d.Native.BodyDefinition {
    static var _shapes = new Array<BodyDef>();

    public static function rent() {
        if (_shapes.length > 0)
            return _shapes.pop();
        else
            return new box2d.Native.BodyDefinition();
    }

    public function retire() {
        _shapes.push(this);
    }
}