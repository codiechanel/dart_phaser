@JS()
library phaser.p2;

import "package:js/js.dart";
import "dart:html" show Node;

/// Type definitions for p2.js v0.6.0
/// Project: https://github.com/schteppe/p2.js/

// Module p2
@JS("p2.AABB")
class AABB {
  // @Ignore
  AABB.fakeConstructor$();
  external factory AABB(
      [dynamic /*{
            upperBound?: number[];
            lowerBound?: number[];
        }*/
      options]);
  external void setFromPoints(
      List<List<num>> points, List<num> position, num angle, num skinSize);
  external void copy(AABB aabb);
  external void extend(AABB aabb);
  external bool overlaps(AABB aabb);
}

@JS("p2.Broadphase")
class Broadphase {
  // @Ignore
  Broadphase.fakeConstructor$();
  external static num get AABB;
  external static set AABB(num v);
  external static num get BOUNDING_CIRCLE;
  external static set BOUNDING_CIRCLE(num v);
  external static num get NAIVE;
  external static set NAIVE(num v);
  external static num get SAP;
  external static set SAP(num v);
  external static bool boundingRadiusCheck(Body bodyA, Body bodyB);
  external static bool aabbCheck(Body bodyA, Body bodyB);
  external static bool canCollide(Body bodyA, Body bodyB);
  external factory Broadphase(num type);
  external num get type;
  external set type(num v);
  external List<Body> get result;
  external set result(List<Body> v);
  external World get world;
  external set world(World v);
  external num get boundingVolumeType;
  external set boundingVolumeType(num v);
  external void setWorld(World world);
  external List<Body> getCollisionPairs(World world);
  external bool boundingVolumeCheck(Body bodyA, Body bodyB);
}

@JS("p2.GridBroadphase")
class GridBroadphase extends Broadphase {
  // @Ignore
  GridBroadphase.fakeConstructor$() : super.fakeConstructor$();
  external factory GridBroadphase(
      [dynamic /*{
            xmin?: number;
            xmax?: number;
            ymin?: number;
            ymax?: number;
            nx?: number;
            ny?: number;
        }*/
      options]);
  external num get xmin;
  external set xmin(num v);
  external num get xmax;
  external set xmax(num v);
  external num get ymin;
  external set ymin(num v);
  external num get ymax;
  external set ymax(num v);
  external num get nx;
  external set nx(num v);
  external num get ny;
  external set ny(num v);
  external num get binsizeX;
  external set binsizeX(num v);
  external num get binsizeY;
  external set binsizeY(num v);
}

@JS("p2.NativeBroadphase")
class NativeBroadphase extends Broadphase {
  // @Ignore
  NativeBroadphase.fakeConstructor$() : super.fakeConstructor$();
}

@JS("p2.Narrowphase")
class Narrowphase {
  // @Ignore
  Narrowphase.fakeConstructor$();
  external List<ContactEquation> get contactEquations;
  external set contactEquations(List<ContactEquation> v);
  external List<FrictionEquation> get frictionEquations;
  external set frictionEquations(List<FrictionEquation> v);
  external bool get enableFriction;
  external set enableFriction(bool v);
  external num get slipForce;
  external set slipForce(num v);
  external num get frictionCoefficient;
  external set frictionCoefficient(num v);
  external num get surfaceVelocity;
  external set surfaceVelocity(num v);
  external bool get reuseObjects;
  external set reuseObjects(bool v);
  external List<dynamic> get resuableContactEquations;
  external set resuableContactEquations(List<dynamic> v);
  external List<dynamic> get reusableFrictionEquations;
  external set reusableFrictionEquations(List<dynamic> v);
  external num get restitution;
  external set restitution(num v);
  external num get stiffness;
  external set stiffness(num v);
  external num get relaxation;
  external set relaxation(num v);
  external num get frictionStiffness;
  external set frictionStiffness(num v);
  external num get frictionRelaxation;
  external set frictionRelaxation(num v);
  external bool get enableFrictionReduction;
  external set enableFrictionReduction(bool v);
  external num get contactSkinSize;
  external set contactSkinSize(num v);
  external bool collidedLastStep(Body bodyA, Body bodyB);
  external void reset();
  external ContactEquation createContactEquation(
      Body bodyA, Body bodyB, Shape shapeA, Shape shapeB);
  external FrictionEquation createFrictionFromContact(ContactEquation c);
}

@JS("p2.SAPBroadphase")
class SAPBroadphase extends Broadphase {
  // @Ignore
  SAPBroadphase.fakeConstructor$() : super.fakeConstructor$();
  external List<Body> get axisList;
  external set axisList(List<Body> v);
  external num get axisIndex;
  external set axisIndex(num v);
}

@JS("p2.Constraint")
class Constraint {
  // @Ignore
  Constraint.fakeConstructor$();
  external static num get DISTANCE;
  external static set DISTANCE(num v);
  external static num get GEAR;
  external static set GEAR(num v);
  external static num get LOCK;
  external static set LOCK(num v);
  external static num get PRISMATIC;
  external static set PRISMATIC(num v);
  external static num get REVOLUTE;
  external static set REVOLUTE(num v);
  external factory Constraint(Body bodyA, Body bodyB, num type,
      [dynamic /*{
            collideConnected?: boolean;
            wakeUpBodies?: boolean;
        }*/
      options]);
  external num get type;
  external set type(num v);
  external List<Equation> get equeations;
  external set equeations(List<Equation> v);
  external Body get bodyA;
  external set bodyA(Body v);
  external Body get bodyB;
  external set bodyB(Body v);
  external bool get collideConnected;
  external set collideConnected(bool v);
  external void update();
  external void setStiffness(num stiffness);
  external void setRelaxation(num relaxation);
}

