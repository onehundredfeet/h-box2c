package ;
import box2c.Native.WorldContext;
import box2c.Native.BodyDef;
import box2c.Native.BodyType;
import box2c.Native.World;
import box2c.Native.ShapeDef;
import box2c.Native.Body;

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
            var bodyId = World.createBody(world, bodyDef);
			// bodyDef.position = b2Body_GetPosition(m_ship1Id);
			// bodyDef.angle = b2Body_GetAngle(m_ship1Id);
			// // bodyDef.gravityScale = 0.0f;

            var shapeDef = new ShapeDef();
            Body.createCircleShape(bodyId, shapeDef, 0.5, 0.0, 2.0);
		}



        trace('Created world... ${world}');
        for (i in 0...100) {
            trace('Step... ${i}');
            worldContext.step(world, 1/100.0, 1);
        }

        worldContext.destroyWorld(world);

        trace('done testing box 2c');
    }
}
