@JS()
library phaser.phaser_box2d;

import "package:js/js.dart";
import "phaser.comments.dart"
    show Game, Signal, Debug,  Tilemap;
import "pixi.comments.dart" show Point, Sprite;
import "box2d.dart"
    show
        b2World,
        b2ParticleSystem,
        b2Body,
        b2MouseJoint,
        b2Fixture,
        b2DistanceJoint,
        b2RopeJoint,
        b2RevoluteJoint,
        b2PrismaticJoint,
        b2FrictionJoint,
        b2WeldJoint,
        b2MotorJoint,
        b2WheelJoint,
        b2PulleyJoint,
        b2GearJoint,
        b2Joint,
        b2Color,
        b2Transform,
        b2Vec2,
        b2AABB,
        b2Contact,
        b2Manifold,
        b2ContactImpulse,
        b2BodyDef;
import "dart:html" show CanvasRenderingContext2D;

/// <reference path="phaser.comments.d.ts" />
/// <reference path="box2d.d.ts" />

// Module Phaser

// Module Physics
@JS("Phaser.Physics.Box2D")
class Box2D {
  // @Ignore
  Box2D.fakeConstructor$();
  external factory Box2D(Game game, [dynamic config]);

  /// @property {Phaser.Game} game - Local reference to game.
  external Game get game;
  external set game(Game v);

  /// @property {string} version - The version of the Box2D Plugin that is running.
  external String get version;
  external set version(String v);

  /// @property {number} ptmRatio - Pixels to Meters ratio - @default 50
  external num get ptmRatio;
  external set ptmRatio(num v);

  /// @property {box2d.b2World} world - The Box2D world in which the simulation is run.
  external b2World get world;
  external set world(b2World v);

  /// @property {Phaser.Physics.Box2D.DefaultDebugDraw} - used for rendering debug information
  external DefaultDebugDraw get debugDraw;
  external set debugDraw(DefaultDebugDraw v);

  /// @property {Phaser.Physics.Box2D.DefaultContactListener} - used to check if bodies have contact callbacks set
  external DefaultContactListener get contactListener;
  external set contactListener(DefaultContactListener v);

  /// @property {number} nextBodyId - The id to give the next created body
  external num get nextBodyId;
  external set nextBodyId(num v);

  /// @property {number} nextFixtureId - The id to give the next created fixture
  external num get nextFixtureId;
  external set nextFixtureId(num v);

  /// @property {box2d.b2Vec2} gravity - The gravity of the Box2D world.
  external PointProxy get gravity;
  external set gravity(PointProxy v);

  /// @property {number} friction - The default friction for fixtures created by 'enable', or other functions like setRectangle, setPolygon etc
  external num get friction;
  external set friction(num v);

  /// @property {number} restitution - The default restitution for fixtures created by 'enable', or other functions like setRectangle, setPolygon etc
  external num get restitution;
  external set restitution(num v);

  /// @property {number} density - The default density for fixtures created by 'enable', or other functions like setRectangle, setPolygon etc
  external num get density;
  external set density(num v);

  /// @property {number} frameRate - The frame rate the world will be stepped at. Defaults to 1 / 60, but you can change here. Also see useElapsedTime property.
  external num get frameRate;
  external set frameRate(num v);

  /// @property {number} velocityIterations - The maximum number of iterations allowed to adjust velocities to match constraints. Defaults to 8.
  external num get velocityIterations;
  external set velocityIterations(num v);

  /// @property {number} positionIterations - The maximum number of iterations allowed to adjust positions to match constraints. Defaults to 3.
  external num get positionIterations;
  external set positionIterations(num v);

  /// @property {boolean} useElapsedTime - If true the frameRate value will be ignored and instead Box2D will step with the value of Game.Time.physicsElapsed, which is a delta time value.
  external bool get useElapsedTime;
  external set useElapsedTime(bool v);

  /// @property {boolean} paused - The paused state of the Box2D world.
  external bool get paused;
  external set paused(bool v);

  /// @property {box2d.b2ParticleSystem} particleSystem - The World Particle System. Enabled with World.createParticleSystem.
  external b2ParticleSystem get particleSystem;
  external set particleSystem(b2ParticleSystem v);