@JS("p2.DistanceConstraint")
class DistanceConstraint extends Constraint {
  // @Ignore
  DistanceConstraint.fakeConstructor$() : super.fakeConstructor$();
  external factory DistanceConstraint(Body bodyA, Body bodyB, num type,
      [dynamic /*{
            collideConnected?: boolean;
            wakeUpBodies?: boolean;
            distance?: number;
            localAnchorA?: number[];
            localAnchorB?: number[];
            maxForce?: number;
        }*/
      options]);
  external List<num> get localAnchorA;
  external set localAnchorA(List<num> v);
  external List<num> get localAnchorB;
  external set localAnchorB(List<num> v);
  external num get distance;
  external set distance(num v);
  external num get maxForce;
  external set maxForce(num v);
  external bool get upperLimitEnabled;
  external set upperLimitEnabled(bool v);
  external num get upperLimit;
  external set upperLimit(num v);
  external bool get lowerLimitEnabled;
  external set lowerLimitEnabled(bool v);
  external num get lowerLimit;
  external set lowerLimit(num v);
  external num get position;
  external set position(num v);
  external void setMaxForce(num f);
  external num getMaxForce();
}

@JS("p2.GearConstraint")
class GearConstraint extends Constraint {
  // @Ignore
  GearConstraint.fakeConstructor$() : super.fakeConstructor$();
  external factory GearConstraint(Body bodyA, Body bodyB, num type,
      [dynamic /*{
            collideConnected?: boolean;
            wakeUpBodies?: boolean;
            angle?: number;
            ratio?: number;
            maxTorque?: number;
        }*/
      options]);
  external num get ratio;
  external set ratio(num v);
  external num get angle;
  external set angle(num v);
  external void setMaxTorque(num torque);
  external num getMaxTorque();
}

@JS("p2.LockConstraint")
class LockConstraint extends Constraint {
  // @Ignore
  LockConstraint.fakeConstructor$() : super.fakeConstructor$();
  external factory LockConstraint(Body bodyA, Body bodyB, num type,
      [dynamic /*{
            collideConnected?: boolean;
            wakeUpBodies?: boolean;
            localOffsetB?: number[];
            localAngleB?: number;
            maxForce?: number;
        }*/
      options]);
  external void setMaxForce(num force);
  external num getMaxForce();
}

@JS("p2.PrismaticConstraint")
class PrismaticConstraint extends Constraint {
  // @Ignore
  PrismaticConstraint.fakeConstructor$() : super.fakeConstructor$();
  external factory PrismaticConstraint(Body bodyA, Body bodyB, num type,
      [dynamic /*{
            collideConnected?: boolean;
            wakeUpBodies?: boolean;
            maxForce?: number;
            localAnchorA?: number[];
            localAnchorB?: number[];
            localAxisA?: number[];
            disableRotationalLock?: boolean;
            upperLimit?: number;
            lowerLimit?: number;
        }*/
      options]);
  external List<num> get localAnchorA;
  external set localAnchorA(List<num> v);
  external List<num> get localAnchorB;
  external set localAnchorB(List<num> v);
  external List<num> get localAxisA;
  external set localAxisA(List<num> v);
  external num get position;
  external set position(num v);
  external num get velocity;
  external set velocity(num v);
  external bool get lowerLimitEnabled;
  external set lowerLimitEnabled(bool v);
  external bool get upperLimitEnabled;
  external set upperLimitEnabled(bool v);
  external num get lowerLimit;
  external set lowerLimit(num v);
  external num get upperLimit;
  external set upperLimit(num v);
  external ContactEquation get upperLimitEquation;
  external set upperLimitEquation(ContactEquation v);
  external ContactEquation get lowerLimitEquation;
  external set lowerLimitEquation(ContactEquation v);
  external Equation get motorEquation;
  external set motorEquation(Equation v);
  external bool get motorEnabled;
  external set motorEnabled(bool v);
  external num get motorSpeed;
  external set motorSpeed(num v);
  external void enableMotor();
  external void disableMotor();
  external void setLimits(num lower, num upper);
}

@JS("p2.RevoluteConstraint")
class RevoluteConstraint extends Constraint {
  // @Ignore
  RevoluteConstraint.fakeConstructor$() : super.fakeConstructor$();
  external factory RevoluteConstraint(Body bodyA, Body bodyB, num type,
      [dynamic /*{
            collideConnected?: boolean;
            wakeUpBodies?: boolean;
            worldPivot?: number[];
            localPivotA?: number[];
            localPivotB?: number[];
            maxForce?: number;
        }*/
      options]);
  external List<num> get pivotA;
  external set pivotA(List<num> v);
  external List<num> get pivotB;
  external set pivotB(List<num> v);
  external RotationalVelocityEquation get motorEquation;
  external set motorEquation(RotationalVelocityEquation v);
  external bool get motorEnabled;
  external set motorEnabled(bool v);
  external num get angle;
  external set angle(num v);
  external bool get lowerLimitEnabled;
  external set lowerLimitEnabled(bool v);
  external bool get upperLimitEnabled;
  external set upperLimitEnabled(bool v);
  external num get lowerLimit;
  external set lowerLimit(num v);
  external num get upperLimit;
  external set upperLimit(num v);
  external ContactEquation get upperLimitEquation;
  external set upperLimitEquation(ContactEquation v);
  external ContactEquation get lowerLimitEquation;
  external set lowerLimitEquation(ContactEquation v);
  external void enableMotor();
  external void disableMotor();
  external bool motorIsEnabled();
  external void setLimits(num lower, num upper);
  external void setMotorSpeed(num speed);
  external num getMotorSpeed();
}

