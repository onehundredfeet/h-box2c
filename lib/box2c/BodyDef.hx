package box2c;

@:forward
@:forward.new
abstract BodyDef(box2c.Native.BodyDefinition) from box2c.Native.BodyDefinition to box2c.Native.BodyDefinition {
    static var _shapes = new Array<BodyDef>();

    public static function rent() {
        if (_shapes.length > 0)
            return _shapes.pop();
        else
            return new box2c.Native.BodyDefinition();
    }

    public function retire() {
        _shapes.push(this);
    }
}