  /// @property {box2d.b2Body} mouseJointBody - A static body with no fixtures, used internally as the 'body A' for mouse joints when dragging dynamic bodies.
  external b2Body get mouseJointBody;
  external set mouseJointBody(b2Body v);

  /// @property {box2d.b2MouseJoint} mouseJoint - The active mouse joint for dragging dynamic bodies.
  external b2MouseJoint get mouseJoint;
  external set mouseJoint(b2MouseJoint v);

  /// Pixel to meter function overrides.
  /// mpx: Function;
  /// pxm: Function;
  /// @property {object} walls - An object containing the 4 wall bodies that bound the physics world.
  external WallsObject get walls;
  external set walls(WallsObject v);

  /// @property {Phaser.Signal} onBodyAdded - Dispatched when a new Body is added to the World.
  external Signal get onBodyAdded;
  external set onBodyAdded(Signal v);

  /// @property {Phaser.Signal} onBodyRemoved - Dispatched when a Body is removed from the World.
  external Signal get onBodyRemoved;
  external set onBodyRemoved(Signal v);
  external static num get worldBoundsFilterCategory;
  external static set worldBoundsFilterCategory(num v);

  /// Returns the next id to use to keep body ids unique
  external num getNextBodyId();

  /// Returns the next id to use to keep fixture ids unique
  external num getNextFixtureId();

  /// This will add a Box2D physics body into the removal list for the next step.
  external void removeBodyNextStep(Body body);

  /// Called at the start of the core update loop. Purges flagged bodies from the world.
  external void preUpdate();

  /// This will create a Box2D physics body on the given game object or array of game objects.
  /// A game object can only have 1 physics body active at any one time, and it can't be changed until the object is destroyed.
  /// Note: When the game object is enabled for Box2D physics it has its anchor x/y set to 0.5 so it becomes centered.
  external void enable(dynamic object, [bool children]);

  /// Creates a Box2D physics body on the given game object.
  /// A game object can only have 1 physics body active at any one time, and it can't be changed until the body is nulled.
  external void enableBody(dynamic object);

  /// Sets the bounds of the Physics world to match the Game.World dimensions.
  /// You can optionally set which 'walls' to create: left, right, top or bottom.
  external void setBoundsToWorld(
      [bool left,
      bool right,
      bool top,
      bool bottom,
      num collisionCategory,
      num collisionMask]);

  /// Sets the bounds of the Physics world to match the given world pixel dimensions.
  /// You can optionally set which 'walls' to create: left, right, top or bottom.
  external void setBounds(num x, num y, num width, num height,
      [bool left,
      bool right,
      bool top,
      bool bottom,
      num collisionCategory,
      num collisionMask]);

  /// Pauses the Box2D world independent of the game pause state.
  external void pause();

  /// Resumes a paused Box2D world.
  external void resume();

  /// Internal Box2D update loop.
  external void update();

  /// Clears all bodies from the simulation, resets callbacks.
  external void reset();

  /// Clears all bodies from the simulation, resets callbacks.
  external void clear();

  /// Clears all bodies from the simulation and unlinks World from Game. Should only be called on game shutdown. Call `clear` on a State change.
  external void destroy();

  /// Creates a new Body and adds it to the World.
  external Body createBody([num x, num y, num density]);

  /// Creates a new dynamic Body and adds a Circle fixture to it of the given size.
  external Body createCircle(
      [num x, num y, num radius, num offsetX, num offsetY]);

  /// Creates a new dynamic Body and adds a Rectangle fixture to it of the given dimensions.
  external Body createRectangle(
      [num x,
      num y,
      num width,
      num height,
      num offsetX,
      num offsetY,
      num rotation]);

  /// Creates a new dynamic Body and adds a Polygon fixture to it.
  external Body createPolygon(num x, num y, List<num> vertices,
      [num firstIndex, num count]);

  /// Adds an already created Box2D Body to this Box2D world.
  external bool addBody(Body body);

  /// Removes a body from the world. This will silently fail if the body wasn't part of the world to begin with.
  external Body removeBody(Body body);