@JS("p2.AngleLockEquation")
class AngleLockEquation extends Equation {
  // @Ignore
  AngleLockEquation.fakeConstructor$() : super.fakeConstructor$();
  external factory AngleLockEquation(Body bodyA, Body bodyB,
      [dynamic /*{
            angle?: number;
            ratio?: number;
        }*/
      options]);
  external num computeGq();
  external num setRatio(num ratio);
  external num setMaxTorque(num torque);
}

@JS("p2.ContactEquation")
class ContactEquation extends Equation {
  // @Ignore
  ContactEquation.fakeConstructor$() : super.fakeConstructor$();
  external factory ContactEquation(Body bodyA, Body bodyB);
  external List<num> get contactPointA;
  external set contactPointA(List<num> v);
  external List<num> get penetrationVec;
  external set penetrationVec(List<num> v);
  external List<num> get contactPointB;
  external set contactPointB(List<num> v);
  external List<num> get normalA;
  external set normalA(List<num> v);
  external num get restitution;
  external set restitution(num v);
  external bool get firstImpact;
  external set firstImpact(bool v);
  external Shape get shapeA;
  external set shapeA(Shape v);
  external Shape get shapeB;
  external set shapeB(Shape v);
  external num computeB(num a, num b, num h);
}

@JS("p2.Equation")
class Equation {
  // @Ignore
  Equation.fakeConstructor$();
  external static num get DEFAULT_STIFFNESS;
  external static set DEFAULT_STIFFNESS(num v);
  external static num get DEFAULT_RELAXATION;
  external static set DEFAULT_RELAXATION(num v);
  external factory Equation(Body bodyA, Body bodyB,
      [num minForce, num maxForce]);
  external num get minForce;
  external set minForce(num v);
  external num get maxForce;
  external set maxForce(num v);
  external Body get bodyA;
  external set bodyA(Body v);
  external Body get bodyB;
  external set bodyB(Body v);
  external num get stiffness;
  external set stiffness(num v);
  external num get relaxation;
  external set relaxation(num v);
  external List<num> get G;
  external set G(List<num> v);
  external num get offset;
  external set offset(num v);
  external num get a;
  external set a(num v);
  external num get b;
  external set b(num v);
  external num get epsilon;
  external set epsilon(num v);
  external num get timeStep;
  external set timeStep(num v);
  external bool get needsUpdate;
  external set needsUpdate(bool v);
  external num get multiplier;
  external set multiplier(num v);
  external num get relativeVelocity;
  external set relativeVelocity(num v);
  external bool get enabled;
  external set enabled(bool v);
  external num gmult(
      List<num> G, List<num> vi, List<num> wi, List<num> vj, List<num> wj);
  external num computeB(num a, num b, num h);
  external num computeGq();
  external num computeGW();
  external num computeGWlambda();
  external num computeGiMf();
  external num computeGiMGt();
  external num addToWlambda(num deltalambda);
  external num computeInvC(num eps);
}

@JS("p2.FrictionEquation")
class FrictionEquation extends Equation {
  // @Ignore
  FrictionEquation.fakeConstructor$() : super.fakeConstructor$();
  external factory FrictionEquation(Body bodyA, Body bodyB, num slipForce);
  external List<num> get contactPointA;
  external set contactPointA(List<num> v);
  external List<num> get contactPointB;
  external set contactPointB(List<num> v);
  external List<num> get t;
  external set t(List<num> v);
  external Shape get shapeA;
  external set shapeA(Shape v);
  external Shape get shapeB;
  external set shapeB(Shape v);
  external num get frictionCoefficient;
  external set frictionCoefficient(num v);
  external num setSlipForce(num slipForce);
  external num getSlipForce();
  external num computeB(num a, num b, num h);
}

@JS("p2.RotationalLockEquation")
class RotationalLockEquation extends Equation {
  // @Ignore
  RotationalLockEquation.fakeConstructor$() : super.fakeConstructor$();
  external factory RotationalLockEquation(Body bodyA, Body bodyB,
      [dynamic /*{
            angle?: number;
        }*/
      options]);
  external num get angle;
  external set angle(num v);
  external num computeGq();
}

@JS("p2.RotationalVelocityEquation")
class RotationalVelocityEquation extends Equation {
  // @Ignore
  RotationalVelocityEquation.fakeConstructor$() : super.fakeConstructor$();
  external factory RotationalVelocityEquation(Body bodyA, Body bodyB);
  external num computeB(num a, num b, num h);
}

@JS("p2.EventEmitter")
class EventEmitter {
  // @Ignore
  EventEmitter.fakeConstructor$();
  external EventEmitter on(String type, Function listener, dynamic context);
  external bool has(String type, Function listener);
  external EventEmitter off(String type, Function listener);
  external EventEmitter emit(dynamic event);
}

