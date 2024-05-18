package ;
import box2c.Native.WorldContext;
import box2c.Native.BodyDef;
import box2c.Native.BodyType;
import box2c.Native.World;
import box2c.Native.ShapeDef;
import box2c.Native.Transform;
import box2c.Body;
import haxe.Timer;

class Test {

    public static function main() {
        trace('Testing box 2c');

        WorldContext.EnableDebug();
        var worldContext = new WorldContext(40);

        var world  = worldContext.createWorld();


        {
            var bodyDef = new BodyDef();
			// b2BodyDef bodyDef = b2DefaultBodyDef();
			bodyDef.type = BodyType.dynamicBody;
            var body : Body = World.createBody(world, bodyDef);
			// bodyDef.position = b2Body_GetPosition(m_ship1Id);
			// bodyDef.angle = b2Body_GetAngle(m_ship1Id);
			// // bodyDef.gravityScale = 0.0f;

            var shapeDef = new ShapeDef();
            body.createCircleShape( shapeDef, 0.5, 0.0, 2.0);
            body.setTransform( 0.0, 10.0, 0.0);
            var transform = new Transform();
            body.getTransform(transform);
		}




        var iterations = 100000;

        trace('Created world... ${world}');
        var time = Timer.stamp();

        for (i in 0...iterations) {
            worldContext.step(world, 1/1000.0, 1);
        }
        var delta = Timer.stamp() - time;

        trace('Stepped ${iterations} times... in ${delta} seconds = ${(delta/iterations) * 1000} ms per step');

        worldContext.destroyWorld(world);

        trace('done testing box 2c');
    }
}
