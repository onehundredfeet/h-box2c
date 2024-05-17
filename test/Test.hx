package ;
import box2c.Native.WorldContext;

class Test {

    public static function main() {
        trace('Testing box 2c');

        WorldContext.EnableDebug();
        var worldContext = new WorldContext(12);

        var world  = worldContext.createWorld();

        trace('Created world... ${world}');
        for (i in 0...100) {
            trace('Step... ${i}');
            worldContext.step(world, 1/100.0, 1);
        }

        worldContext.destroyWorld(world);

        trace('done testing box 2c');
    }
}