@JS("p2.ContactMaterialOptions")
class ContactMaterialOptions {
  // @Ignore
  ContactMaterialOptions.fakeConstructor$();
  external num get friction;
  external set friction(num v);
  external num get restitution;
  external set restitution(num v);
  external num get stiffness;
  external set stiffness(num v);
  external num get relaxation;
  external set relaxation(num v);
  external num get frictionStiffness;
  external set frictionStiffness(num v);
  external num get frictionRelaxation;
  external set frictionRelaxation(num v);
  external num get surfaceVelocity;
  external set surfaceVelocity(num v);
}

@JS("p2.ContactMaterial")
class ContactMaterial {
  // @Ignore
  ContactMaterial.fakeConstructor$();
  external static num get idCounter;
  external static set idCounter(num v);
  external factory ContactMaterial(Material materialA, Material materialB,
      [ContactMaterialOptions options]);
  external num get id;
  external set id(num v);
  external Material get materialA;
  external set materialA(Material v);
  external Material get materialB;
  external set materialB(Material v);
  external num get friction;
  external set friction(num v);
  external num get restitution;
  external set restitution(num v);
  external num get stiffness;
  external set stiffness(num v);
  external num get relaxation;
  external set relaxation(num v);
  external num get frictionStuffness;
  external set frictionStuffness(num v);
  external num get frictionRelaxation;
  external set frictionRelaxation(num v);
  external num get surfaceVelocity;
  external set surfaceVelocity(num v);
  external num get contactSkinSize;
  external set contactSkinSize(num v);
}

@JS("p2.Material")
class Material {
  // @Ignore
  Material.fakeConstructor$();
  external static num get idCounter;
  external static set idCounter(num v);
  external factory Material(num id);
  external num get id;
  external set id(num v);
}

@JS("p2.vec2")
class vec2 {
  // @Ignore
  vec2.fakeConstructor$();
  external static num crossLength(List<num> a, List<num> b);
  external static num crossVZ(List<num> out, List<num> vec, num zcomp);
  external static num crossZV(List<num> out, num zcomp, List<num> vec);
  external static void rotate(List<num> out, List<num> a, num angle);
  external static num rotate90cw(List<num> out, List<num> a);
  external static List<num> centroid(
      List<num> out, List<num> a, List<num> b, List<num> c);
  external static List<num> create();
  external static List<num> clone(List<num> a);
  external static List<num> fromValues(num x, num y);
  external static List<num> copy(List<num> out, List<num> a);
  external static List<num> JS$set(List<num> out, num x, num y);
  external static void toLocalFrame(List<num> out, List<num> worldPoint,
      List<num> framePosition, num frameAngle);
  external static void toGlobalFrame(List<num> out, List<num> localPoint,
      List<num> framePosition, num frameAngle);
  external static List<num> add(List<num> out, List<num> a, List<num> b);
  external static List<num> subtract(List<num> out, List<num> a, List<num> b);
  external static List<num> sub(List<num> out, List<num> a, List<num> b);
  external static List<num> multiply(List<num> out, List<num> a, List<num> b);
  external static List<num> mul(List<num> out, List<num> a, List<num> b);
  external static List<num> divide(List<num> out, List<num> a, List<num> b);
  external static List<num> div(List<num> out, List<num> a, List<num> b);
  external static List<num> scale(List<num> out, List<num> a, num b);
  external static num distance(List<num> a, List<num> b);
  external static num dist(List<num> a, List<num> b);
  external static num squaredDistance(List<num> a, List<num> b);
  external static num sqrDist(List<num> a, List<num> b);
  external static num length(List<num> a);
  external static num len(List<num> a);
  external static num squaredLength(List<num> a);
  external static num sqrLen(List<num> a);
  external static List<num> negate(List<num> out, List<num> a);
  external static List<num> normalize(List<num> out, List<num> a);
  external static num dot(List<num> a, List<num> b);
  external static String str(List<num> a);
}

@anonymous
@JS()
abstract class BodyOptions {
  external num get mass;
  external set mass(num v);
  external List<num> get position;
  external set position(List<num> v);
  external List<num> get velocity;
  external set velocity(List<num> v);
  external num get angle;
  external set angle(num v);
  external num get angularVelocity;
  external set angularVelocity(num v);
  external List<num> get force;
  external set force(List<num> v);
  external num get angularForce;
  external set angularForce(num v);
  external bool get fixedRotation;
  external set fixedRotation(bool v);
  external factory BodyOptions(
      {num mass,
      List<num> position,
      List<num> velocity,
      num angle,
      num angularVelocity,
      List<num> force,
      num angularForce,
      bool fixedRotation});
}

