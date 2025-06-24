package box2d;

import box2d.Native.WorldFunc;

abstract World(Int) from Int to Int {

    public inline function destroy() {
        WorldFunc.destroy(this);
    }

    public inline function createBody(def : BodyDef) {
        return WorldFunc.createBody(this, def);
    
    }

    public inline function  isValid() {
        return WorldFunc.isValid(this);
    }
}