  /// Populates and returns an array with references to of all current Bodies in the world.
  external List<Body> getBodies();

  /// Checks the given object to see if it has a Box2D body and if so returns it.
  external Body getBody(Object object);

  /// Converts the current world into a JSON object.
  external dynamic toJSON();

  /// Convert Box2D physics value (meters) to pixel scale.
  /// By default we use a scale of 50px per meter.
  /// If you need to modify this you can over-ride these functions via the Physics Configuration object.
  external num mpx(num v);

  /// Convert pixel value to Box2D physics scale (meters).
  /// By default we use a scale of 50px per meter.
  /// If you need to modify this you can over-ride these functions via the Physics Configuration object.
  external num pxm(num v);

  /// Runs the standard 'debug draw' rendering. What actually gets drawn will depend
  /// on the current status of the flags set in the debug draw object held by the b2World.
  /// This could perhaps be made modifiable at runtime, but for now it is just rendering
  /// shapes (see usage of b2Shapes flag below).
  external void renderDebugDraw(CanvasRenderingContext2D context);

  /// Renders information about the body as text. This is intended to be used internally by Phaser.Utils.Debug.
  /// To make use of this from your code you would call something like game.debug.bodyInfo(sprite, x, y)
  external void renderBodyInfo(Debug debug, Body body);

  /// Returns all fixtures found under the given point. Set the onlyOne parameter to true if you only
  /// care about finding one fixture under the point.
  external List<b2Fixture> getFixturesAtPoint(num x, num y,
      [bool onlyOne, bool onlyDynamic]);

  /// Returns all bodies (Phaser.Physics.Box2D.Body) found under the given coordinates. Set the onlyOne
  /// parameter to true if you only care about finding one body.
  external List<b2Body> getBodiesAtPoint(num x, num y,
      [bool onlyOne, bool onlyDynamic]);

  /// If there is a dynamic body under the given point, a mouse joint will be created
  /// to drag that body around. Use the mouseDragMove and mouseDragEnd functions to
  /// continue the drag action. Any mouse drag already in progress will be canceled.
  external void mouseDragStart(Point point);

  /// Updates the target location of the active mouse joint, if there is one. If there
  /// is no mouse joint active, this does nothing.
  external void mouseDragMove(Point point);

  /// Ends the active mouse joint if there is one. If there is no mouse joint active, does nothing.
  external void mouseDragEnd();

  /// Creates a distance joint.
  external b2DistanceJoint distanceJoint(
      dynamic /*Body|Sprite*/ bodyA, dynamic /*Body|Sprite*/ bodyB,
      [num length, num ax, num ay, num bx, num by, num frequency, num damping]);

  /// Creates a rope joint.
  external b2RopeJoint ropeJoint(
      dynamic /*Body|Sprite*/ bodyA, dynamic /*Body|Sprite*/ bodyB,
      [num length, num ax, num ay, num bx, num by]);

  /// Creates a revolute joint.
  external b2RevoluteJoint revoluteJoint(
      dynamic /*Body|Sprite*/ bodyA, dynamic /*Body|Sprite*/ bodyB,
      [num ax,
      num ay,
      num bx,
      num by,
      num motorSpeed,
      num motorTorque,
      bool motorEnabled,
      num lowerLimit,
      num upperLimit,
      bool limitEnabled]);

  /// Creates a prismatic joint.
  external b2PrismaticJoint prismaticJoint(
      dynamic /*Body|Sprite*/ bodyA, dynamic /*Body|Sprite*/ bodyB,
      [num axisX,
      num axisY,
      num ax,
      num ay,
      num bx,
      num by,
      num motorSpeed,
      num motorForce,
      bool motorEnabled,
      num owerLimit,
      num upperLimit,
      bool limitEnabled,
      num offsetAngle]);

  /// Creates a friction joint.
  external b2FrictionJoint frictionJoint(
      dynamic /*Body|Sprite*/ bodyA, dynamic /*Body|Sprite*/ bodyB,
      [num maxForce, num maxTorque, num ax, num ay, num bx, num by]);

  /// Creates a weld joint.
  external b2WeldJoint weldJoint(
      dynamic /*Body|Sprite*/ bodyA, dynamic /*Body|Sprite*/ bodyB,
      [num ax, num ay, num bx, num by, num frequency, num damping]);