@JS("p2.Body")
class Body extends EventEmitter {
  // @Ignore
  Body.fakeConstructor$() : super.fakeConstructor$();
  external dynamic /*{
            type: string;
        }*/
      get sleepyEvent;
  external set sleepyEvent(
      dynamic /*{
            type: string;
        }*/
      v);
  external dynamic /*{
            type: string;
        }*/
      get sleepEvent;
  external set sleepEvent(
      dynamic /*{
            type: string;
        }*/
      v);
  external dynamic /*{
            type: string;
        }*/
      get wakeUpEvent;
  external set wakeUpEvent(
      dynamic /*{
            type: string;
        }*/
      v);
  external static num get DYNAMIC;
  external static set DYNAMIC(num v);
  external static num get STATIC;
  external static set STATIC(num v);
  external static num get KINEMATIC;
  external static set KINEMATIC(num v);
  external static num get AWAKE;
  external static set AWAKE(num v);
  external static num get SLEEPY;
  external static set SLEEPY(num v);
  external static num get SLEEPING;
  external static set SLEEPING(num v);
  external factory Body([BodyOptions options]);
  external num get id;
  external set id(num v);
  external World get world;
  external set world(World v);
  external List<Shape> get shapes;
  external set shapes(List<Shape> v);
  external List<List<num>> get shapeOffsets;
  external set shapeOffsets(List<List<num>> v);
  external List<num> get shapeAngles;
  external set shapeAngles(List<num> v);
  external num get mass;
  external set mass(num v);
  external num get invMass;
  external set invMass(num v);
  external num get inertia;
  external set inertia(num v);
  external num get invInertia;
  external set invInertia(num v);
  external num get invMassSolve;
  external set invMassSolve(num v);
  external num get invInertiaSolve;
  external set invInertiaSolve(num v);
  external num get fixedRotation;
  external set fixedRotation(num v);
  external List<num> get position;
  external set position(List<num> v);
  external List<num> get interpolatedPosition;
  external set interpolatedPosition(List<num> v);
  external num get interpolatedAngle;
  external set interpolatedAngle(num v);
  external List<num> get previousPosition;
  external set previousPosition(List<num> v);
  external num get previousAngle;
  external set previousAngle(num v);
  external List<num> get velocity;
  external set velocity(List<num> v);
  external List<num> get vlambda;
  external set vlambda(List<num> v);
  external List<num> get wlambda;
  external set wlambda(List<num> v);
  external num get angle;
  external set angle(num v);
  external num get angularVelocity;
  external set angularVelocity(num v);
  external List<num> get force;
  external set force(List<num> v);
  external num get angularForce;
  external set angularForce(num v);
  external num get damping;
  external set damping(num v);
  external num get angularDamping;
  external set angularDamping(num v);
  external num get type;
  external set type(num v);
  external num get boundingRadius;
  external set boundingRadius(num v);
  external AABB get aabb;
  external set aabb(AABB v);
  external bool get aabbNeedsUpdate;
  external set aabbNeedsUpdate(bool v);
  external bool get allowSleep;
  external set allowSleep(bool v);
  external bool get wantsToSleep;
  external set wantsToSleep(bool v);
  external num get sleepState;
  external set sleepState(num v);
  external num get sleepSpeedLimit;
  external set sleepSpeedLimit(num v);
  external num get sleepTimeLimit;
  external set sleepTimeLimit(num v);
  external num get gravityScale;
  external set gravityScale(num v);
  external void updateSolveMassProperties();
  external void setDensity(num density);
  external num getArea();
  external AABB getAABB();
  external void updateAABB();
  external void updateBoundingRadius();
  external void addShape(Shape shape, [List<num> offset, num angle]);
  external bool removeShape(Shape shape);
  external void updateMassProperties();
  external void applyForce(List<num> force, List<num> worldPoint);
  external void toLocalFrame(List<num> out, List<num> worldPoint);
  external void toWorldFrame(List<num> out, List<num> localPoint);
  external bool fromPolygon(List<List<num>> path,
      [dynamic /*{
            optimalDecomp?: boolean;
            skipSimpleCheck?: boolean;
            removeCollinearPoints?: any; //boolean | number
        }*/
      options]);
  external void adjustCenterOfMass();
  external void setZeroForce();
  external void resetConstraintVelocity();
  external void applyDamping(num dy);
  external void wakeUp();
  external void sleep();
  external void sleepTick(num time, bool dontSleep, num dt);
  external List<num> getVelocityFromPosition(List<num> story, num dt);
  external num getAngularVelocityFromPosition(num timeStep);
  external bool overlaps(Body body);
}

@JS("p2.Spring")
class Spring {
  // @Ignore
  Spring.fakeConstructor$();
  external factory Spring(Body bodyA, Body bodyB,
      [dynamic /*{

            stiffness?: number;
            damping?: number;
            localAnchorA?: number[];
            localAnchorB?: number[];
            worldAnchorA?: number[];
            worldAnchorB?: number[];

        }*/
      options]);
  external num get stiffness;
  external set stiffness(num v);
  external num get damping;
  external set damping(num v);
  external Body get bodyA;
  external set bodyA(Body v);
  external Body get bodyB;
  external set bodyB(Body v);
  external void applyForce();
}

@JS("p2.LinearSpring")
class LinearSpring extends Spring {
  // @Ignore
  LinearSpring.fakeConstructor$() : super.fakeConstructor$();
  external List<num> get localAnchorA;
  external set localAnchorA(List<num> v);
  external List<num> get localAnchorB;
  external set localAnchorB(List<num> v);
  external num get restLength;
  external set restLength(num v);
  external void setWorldAnchorA(List<num> worldAnchorA);
  external void setWorldAnchorB(List<num> worldAnchorB);
  external List<num> getWorldAnchorA(List<num> result);
  external List<num> getWorldAnchorB(List<num> result);
  external void applyForce();
}

@JS("p2.RotationalSpring")
class RotationalSpring extends Spring {
  // @Ignore
  RotationalSpring.fakeConstructor$() : super.fakeConstructor$();
  external factory RotationalSpring(Body bodyA, Body bodyB,
      [dynamic /*{
            restAngle?: number;
            stiffness?: number;
            damping?: number;
        }*/
      options]);
  external num get restAngle;
  external set restAngle(num v);
}

@JS("p2.Capsule")
class Capsule extends Shape {
  // @Ignore
  Capsule.fakeConstructor$() : super.fakeConstructor$();
  external factory Capsule([num length, num radius]);
  external num get length;
  external set length(num v);
  external num get radius;
  external set radius(num v);
}