  /// Creates a motor joint.
  external b2MotorJoint motorJoint(
      dynamic /*Body|Sprite*/ bodyA, dynamic /*Body|Sprite*/ bodyB,
      [num maxForce,
      num maxTorque,
      num correctionFactor,
      num offsetX,
      num offsetY,
      num offsetAngle]);

  /// Creates a wheel joint.
  external b2WheelJoint wheelJoint(
      dynamic /*Body|Sprite*/ bodyA, dynamic /*Body|Sprite*/ bodyB,
      [num ax,
      num ay,
      num bx,
      num by,
      num axisX,
      num axisY,
      num frequency,
      num damping,
      num motorSpeed,
      num motorTorque,
      bool motorEnabled]);

  /// Creates a pulley joint.
  external b2PulleyJoint pulleyJoint(
      dynamic /*Body|Sprite*/ bodyA, dynamic /*Body|Sprite*/ bodyB,
      [num ax,
      num ay,
      num bx,
      num by,
      num gax,
      num gay,
      num gbx,
      num gby,
      num ratio,
      num lengthA,
      num lengthB]);

  /// Creates a gear joint.
  external b2GearJoint gearJoint(b2Joint joint1, b2Joint joint2, [num ratio]);

  /// Clears all physics bodies from the given TilemapLayer that were created with `World.convertTilemap`.
  external void clearTilemapLayerBodies(
      Tilemap map, dynamic /*num|String|TilemapLayer*/ layer);

  /// Goes through all tiles in the given Tilemap and TilemapLayer and converts those set to collide into physics bodies.
  /// Only call this *after* you have specified all of the tiles you wish to collide with calls like Tilemap.setCollisionBetween, etc.
  /// Every time you call this method it will destroy any previously created bodies and remove them from the world.
  /// Therefore understand it's a very expensive operation and not to be done in a core game update loop.
  external List<Body> convertTilemap(
      Tilemap map, dynamic /*num|String|TilemapLayer*/ layer,
      [bool addToWorld, bool optimize]);

  /// Casts a ray and finds intersecting fixtures in the world.
  external List<RaycastHit> raycast(num x1, num y1, num x2, num y2,
      [bool closestHitOnly, Function filterFunction]);

  /// Finds all fixtures with AABBs overlapping the given area. This does NOT mean
  /// that the fixtures themselves are actually overlapping the given area.
  external List<AABBHit> queryAABB(num x, num y, num width, num height);

  /// Finds all fixtures that overlap the given fixture.
  external List<AABBHit> queryFixture(b2Fixture fixture);

  /// If the PTM ratio is changed after creating the world, the debug draw scale needs to be updated.
  external void setPTMRatio(num newRatio);
}

// Module Box2D
@JS("Phaser.Physics.Box2D.DefaultDebugDraw")
class DefaultDebugDraw {
  // @Ignore
  DefaultDebugDraw.fakeConstructor$();
  external factory DefaultDebugDraw(num pixelsPerMeter);
  external b2Color get color;
  external set color(b2Color v);

  /// Sets which aspects of the world to render
  external void SetFlags(num flags);

  /// Gets which aspects of the world are currently set to be rendered
  external num GetFlags();

  /// Sets the canvas context to use in subsequent rendering and applies overall transform.
  external void start(CanvasRenderingContext2D context);

  /// Resets transform state to original
  external void stop();

  /// Push transform
  external void PushTransform(b2Transform xf);

  /// Pop transform
  external b2Transform PopTransform();

  /// Draw polygon
  external void DrawPolygon(
      List<b2Vec2> vertices, num vertexCount, b2Color color);

  /// Draw solid polygon
  external void DrawSolidPolygon(
      List<b2Vec2> vertices, num vertexCount, b2Color color);

  /// Draw circle
  external void DrawCircle(b2Vec2 center, num radius, b2Color color);

  /// Draw solid circle
  external void DrawSolidCircle(
      b2Vec2 center, num radius, b2Vec2 axis, b2Color color);

  /// Draw segment
  external void DrawSegment(b2Vec2 p1, b2Vec2 p2, b2Color color);

  /// Draw transform
  external void DrawTransform(b2Transform xf);

  /// Draw point
  external void DrawPoint(b2Vec2 p, num size, b2Color color);

  /// Draw AABB
  external void DrawAABB(b2AABB aabb, b2Color color);

  /// shapes - Specifies whether the debug draw should render shapes.
  external bool get shapes;
  external set shapes(bool v);

  /// joints - Specifies whether the debug draw should render joints.
  external bool get joints;
  external set joints(bool v);

  /// @property {boolean} aabbs - Specifies whether the debug draw should render fixture AABBs.
  external bool get aabbs;
  external set aabbs(bool v);

  /// @property {boolean} pairs - Specifies whether the debug draw should render contact pairs.
  external bool get pairs;
  external set pairs(bool v);

  /// @property {boolean} centerOfMass - Specifies whether the debug draw should render the center of mass of bodies.
  external bool get centerOfMass;
  external set centerOfMass(bool v);
}

@JS("Phaser.Physics.Box2D.DefaultContactListener")
class DefaultContactListener {
  // @Ignore
  DefaultContactListener.fakeConstructor$();
  external factory DefaultContactListener();

  /// Called when two fixtures begin to touch.
  external void BeginContact(b2Contact contact);

  /// Called when two fixtures cease touching.
  external void EndContact(b2Contact contact);

  /// Common code for begin and end contacts.
  external void handleContactBeginOrEnd(b2Contact contact, bool begin);

  /// This is called after a contact is updated. This allows you to
  /// inspect a contact before it goes to the solver. If you are
  /// careful, you can modify the contact manifold (e.g. disable contact).
  external void PreSolve(b2Contact contact, b2Manifold oldManifold);

  /// This lets you inspect a contact after the solver is finished.
  external void PostSolve(b2Contact contact, b2ContactImpulse impulse);
}

@JS("Phaser.Physics.Box2D.PointProxy")
class PointProxy {
  // @Ignore
  PointProxy.fakeConstructor$();
  external factory PointProxy(
      Box2D world, dynamic object, Function gettor, Function settor);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
}

@JS("Phaser.Physics.Box2D.Body")
class Body {
  // @Ignore
  Body.fakeConstructor$();
  external factory Body(Game game, Sprite sprite,
      [num x, num y, num density, Box2D world]);

  /// @property {Phaser.Game} game - Local reference to game.
  external Game get game;
  external set game(Game v);

  /// @property {Phaser.Physics.Box2D} world - Local reference to the Box2D World.
  external Box2D get world;
  external set world(Box2D v);

  /// @property {number} id - a unique id for this body in the world
  external num get id;
  external set id(num v);

  /// @property {Phaser.Sprite} sprite - Reference to the parent Sprite.
  external Sprite get sprite;
  external set sprite(Sprite v);

  /// @property {number} type - The type of physics system this body belongs to.
  external num get type;
  external set type(num v);

  /// @property {Phaser.Point} offset - The offset of the Physics Body from the Sprite x/y position.
  external Point get offset;
  external set offset(Point v);

  /// @property {box2d.b2BodyDef} bodyDef - The Box2D body definition
  external b2BodyDef get bodyDef;
  external set bodyDef(b2BodyDef v);

  /// @property {box2d.b2Body} data - The Box2D body data.
  external b2Body get data;
  external set data(b2Body v);

  /// @property {Phaser.Physics.Box2D.PointProxy} velocity - The velocity of the body. Set velocity.x to a negative value to move to the left, position to the right. velocity.y negative values move up, positive move down.
  external PointProxy get velocity;
  external set velocity(PointProxy v);

  /// @property {boolean} removeNextStep - To avoid deleting this body during a physics step, and causing all kinds of problems, set removeNextStep to true to have it removed in the next preUpdate.
  external bool get removeNextStep;
  external set removeNextStep(bool v);

  /// Sets a callback to be fired any time a fixture in this Body begins or ends contact with a fixture in the given Body.
  external void setBodyContactCallback(dynamic /*Sprite|Body*/ object,
      Function callback, dynamic callbackContext);