@JS("p2.Circle")
class Circle extends Shape {
  // @Ignore
  Circle.fakeConstructor$() : super.fakeConstructor$();
  external factory Circle(num radius);
  external num get radius;
  external set radius(num v);
}

@JS("p2.Convex")
class Convex extends Shape {
  // @Ignore
  Convex.fakeConstructor$() : super.fakeConstructor$();
  external static num triangleArea(List<num> a, List<num> b, List<num> c);
  external factory Convex(List<List<num>> vertices, List<num> axes);
  external List<List<num>> get vertices;
  external set vertices(List<List<num>> v);
  external List<num> get axes;
  external set axes(List<num> v);
  external List<num> get centerOfMass;
  external set centerOfMass(List<num> v);
  external List<num> get triangles;
  external set triangles(List<num> v);
  external num get boundingRadius;
  external set boundingRadius(num v);
  external void projectOntoLocalAxis(List<num> localAxis, List<num> result);
  external void projectOntoWorldAxis(List<num> localAxis, List<num> shapeOffset,
      num shapeAngle, List<num> result);
  external void updateCenterOfMass();
}

@JS("p2.Heightfield")
class Heightfield extends Shape {
  // @Ignore
  Heightfield.fakeConstructor$() : super.fakeConstructor$();
  external factory Heightfield(List<num> data,
      [dynamic /*{
            minValue?: number;
            maxValue?: number;
            elementWidth: number;
        }*/
      options]);
  external List<num> get data;
  external set data(List<num> v);
  external num get maxValue;
  external set maxValue(num v);
  external num get minValue;
  external set minValue(num v);
  external num get elementWidth;
  external set elementWidth(num v);
}

@anonymous
@JS()
abstract class SharedShapeOptions {
  external List<num> get position;
  external set position(List<num> v);
  external num get angle;
  external set angle(num v);
  external num get collisionGroup;
  external set collisionGroup(num v);
  external bool get collisionResponse;
  external set collisionResponse(bool v);
  external num get collisionMask;
  external set collisionMask(num v);
  external bool get sensor;
  external set sensor(bool v);
  external factory SharedShapeOptions(
      {List<num> position,
      num angle,
      num collisionGroup,
      bool collisionResponse,
      num collisionMask,
      bool sensor});
}

@anonymous
@JS()
abstract class ShapeOptions implements SharedShapeOptions {
  external num get type;
  external set type(num v);
  external factory ShapeOptions(
      {num type,
      List<num> position,
      num angle,
      num collisionGroup,
      bool collisionResponse,
      num collisionMask,
      bool sensor});
}

@JS("p2.Shape")
class Shape {
  // @Ignore
  Shape.fakeConstructor$();
  external static num get idCounter;
  external static set idCounter(num v);
  external static num get CIRCLE;
  external static set CIRCLE(num v);
  external static num get PARTICLE;
  external static set PARTICLE(num v);
  external static num get PLANE;
  external static set PLANE(num v);
  external static num get CONVEX;
  external static set CONVEX(num v);
  external static num get LINE;
  external static set LINE(num v);
  external static num get RECTANGLE;
  external static set RECTANGLE(num v);
  external static num get CAPSULE;
  external static set CAPSULE(num v);
  external static num get HEIGHTFIELD;
  external static set HEIGHTFIELD(num v);
  external factory Shape([ShapeOptions options]);
  external num get type;
  external set type(num v);
  external num get id;
  external set id(num v);
  external num get boundingRadius;
  external set boundingRadius(num v);
  external num get collisionGroup;
  external set collisionGroup(num v);
  external num get collisionMask;
  external set collisionMask(num v);
  external Material get material;
  external set material(Material v);
  external num get area;
  external set area(num v);
  external bool get sensor;
  external set sensor(bool v);
  external num computeMomentOfInertia(num mass);
  external num updateBoundingRadius();
  external void updateArea();
  external void computeAABB(AABB out, List<num> position, num angle);
}

@JS("p2.Line")
class Line extends Shape {
  // @Ignore
  Line.fakeConstructor$() : super.fakeConstructor$();
  external factory Line([num length]);
  external num get length;
  external set length(num v);
}

@JS("p2.Particle")
class Particle extends Shape {
  // @Ignore
  Particle.fakeConstructor$() : super.fakeConstructor$();
}

@JS("p2.Plane")
class Plane extends Shape {
  // @Ignore
  Plane.fakeConstructor$() : super.fakeConstructor$();
}

@JS("p2.Rectangle")
class Rectangle extends Shape {
  // @Ignore
  Rectangle.fakeConstructor$() : super.fakeConstructor$();
  external static bool sameDimensions(Rectangle a, Rectangle b);
  external factory Rectangle([num width, num height]);
  external num get width;
  external set width(num v);
  external num get height;
  external set height(num v);
}

@JS("p2.Solver")
class Solver extends EventEmitter {
  // @Ignore
  Solver.fakeConstructor$() : super.fakeConstructor$();
  external static num get GS;
  external static set GS(num v);
  external static num get ISLAND;
  external static set ISLAND(num v);
  external factory Solver([dynamic /*{}*/ options, num type]);
  external num get type;
  external set type(num v);
  external List<Equation> get equations;
  external set equations(List<Equation> v);
  external Equation get equationSortFunction;
  external set equationSortFunction(Equation v);
  external void solve(num dy, World world);
  external void solveIsland(num dy, Island island);
  external void sortEquations();
  external void addEquation(Equation eq);
  external void addEquations(List<Equation> eqs);
  external void removeEquation(Equation eq);
  external void removeAllEquations();
}