  /// Sets a callback to be fired any time the given fixture begins or ends contact something
  external void setFixtureContactCallback(
      b2Fixture fixture, Function callback, dynamic callbackContext);

  /// Sets a callback to be fired any time a fixture in this body begins contact with a fixture in another body that matches given category set.
  external void setCategoryContactCallback(
      num category, Function callback, dynamic callbackContext);

  /// Sets a callback to be fired when PreSolve is done for contacts between a fixture in this body and a fixture in the given Body.
  external void setBodyPresolveCallback(dynamic /*Sprite|Body*/ object,
      Function callback, dynamic callbackContext);

  /// Sets a callback to be fired when PreSolve is done for contacts between a fixture in this body the given fixture.
  external void setFixturePresolveCallback(
      b2Fixture fixture, Function callback, dynamic callbackContext);

  /// Sets a callback to be fired when PreSolve is done for contacts between a fixture in this body and a fixture in another body that matches given category set.
  external void setCategoryPresolveCallback(
      num category, Function callback, dynamic callbackContext);

  /// Sets a callback to be fired when PostSolve is done for contacts between a fixture in this body and a fixture in the given Body.
  external void setBodyPostsolveCallback(dynamic /*Sprite|Body*/ object,
      Function callback, dynamic callbackContext);

  /// Sets a callback to be fired when PostSolve is done for contacts between a fixture in this body the given fixture.
  external void setFixturePostsolveCallback(
      b2Fixture fixture, Function callback, dynamic callbackContext);

  /// Sets a callback to be fired when PostSolve is done for contacts between a fixture in this body and a fixture in another body that matches given category set.
  external void setCategoryPostsolveCallback(
      num category, Function callback, dynamic callbackContext);

  /// Sets the given collision category for all fixtures in this Body, unless a specific fixture is given.
  external void setCollisionCategory(num category, [b2Fixture fixture]);

  /// Sets the given collision mask for all fixtures in this Body, unless a specific fixture is given.
  external void setCollisionMask(num mask, [b2Fixture fixture]);

  /// Apply force at the center of mass. This will not cause any rotation.
  external void applyForce(num x, num y);

  /// If this Body is dynamic then this will zero its angular velocity.
  external void setZeroRotation();

  /// If this Body is dynamic then this will zero its velocity on both axis.
  external void setZeroVelocity();

  /// Sets the linear damping and angular damping to zero.
  external void setZeroDamping();

  /// Transform a world point to local body frame.
  external b2Vec2 toLocalPoint(b2Vec2 out, b2Vec2 worldPoint);

  /// Transform a local point to world frame.
  external b2Vec2 toWorldPoint(b2Vec2 out, b2Vec2 localPoint);

  /// Transform a world vector to local body frame.
  external b2Vec2 toLocalVector(b2Vec2 out, b2Vec2 worldVector);

  /// Transform a local vector to world frame.
  external b2Vec2 toWorldVector(b2Vec2 out, b2Vec2 localVector);

  /// This will rotate the Body by the given speed to the left (counter-clockwise).
  external void rotateLeft(num speed);

  /// This will rotate the Body by the given speed to the left (clockwise).
  external void rotateRight(num speed);

  /// Moves the Body forwards based on its current angle and the given speed.
  /// The speed is represented in pixels per second. So a value of 100 would move 100 pixels in 1 second.
  external void moveForward(num speed);

  /// Moves the Body backwards based on its current angle and the given speed.
  /// The speed is represented in pixels per second. So a value of 100 would move 100 pixels in 1 second.
  external void moveBackward(num speed);

  /// Applies a force to the Body that causes it to 'thrust' forwards, based on its current angle and the given speed.
  external void thrust(num power);

  /// Applies a force to the Body that causes it to 'thrust' backwards (in reverse), based on its current angle and the given speed.
  external void reverse(num power);

  /// If this Body is dynamic then this will move it to the left by setting its x velocity to the given speed.
  /// The speed is represented in pixels per second. So a value of 100 would move 100 pixels in 1 second.
  external void moveLeft(num speed);

  /// If this Body is dynamic then this will move it to the right by setting its x velocity to the given speed.
  /// The speed is represented in pixels per second. So a value of 100 would move 100 pixels in 1 second.
  external void moveRight(num speed);

  /// If this Body is dynamic then this will move it up by setting its y velocity to the given speed.
  /// The speed is represented in pixels per second. So a value of 100 would move 100 pixels in 1 second.
  external void moveUp(num speed);

  /// If this Body is dynamic then this will move it down by setting its y velocity to the given speed.
  /// The speed is represented in pixels per second. So a value of 100 would move 100 pixels in 1 second.
  external void moveDown(num speed);

  /// Internal method. This is called directly before the sprites are sent to the renderer and after the update function has finished.
  /// preUpdate(): void;
  /// Internal method. This is called directly before the sprites are sent to the renderer and after the update function has finished.
  /// postUpdate(): void;
  /// Sets this body as inactive. It will not participate in collisions or
  /// any other aspect of the physics simulation. Intended for use by Phaser.Sprite.kill()
  external void kill();

  /// Restores the active status of this body.
  external void reset(num x, num y);

  /// Removes this physics body from the world.
  external void removeFromWorld();

  /// Destroys this Body and all references it holds to other objects.
  external void destroy();

  /// Removes all fixtures from this Body.
  external void clearFixtures();

  /// Adds a Circle fixture to this Body. You can control the offset from the center of the body and the rotation.
  /// It will use the World friction, restitution and density by default.
  external b2Fixture addCircle(num radius, [num offsetX, num offsetY]);

  /// Adds a Rectangle fixture to this Body. You can control the offset from the center of the body and the rotation.
  /// It will use the World friction, restitution and density by default.
  external b2Fixture addRectangle(
      [num width, num height, num offsetX, num offsetY, num rotation]);

  /// Creates a new Edge Shape and adds it to this Body.
  /// It will use the World friction, restitution and density by default.
  external b2Fixture addEdge([num x1, num y1, num x2, num y2]);

  /// Creates a new chain shape and adds it to this Body.
  /// It will use the World friction, restitution and density by default.
  external b2Fixture addChain(List<num> vertices,
      [num firstIndex, num count, bool loop]);

  /// Creates a new loop shape and adds it to this Body.
  external b2Fixture addLoop(List<num> vertices, [num firstIndex, num count]);

  /// Creates a new polygon shape and adds it to this Body.
  external b2Fixture addPolygon(List<num> vertices,
      [num firstIndex, num count]);

  /// Remove a shape from the body. Will automatically update the mass properties and bounding radius.
  external bool removeFixture(b2Fixture fixture);

  /// Clears any previously set fixtures. Then creates a new Circle shape and adds it to this Body.
  external b2Fixture setCircle([num radius, num offsetX, num offsetY]);

  /// Clears any previously set fixtures. The creates a new Rectangle fixture at the given size and offset, and adds it to this Body.
  /// If you wish to create a Rectangle to match the size of a Sprite or Image see Body.setRectangleFromSprite.
  external b2Fixture setRectangle(
      [num width, num height, num offsetX, num offsetY, num rotation]);

  /// Clears any previously set fixtures.
  /// Then creates a Rectangle shape sized to match the dimensions and orientation of the Sprite given.
  /// If no Sprite is given it defaults to using the parent of this Body.
  external b2Fixture setRectangleFromSprite(dynamic /*Sprite|Image*/ sprite);

  /// Clears any previously set fixtures. Then creates a new edge shape and adds it to this Body.
  external b2Fixture setEdge([num x1, num y1, num x2, num y2]);

  /// Clears any previously set fixtures. Then creates a new chain shape and adds it to this Body.
  external b2Fixture setChain(List<num> vertices,
      [num firstIndex, num count, bool loop]);

  /// An alias for setChain.
  external b2Fixture setLoop(List<num> vertices, [num firstIndex, num count]);

  /// Clears any previously set fixtures. Then creates a new polygon shape and adds it to this Body.
  external b2Fixture setPolygon(List<num> vertices,
      [num firstIndex, num count]);

  /// Reads the shape data from a physics data file stored in the Game.Cache and adds it as a polygon to this Body.
  external bool loadPolygon(
      String key, String object, dynamic /*Sprite|Image*/ sprite);