@JS("p2.GSSolver")
class GSSolver extends Solver {
  // @Ignore
  GSSolver.fakeConstructor$() : super.fakeConstructor$();
  external factory GSSolver(
      [dynamic /*{
            iterations?: number;
            tolerance?: number;
        }*/
      options]);
  external num get iterations;
  external set iterations(num v);
  external num get tolerance;
  external set tolerance(num v);
  external bool get useZeroRHS;
  external set useZeroRHS(bool v);
  external num get frictionIterations;
  external set frictionIterations(num v);
  external num get usedIterations;
  external set usedIterations(num v);
  external void solve(num h, World world);
}

@JS("p2.OverlapKeeper")
class OverlapKeeper {
  // @Ignore
  OverlapKeeper.fakeConstructor$();
  external factory OverlapKeeper(
      Body bodyA, Shape shapeA, Body bodyB, Shape shapeB);
  external Shape get shapeA;
  external set shapeA(Shape v);
  external Shape get shapeB;
  external set shapeB(Shape v);
  external Body get bodyA;
  external set bodyA(Body v);
  external Body get bodyB;
  external set bodyB(Body v);
  external void tick();
  external void setOverlapping(
      Body bodyA, Shape shapeA, Body bodyB, Body shapeB);
  external bool bodiesAreOverlapping(Body bodyA, Body bodyB);
  external void JS$set(Body bodyA, Shape shapeA, Body bodyB, Shape shapeB);
}

@JS("p2.TupleDictionary")
class TupleDictionary {
  // @Ignore
  TupleDictionary.fakeConstructor$();
  external List<num> get data;
  external set data(List<num> v);
  external List<num> get keys;
  external set keys(List<num> v);
  external String getKey(num id1, num id2);
  external num getByKey(num key);
  external num JS$get(num i, num j);
  external num JS$set(num i, num j, num value);
  external void reset();
  external void copy(TupleDictionary dict);
}

@JS("p2.Utils")
class Utils {
  // @Ignore
  Utils.fakeConstructor$();
  external static List<dynamic/*=T*/ > appendArray/*<T>*/(
      List<dynamic/*=T*/ > a, List<dynamic/*=T*/ > b);
  external static bool chanceRoll(num chance);
  external static dynamic defaults(dynamic options, dynamic defaults);
  external static void extend(dynamic a, dynamic b);
  external static dynamic randomChoice(dynamic choice1, dynamic choice2);
  external static List<dynamic> rotateArray(
      List<dynamic> matrix, dynamic direction);
  external static void splice/*<T>*/(
      List<dynamic/*=T*/ > array, num index, num howMany);
  external static List<dynamic/*=T*/ > shuffle/*<T>*/(
      List<dynamic/*=T*/ > array);
  external static List<dynamic/*=T*/ > transposeArray/*<T>*/(
      List<dynamic/*=T*/ > array);
}

@JS("p2.Island")
class Island {
  // @Ignore
  Island.fakeConstructor$();
  external List<Equation> get equations;
  external set equations(List<Equation> v);
  external List<Body> get bodies;
  external set bodies(List<Body> v);
  external void reset();
  external List<Body> getBodies(dynamic result);
  external bool wantsToSleep();
  external bool sleep();
}

@JS("p2.IslandManager")
class IslandManager extends Solver {
  // @Ignore
  IslandManager.fakeConstructor$() : super.fakeConstructor$();
  external static IslandNode getUnvisitedNode(List<Node> nodes);
  external List<Equation> get equations;
  external set equations(List<Equation> v);
  external List<Island> get islands;
  external set islands(List<Island> v);
  external List<IslandNode> get nodes;
  external set nodes(List<IslandNode> v);
  external void visit(IslandNode node, List<Body> bds, List<Equation> eqs);
  external void bfs(IslandNode root, List<Body> bds, List<Equation> eqs);
  external List<Island> split(World world);
}

@JS("p2.IslandNode")
class IslandNode {
  // @Ignore
  IslandNode.fakeConstructor$();
  external factory IslandNode(Body body);
  external Body get body;
  external set body(Body v);
  external List<IslandNode> get neighbors;
  external set neighbors(List<IslandNode> v);
  external List<Equation> get equations;
  external set equations(List<Equation> v);
  external bool get visited;
  external set visited(bool v);
  external void reset();
}

@JS("p2.World")
class World extends EventEmitter {
  // @Ignore
  World.fakeConstructor$() : super.fakeConstructor$();
  external dynamic /*{
            type: string;
        }*/
      get postStepEvent;
  external set postStepEvent(
      dynamic /*{
            type: string;
        }*/
      v);
  external dynamic /*{
            type: string;
        }*/
      get addBodyEvent;
  external set addBodyEvent(
      dynamic /*{
            type: string;
        }*/
      v);
  external dynamic /*{
            type: string;
        }*/
      get removeBodyEvent;
  external set removeBodyEvent(
      dynamic /*{
            type: string;
        }*/
      v);
  external dynamic /*{
            type: string;
        }*/
      get addSpringEvent;
  external set addSpringEvent(
      dynamic /*{
            type: string;
        }*/
      v);
  external dynamic
      /*{
            type: string;
            bodyA: Body;
            bodyB: Body;
            shapeA: Shape;
            shapeB: Shape;
            contactEquation: ContactEquation;
        }*/
      get impactEvent;
  external set impactEvent(
      dynamic /*{
            type: string;
            bodyA: Body;
            bodyB: Body;
            shapeA: Shape;
            shapeB: Shape;
            contactEquation: ContactEquation;
        }*/
      v);
  external dynamic
      /*{
            type: string;
            pairs: Body[];
        }*/
      get postBroadphaseEvent;
  external set postBroadphaseEvent(
      dynamic /*{
            type: string;
            pairs: Body[];
        }*/
      v);
  external dynamic
      /*{
            type: string;
            shapeA: Shape;
            shapeB: Shape;
            bodyA: Body;
            bodyB: Body;
            contactEquations: ContactEquation[];
        }*/
      get beginContactEvent;
  external set beginContactEvent(
      dynamic /*{
            type: string;
            shapeA: Shape;
            shapeB: Shape;
            bodyA: Body;
            bodyB: Body;
            contactEquations: ContactEquation[];
        }*/
      v);
  external dynamic
      /*{
            type: string;
            shapeA: Shape;
            shapeB: Shape;
            bodyA: Body;
            bodyB: Body;
        }*/
      get endContactEvent;
  external set endContactEvent(
      dynamic /*{
            type: string;
            shapeA: Shape;
            shapeB: Shape;
            bodyA: Body;
            bodyB: Body;
        }*/
      v);
  external dynamic
      /*{
            type: string;
            contactEquations: ContactEquation[];
            frictionEquations: FrictionEquation[];
        }*/
      get preSolveEvent;
  external set preSolveEvent(
      dynamic /*{
            type: string;
            contactEquations: ContactEquation[];
            frictionEquations: FrictionEquation[];
        }*/
      v);
  external static num get NO_SLEEPING;
  external static set NO_SLEEPING(num v);
  external static num get BODY_SLEEPING;
  external static set BODY_SLEEPING(num v);
  external static num get ISLAND_SLEEPING;
  external static set ISLAND_SLEEPING(num v);
  external static void integrateBody(Body body, num dy);
  external factory World(
      [dynamic /*{
            solver?: Solver;
            gravity?: number[];
            broadphase?: Broadphase;
            islandSplit?: boolean;
            doProfiling?: boolean;
        }*/
      options]);
  external List<Spring> get springs;
  external set springs(List<Spring> v);
  external List<Body> get bodies;
  external set bodies(List<Body> v);
  external Solver get solver;
  external set solver(Solver v);
  external Narrowphase get narrowphase;
  external set narrowphase(Narrowphase v);
  external IslandManager get islandManager;
  external set islandManager(IslandManager v);
  external List<num> get gravity;
  external set gravity(List<num> v);
  external num get frictionGravity;
  external set frictionGravity(num v);
  external bool get useWorldGravityAsFrictionGravity;
  external set useWorldGravityAsFrictionGravity(bool v);
  external bool get useFrictionGravityOnZeroGravity;
  external set useFrictionGravityOnZeroGravity(bool v);
  external bool get doProfiling;
  external set doProfiling(bool v);
  external num get lastStepTime;
  external set lastStepTime(num v);
  external Broadphase get broadphase;
  external set broadphase(Broadphase v);
  external List<Constraint> get constraints;
  external set constraints(List<Constraint> v);
  external Material get defaultMaterial;
  external set defaultMaterial(Material v);
  external ContactMaterial get defaultContactMaterial;
  external set defaultContactMaterial(ContactMaterial v);
  external num get lastTimeStep;
  external set lastTimeStep(num v);
  external bool get applySpringForces;
  external set applySpringForces(bool v);
  external bool get applyDamping;
  external set applyDamping(bool v);
  external bool get applyGravity;
  external set applyGravity(bool v);
  external bool get solveConstraints;
  external set solveConstraints(bool v);
  external List<ContactMaterial> get contactMaterials;
  external set contactMaterials(List<ContactMaterial> v);
  external num get time;
  external set time(num v);
  external bool get stepping;
  external set stepping(bool v);
  external bool get islandSplit;
  external set islandSplit(bool v);
  external bool get emitImpactEvent;
  external set emitImpactEvent(bool v);
  external num get sleepMode;
  external set sleepMode(num v);
  external void addConstraint(Constraint c);
  external void addContactMaterial(ContactMaterial contactMaterial);
  external void removeContactMaterial(ContactMaterial cm);
  external ContactMaterial getContactMaterial(
      Material materialA, Material materialB);
  external void removeConstraint(Constraint c);
  external void step(num dy, [num timeSinceLastCalled, num maxSubSteps]);
  external void runNarrowphase(
      Narrowphase np,
      Body bi,
      Shape si,
      List<dynamic> xi,
      num ai,
      Body bj,
      Shape sj,
      List<dynamic> xj,
      num aj,
      num cm,
      num glen);
  external void addSpring(Spring s);
  external void removeSpring(Spring s);
  external void addBody(Body body);
  external void removeBody(Body body);
  external Body getBodyByID(num id);
  external void disableBodyCollision(Body bodyA, Body bodyB);
  external void enableBodyCollision(Body bodyA, Body bodyB);
  external void clear();
  external World clone();
  external List<Body> hitTest(
      List<num> worldPoint, List<Body> bodies, num precision);
  external void setGlobalEquationParameters(
      dynamic /*{
            relaxation?: number;
            stiffness?: number;
        }*/
      parameters);
  external void setGlobalStiffness(num stiffness);
  external void setGlobalRelaxation(num relaxation);
}

// End module p2