  /// Checks if the given point (pixel coords) is contained by any of the fixtures on this body.
  /// Not efficient for checking a large number of bodies to find which is under the mouse. (Use
  /// Phaser.Physics.Box2D.getBodiesAtPoint for that.)
  external bool containsPoint(Point point);

  /// @property {boolean} static - Returns true if the Body is static. Setting Body.static to 'false' will make it dynamic.
  external bool get JS$static;
  external set JS$static(bool v);

  /// @property {boolean} dynamic - Returns true if the Body is dynamic. Setting Body.dynamic to 'false' will make it static.
  external bool get JS$dynamic;
  external set JS$dynamic(bool v);

  /// @property {boolean} kinematic - Returns true if the Body is kinematic. Setting Body.kinematic to 'false' will make it static.
  external bool get kinematic;
  external set kinematic(bool v);

  /// @property {number} angle - The angle of this Body in degrees.
  external num get angle;
  external set angle(num v);

  /// @property {number} linearDamping - The linear damping acting acting on the body.
  external num get linearDamping;
  external set linearDamping(num v);

  /// @property {number} angularDamping - The angular damping acting acting on the body.
  external num get angularDamping;
  external set angularDamping(num v);

  /// @property {number} angularVelocity - The angular velocity of the body.
  external num get angularVelocity;
  external set angularVelocity(num v);

  /// @property {boolean} fixedRotation - If true, the body will not rotate.
  external bool get fixedRotation;
  external set fixedRotation(bool v);

  /// @property {number} gravityScale - Set to zero to completely ignore gravity, or negative values to reverse gravity for this body.
  external num get gravityScale;
  external set gravityScale(num v);

  /// @property {number} friction - When setting, all fixtures on the body will be set to the given friction. When getting, the friction of the first fixture will be returned, or zero if no fixtures are present.
  external num get friction;
  external set friction(num v);

  /// @property {number} restitution - When setting, all fixtures on the body will be set to the given restitution. When getting, the restitution of the first fixture will be returned, or zero if no fixtures are present.
  external num get restitution;
  external set restitution(num v);

  /// @property {boolean} sensor - When setting, all fixtures on the body will be set to the given sensor status. When getting, the sensor status of the first fixture will be returned, or false if no fixtures are present.
  external bool get sensor;
  external set sensor(bool v);

  /// @property {boolean} bullet - Set to true to give the body 'bullet' status, and use continous collision detection when moving it.
  external bool get bullet;
  external set bullet(bool v);

  /// @property {number} mass - the new mass for the body. Setting this to zero will cause the body to become a static body.
  external num get mass;
  external set mass(num v);

  /// @property {number} rotation - The angle of this Body in radians.
  external num get rotation;
  external set rotation(num v);

  /// @property {number} x - The x coordinate of this Body.
  external num get x;
  external set x(num v);

  /// @property {number} y - The y coordinate of this Body.
  external num get y;
  external set y(num v);

  /// @property {boolean} collideWorldBounds - Should the Body collide with the World bounds?
  external bool get collideWorldBounds;
  external set collideWorldBounds(bool v);
}

@JS("Phaser.Physics.Box2D.WallsObject")
class WallsObject {
  // @Ignore
  WallsObject.fakeConstructor$();
  external dynamic get left;
  external set left(dynamic v);
  external dynamic get right;
  external set right(dynamic v);
  external dynamic get top;
  external set top(dynamic v);
  external dynamic get bottom;
  external set bottom(dynamic v);
}

@JS("Phaser.Physics.Box2D.AABBHit")
class AABBHit {
  // @Ignore
  AABBHit.fakeConstructor$();
  external Body get body;
  external set body(Body v);
  external b2Fixture get fixture;
  external set fixture(b2Fixture v);
}

@JS("Phaser.Physics.Box2D.RaycastHit")
class RaycastHit extends AABBHit {
  // @Ignore
  RaycastHit.fakeConstructor$() : super.fakeConstructor$();
  external Point get point;
  external set point(Point v);
  external Point get normal;
  external set normal(Point v);
}

// End module Box2D

// End module Physics

// End module Phaser

