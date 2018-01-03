@JS()
library phaser.box2d;

import "package:js/js.dart";

@JS()
class box2d {
  // @Ignore
  box2d.fakeConstructor$();
  external static bool get DEBUG;
  external static set DEBUG(bool v);
  external static bool get ENABLE_ASSERTS;
  external static set ENABLE_ASSERTS(bool v);
  external static void b2Assert(bool condition,
      [String opt_message,
      dynamic var_args1,
      dynamic var_args2,
      dynamic var_args3,
      dynamic var_args4,
      dynamic var_args5]);
  external static num get b2_maxFloat;
  external static set b2_maxFloat(num v);
  external static num get b2_epsilon;
  external static set b2_epsilon(num v);
  external static num get b2_epsilon_sq;
  external static set b2_epsilon_sq(num v);
  external static num get b2_pi;
  external static set b2_pi(num v);

  /// The maximum number of contact points between two convex
  /// shapes. Do not change this value.
  external static num get b2_maxManifoldPoints;
  external static set b2_maxManifoldPoints(num v);

  /// The maximum number of vertices on a convex polygon. You
  /// cannot increase this too much because b2BlockAllocator has a
  /// maximum object size.
  external static num get b2_maxPolygonVertices;
  external static set b2_maxPolygonVertices(num v);

  /// This is used to fatten AABBs in the dynamic tree. This allows
  /// proxies to move by a small amount without triggering a tree
  /// adjustment.
  /// This is in meters.
  external static num get b2_aabbExtension;
  external static set b2_aabbExtension(num v);

  /// This is used to fatten AABBs in the dynamic tree. This is
  /// used to predict the future position based on the current
  /// displacement.
  /// This is a dimensionless multiplier.
  external static num get b2_aabbMultiplier;
  external static set b2_aabbMultiplier(num v);

  /// A small length used as a collision and constraint tolerance.
  /// Usually it is chosen to be numerically significant, but
  /// visually insignificant.
  external static num get b2_linearSlop;
  external static set b2_linearSlop(num v);

  /// A small angle used as a collision and constraint tolerance.
  /// Usually it is chosen to be numerically significant, but
  /// visually insignificant.
  external static num get b2_angularSlop;
  external static set b2_angularSlop(num v);

  /// The radius of the polygon/edge shape skin. This should not be
  /// modified. Making this smaller means polygons will have an
  /// insufficient buffer for continuous collision.
  /// Making it larger may create artifacts for vertex collision.
  external static num get b2_polygonRadius;
  external static set b2_polygonRadius(num v);

  /// Maximum number of sub-steps per contact in continuous physics
  /// simulation.
  external static num get b2_maxSubSteps;
  external static set b2_maxSubSteps(num v);

  /// Maximum number of contacts to be handled to solve a TOI
  /// impact.
  external static num get b2_maxTOIContacts;
  external static set b2_maxTOIContacts(num v);

  /// A velocity threshold for elastic collisions. Any collision
  /// with a relative linear velocity below this threshold will be
  /// treated as inelastic.
  external static num get b2_velocityThreshold;
  external static set b2_velocityThreshold(num v);

  /// The maximum linear position correction used when solving
  /// constraints. This helps to prevent overshoot.
  external static num get b2_maxLinearCorrection;
  external static set b2_maxLinearCorrection(num v);

  /// The maximum angular position correction used when solving
  /// constraints. This helps to prevent overshoot.
  external static num get b2_maxAngularCorrection;
  external static set b2_maxAngularCorrection(num v);

  /// The maximum linear velocity of a body. This limit is very
  /// large and is used to prevent numerical problems. You
  /// shouldn't need to adjust this.
  external static num get b2_maxTranslation;
  external static set b2_maxTranslation(num v);
  external static num get b2_maxTranslationSquared;
  external static set b2_maxTranslationSquared(num v);

  /// The maximum angular velocity of a body. This limit is very
  /// large and is used to prevent numerical problems. You
  /// shouldn't need to adjust this.
  external static num get b2_maxRotation;
  external static set b2_maxRotation(num v);
  external static num get b2_maxRotationSquared;
  external static set b2_maxRotationSquared(num v);

  /// This scale factor controls how fast overlap is resolved.
  /// Ideally this would be 1 so that overlap is removed in one
  /// time step. However using values close to 1 often lead to
  /// overshoot.
  external static num get b2_baumgarte;
  external static set b2_baumgarte(num v);
  external static num get b2_toiBaumgarte;
  external static set b2_toiBaumgarte(num v);

  /// The time that a body must be still before it will go to
  /// sleep.
  external static num get b2_timeToSleep;
  external static set b2_timeToSleep(num v);

  /// A body cannot sleep if its linear velocity is above this
  /// tolerance.
  external static num get b2_linearSleepTolerance;
  external static set b2_linearSleepTolerance(num v);

  /// A body cannot sleep if its angular velocity is above this
  /// tolerance.
  external static num get b2_angularSleepTolerance;
  external static set b2_angularSleepTolerance(num v);

  /// Implement this function to use your own memory allocator.
  external static dynamic b2Alloc(num size);

  /// If you implement b2Alloc, you should also implement this
  /// function.
  external static void b2Free(dynamic mem);

  /// Logging function.
  /// You can modify this to use your logging facility.
  external static void b2Log(
      [dynamic var_args1,
      dynamic var_args2,
      dynamic var_args3,
      dynamic var_args4,
      dynamic var_args5]);

  /// Current version.
  external static b2Version get b2_version;
  external static set b2_version(b2Version v);
  external static num get b2_changelist;
  external static set b2_changelist(num v);
  external static num b2ParseInt(String v);
  external static num b2ParseUInt(String v);
  external static List<dynamic> b2MakeArray(
      [num length, dynamic init(num length)]);
  external static List<num> b2MakeNumberArray([num length]);
  external static num get b2_pi_over_180;
  external static set b2_pi_over_180(num v);
  external static num get b2_180_over_pi;
  external static set b2_180_over_pi(num v);
  external static num get b2_two_pi;
  external static set b2_two_pi(num v);
  external static num b2Abs(num n);
  external static num b2Min(num a, num b);
  external static num b2Max(num a, num b);
  external static num b2Clamp(num a, num lo, num hi);
  external static void b2Swap(List<num> a, List<num> b);

  /// This function is used to ensure that a floating point number
  /// is not a NaN or infinity.
  external static bool b2IsValid(num n);
  external static num b2Sq(num n);

  /// This is a approximate yet fast inverse square-root.
  external static num b2InvSqrt(num n);
  external static num b2Sqrt(num n);
  external static num b2Pow(num x, num y);
  external static num b2DegToRad(num degrees);
  external static num b2RadToDeg(num radians);
  external static num b2Cos(num radians);
  external static num b2Sin(num radians);
  external static num b2Acos(num n);
  external static num b2Asin(num n);
  external static num b2Atan2(num y, num x);

  /// Next Largest Power of 2
  /// Given a binary integer value x, the next largest power of 2
  /// can be computed by a SWAR algorithm that recursively "folds"
  /// the upper bits into the lower bits. This process yields a bit
  /// vector with the same most significant 1 as x, but all 1's
  /// below it. Adding 1 to that value yields the next largest
  /// power of 2. For a 32-bit value:
  external static num b2NextPowerOfTwo(num x);
  external static bool b2IsPowerOfTwo(num x);
  external static num b2Random();
  external static num b2RandomRange(num lo, num hi);
  external static b2Vec2 get b2Vec2_zero;
  external static set b2Vec2_zero(b2Vec2 v);
  external static b2Vec2 b2AbsV(b2Vec2 v, b2Vec2 out);
  external static b2Vec2 b2MinV(b2Vec2 a, b2Vec2 b, b2Vec2 out);
  external static b2Vec2 b2MaxV(b2Vec2 a, b2Vec2 b, b2Vec2 out);
  external static b2Vec2 b2ClampV(b2Vec2 v, b2Vec2 lo, b2Vec2 hi, b2Vec2 out);
  external static b2Vec2 b2RotateV(b2Vec2 v, num c, num s, b2Vec2 out);
  external static b2Vec2 b2RotateRadiansV(b2Vec2 v, num radians, b2Vec2 out);
  external static b2Vec2 b2RotateDegreesV(b2Vec2 v, num degrees, b2Vec2 out);

  /// Perform the dot product on two vectors.
  /// a.x * b.x + a.y * b.y
  external static num b2DotVV(b2Vec2 a, b2Vec2 b);

  /// Perform the cross product on two vectors. In 2D this produces a scalar.
  /// a.x * b.y - a.y * b.x
  external static num b2CrossVV(b2Vec2 a, b2Vec2 b);

  /// Perform the cross product on a vector and a scalar. In 2D
  /// this produces a vector.
  external static b2Vec2 b2CrossVS(b2Vec2 v, num s, b2Vec2 out);

  /// box2d.b2CrossVS(v, 1.0, out)
  external static b2Vec2 b2CrossVOne(b2Vec2 v, b2Vec2 out);

  /// Perform the cross product on a scalar and a vector. In 2D
  /// this produces a vector.
  external static b2Vec2 b2CrossSV(num s, b2Vec2 v, b2Vec2 out);

  /// box2d.b2CrossSV(1.0, v, out)
  external static b2Vec2 b2CrossOneV(b2Vec2 v, b2Vec2 out);

  /// Add two vectors component-wise.
  external static b2Vec2 b2AddVV(b2Vec2 a, b2Vec2 b, b2Vec2 out);

  /// Subtract two vectors component-wise.
  external static b2Vec2 b2SubVV(b2Vec2 a, b2Vec2 b, b2Vec2 out);
  external static b2Vec2 b2MulSV(num s, b2Vec2 v, b2Vec2 out);

  /// out = a + (s * b)
  external static b2Vec2 b2AddVMulSV(b2Vec2 a, num s, b2Vec2 b, b2Vec2 out);

  /// out = a - (s * b)
  external static b2Vec2 b2SubVMulSV(b2Vec2 a, num s, b2Vec2 b, b2Vec2 out);

  /// out = a + b2CrossSV(s, v)
  external static b2Vec2 b2AddVCrossSV(b2Vec2 a, num s, b2Vec2 v, b2Vec2 out);

  /// Get the center of two vectors.
  external static b2Vec2 b2MidVV(b2Vec2 a, b2Vec2 b, b2Vec2 out);

  /// Get the extent of two vectors (half-widths).
  external static b2Vec2 b2ExtVV(b2Vec2 a, b2Vec2 b, b2Vec2 out);
  external static bool b2IsEqualToV(b2Vec2 a, b2Vec2 b);
  external static num b2DistanceVV(b2Vec2 a, b2Vec2 b);
  external static num b2DistanceSquaredVV(b2Vec2 a, b2Vec2 b);
  external static b2Vec2 b2NegV(b2Vec2 v, b2Vec2 out);

  /// Perform the dot product on two vectors.
  external static num b2DotV3V3(b2Vec3 a, b2Vec3 b);

  /// Perform the cross product on two vectors.
  external static b2Vec3 b2CrossV3V3(b2Vec3 a, b2Vec3 b, b2Vec3 out);
  external static b2Mat22 b2AbsM(b2Mat22 M, b2Mat22 out);

  /// Multiply a matrix times a vector. If a rotation matrix is
  /// provided, then this transforms the vector from one frame to
  /// another.
  external static b2Vec2 b2MulMV(b2Mat22 M, b2Vec2 v, b2Vec2 out);

  /// Multiply a matrix transpose times a vector. If a rotation
  /// matrix is provided, then this transforms the vector from one
  /// frame to another (inverse transform).
  external static b2Vec2 b2MulTMV(b2Mat22 M, b2Vec2 v, b2Vec2 out);
  external static b2Mat22 b2AddMM(b2Mat22 A, b2Mat22 B, b2Mat22 out);
  external static b2Mat22 b2MulMM(b2Mat22 A, b2Mat22 B, b2Mat22 out);
  external static b2Mat22 b2MulTMM(b2Mat22 A, b2Mat22 B, b2Mat22 out);

  /// Multiply a matrix times a vector.
  external static b2Vec3 b2MulM33V3(b2Mat33 A, b2Vec3 v, b2Vec3 out);
  external static b2Vec3 b2MulM33XYZ(
      b2Mat33 A, num x, num y, num z, b2Vec3 out);
  external static b2Vec2 b2MulM33V2(b2Mat33 A, b2Vec2 v, b2Vec2 out);
  external static b2Vec2 b2MulM33XY(b2Mat33 A, num x, num y, b2Vec2 out);

  /// Multiply two rotations: q * r
  external static b2Rot b2MulRR(b2Rot q, b2Rot r, b2Rot out);

  /// Transpose multiply two rotations: qT * r
  external static b2Rot b2MulTRR(b2Rot q, b2Rot r, b2Rot out);

  /// Rotate a vector
  external static b2Vec2 b2MulRV(b2Rot q, b2Vec2 v, b2Vec2 out);

  /// Inverse rotate a vector
  external static b2Vec2 b2MulTRV(b2Rot q, b2Vec2 v, b2Vec2 out);
  external static b2Vec2 b2MulXV(b2Transform T, b2Vec2 v, b2Vec2 out);
  external static b2Vec2 b2MulTXV(b2Transform T, b2Vec2 v, b2Vec2 out);

  /// v2 = A.q.Rot(B.q.Rot(v1) + B.p) + A.p
  /// = (A.q * B.q).Rot(v1) + A.q.Rot(B.p) + A.p
  external static b2Transform b2MulXX(
      b2Transform A, b2Transform B, b2Transform out);

  /// v2 = A.q' * (B.q * v1 + B.p - A.p)
  /// = A.q' * B.q * v1 + A.q' * (B.p - A.p)
  external static b2Transform b2MulTXX(
      b2Transform A, b2Transform B, b2Transform out);
  external static num get b2_gjkCalls;
  external static set b2_gjkCalls(num v);
  external static num get b2_gjkIters;
  external static set b2_gjkIters(num v);
  external static num get b2_gjkMaxIters;
  external static set b2_gjkMaxIters(num v);

  /// Compute the closest points between two shapes. Supports any combination of:
  /// box2d.b2CircleShape, box2d.b2PolygonShape, box2d.b2EdgeShape. The simplex cache is input/output.
  /// On the first call set box2d.b2SimplexCache.count to zero.
  external static void b2Distance(
      b2DistanceOutput output, b2SimplexCache cache, b2DistanceInput input);

  /// Compute the point states given two manifolds. The states
  /// pertain to the transition from manifold1 to manifold2. So
  /// state1 is either persist or remove while state2 is either add
  /// or persist.
  external static void b2GetPointStates(
      List<num /*enum box2d.b2PointState*/ > state1,
      List<num /*enum box2d.b2PointState*/ > state2,
      b2Manifold manifold1,
      b2Manifold manifold2);
  external static bool b2TestOverlapAABB(b2AABB a, b2AABB b);

  /// Clipping for contact manifolds.
  /// Sutherland-Hodgman clipping.
  external static num b2ClipSegmentToLine(List<b2ClipVertex> vOut,
      List<b2ClipVertex> vIn, b2Vec2 normal, num offset, num vertexIndexA);
  external static bool b2TestOverlapShape(
      b2Shape shapeA, b2Shape shapeB, b2Transform xfA, b2Transform xfB);
  external static num get b2_toiTime;
  external static set b2_toiTime(num v);
  external static num get b2_toiMaxTime;
  external static set b2_toiMaxTime(num v);
  external static num get b2_toiCalls;
  external static set b2_toiCalls(num v);
  external static num get b2_toiIters;
  external static set b2_toiIters(num v);
  external static num get b2_toiMaxIters;
  external static set b2_toiMaxIters(num v);
  external static num get b2_toiRootIters;
  external static set b2_toiRootIters(num v);
  external static num get b2_toiMaxRootIters;
  external static set b2_toiMaxRootIters(num v);

  /// Compute the upper bound on time before two shapes penetrate.
  /// Time is represented as a fraction between [0,tMax]. This uses
  /// a swept separating axis and may miss some intermediate,
  /// non-tunneling collision. If you change the time interval, you
  /// should call this function again.
  /// Note: use box2d.b2Distance to compute the contact point and
  /// normal at the time of impact.
  external static void b2TimeOfImpact(b2TOIOutput output, b2TOIInput input);

  /// Friction mixing law. The idea is to allow either fixture to
  /// drive the restitution to zero. For example, anything slides
  /// on ice.
  external static num b2MixFriction(num friction1, num friction2);

  /// Restitution mixing law. The idea is allow for anything to
  /// bounce off an inelastic surface. For example, a superball
  /// bounces on anything.
  external static num b2MixRestitution(num restitution1, num restitution2);

  /// Compute the collision manifold between an edge and a circle.
  /// Compute contact points for edge versus circle.
  /// This accounts for edge connectivity.
  external static void b2CollideEdgeAndCircle(
      b2Manifold manifold,
      b2EdgeShape edgeA,
      b2Transform xfA,
      b2CircleShape circleB,
      b2Transform xfB);

  /// Compute the collision manifold between an edge and a polygon.
  external static void b2CollideEdgeAndPolygon(
      b2Manifold manifold,
      b2EdgeShape edgeA,
      b2Transform xfA,
      b2PolygonShape polygonB,
      b2Transform xfB);

  /// Find the max separation between poly1 and poly2 using edge
  /// normals from poly1.
  external static num b2FindMaxSeparation(
      List<num> edgeIndex,
      b2PolygonShape poly1,
      b2Transform xf1,
      b2PolygonShape poly2,
      b2Transform xf2);
  external static void b2FindIncidentEdge(
      List<b2ClipVertex> c,
      b2PolygonShape poly1,
      b2Transform xf1,
      num edge1,
      b2PolygonShape poly2,
      b2Transform xf2);

  /// Find edge normal of max separation on A - return if separating axis is found
  /// Find edge normal of max separation on B - return if separation axis is found
  /// Choose reference edge as min(minA, minB)
  /// Find incident edge
  /// Clip
  /// The normal points from 1 to 2
  external static void b2CollidePolygons(
      b2Manifold manifold,
      b2PolygonShape polyA,
      b2Transform xfA,
      b2PolygonShape polyB,
      b2Transform xfB);

  /// Compute the collision manifold between two circles.
  external static void b2CollideCircles(
      b2Manifold manifold,
      b2CircleShape circleA,
      b2Transform xfA,
      b2CircleShape circleB,
      b2Transform xfB);

  /// Compute the collision manifold between a polygon and a
  /// circle.
  external static void b2CollidePolygonAndCircle(
      b2Manifold manifold,
      b2PolygonShape polygonA,
      b2Transform xfA,
      b2CircleShape circleB,
      b2Transform xfB);

  /// This is used to sort pairs.
  external static num b2PairLessThan(b2Pair pair1, b2Pair pair2);
  external static num get b2_minPulleyLength;
  external static set b2_minPulleyLength(num v);
}

// Module box2d
@JS("box2d.b2JointType")
class b2JointType {
  external static num get e_unknownJoint;
  external static num get e_revoluteJoint;
  external static num get e_prismaticJoint;
  external static num get e_distanceJoint;
  external static num get e_pulleyJoint;
  external static num get e_mouseJoint;
  external static num get e_gearJoint;
  external static num get e_wheelJoint;
  external static num get e_weldJoint;
  external static num get e_frictionJoint;
  external static num get e_ropeJoint;
  external static num get e_motorJoint;
  external static num get e_areaJoint;
}

@JS("box2d.b2LimitState")
class b2LimitState {
  external static num get e_inactiveLimit;
  external static num get e_atLowerLimit;
  external static num get e_atUpperLimit;
  external static num get e_equalLimits;
}

@JS("box2d.b2ContactFeatureType")
class b2ContactFeatureType {
  external static num get e_vertex;
  external static num get e_face;
}

@JS("box2d.b2ManifoldType")
class b2ManifoldType {
  external static num get e_unknown;
  external static num get e_circles;
  external static num get e_faceA;
  external static num get e_faceB;
}

/// This is used for determining the state of contact points.
@JS("box2d.b2PointState")
class b2PointState {
  external static num get b2_nullState;
  external static num get b2_addState;
  external static num get b2_persistState;
  external static num get b2_removeState;
}

@JS("box2d.b2TOIOutputState")
class b2TOIOutputState {
  external static num get e_unknown;
  external static num get e_failed;
  external static num get e_overlapped;
  external static num get e_touching;
  external static num get e_separated;
}

@JS("box2d.b2SeparationFunctionType")
class b2SeparationFunctionType {
  external static num get e_unknown;
  external static num get e_points;
  external static num get e_faceA;
  external static num get e_faceB;
}

/// Flags stored in m_flags
@JS("box2d.b2ContactFlag")
class b2ContactFlag {
  external static num get e_none;
  external static num get e_islandFlag;
  external static num get e_touchingFlag;
  external static num get e_enabledFlag;
  external static num get e_filterFlag;
  external static num get e_bulletHitFlag;
  external static num get e_toiFlag;
}

@JS("box2d.b2ShapeType")
class b2ShapeType {
  external static num get e_unknown;
  external static num get e_circleShape;
  external static num get e_edgeShape;
  external static num get e_polygonShape;
  external static num get e_chainShape;
  external static num get e_shapeTypeCount;
}

@JS("box2d.b2EPAxisType")
class b2EPAxisType {
  external static num get e_unknown;
  external static num get e_edgeA;
  external static num get e_edgeB;
}

@JS("box2d.b2EPColliderVertexType")
class b2EPColliderVertexType {
  external static num get e_isolated;
  external static num get e_concave;
  external static num get e_convex;
}

@JS("box2d.b2DrawFlags")
class b2DrawFlags {
  external static num get e_none;
  external static num get e_shapeBit;
  external static num get e_jointBit;
  external static num get e_aabbBit;
  external static num get e_pairBit;
  external static num get e_centerOfMassBit;
  external static num get e_controllerBit;
  external static num get e_all;
}

/// The body type.
/// enum= zero mass, zero velocity, may be manually moved
/// kinematic= zero mass, non-zero velocity set by user, moved by solver
/// dynamic= positive mass, non-zero velocity determined by forces, moved by solver
@JS("box2d.b2BodyType")
class b2BodyType {
  external static num get b2_unknown;
  external static num get b2_staticBody;
  external static num get b2_kinematicBody;
  external static num get b2_dynamicBody;
  external static num get b2_bulletBody;
}

@JS("box2d.b2BodyFlag")
class b2BodyFlag {
  external static num get e_none;
  external static num get e_islandFlag;
  external static num get e_awakeFlag;
  external static num get e_autoSleepFlag;
  external static num get e_bulletFlag;
  external static num get e_fixedRotationFlag;
  external static num get e_activeFlag;
  external static num get e_toiFlag;
}

@JS("box2d.b2WorldFlag")
class b2WorldFlag {
  external static num get e_none;
  external static num get e_newFixture;
  external static num get e_locked;
  external static num get e_clearForces;
}

@JS("box2d.b2Version")
class b2Version {
  // @Ignore
  b2Version.fakeConstructor$();

  /// Version numberinf scheme See
  /// http://en.wikipedia.org/wiki/Software_versioning
  external factory b2Version([num major, num minor, num revision]);
  external num get major;
  external set major(num v);
  external num get minor;
  external set minor(num v);
  external num get revision;
  external set revision(num v);
  external String toString();
}

@JS("box2d.b2Vec2")
class b2Vec2 {
  // @Ignore
  b2Vec2.fakeConstructor$();

  /// A 2D column vector.
  external factory b2Vec2([num x, num y]);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external static b2Vec2 get ZERO;
  external static set ZERO(b2Vec2 v);
  external static b2Vec2 get UNITX;
  external static set UNITX(b2Vec2 v);
  external static b2Vec2 get UNITY;
  external static set UNITY(b2Vec2 v);
  external static b2Vec2 get s_t0;
  external static set s_t0(b2Vec2 v);
  external static b2Vec2 get s_t1;
  external static set s_t1(b2Vec2 v);
  external static b2Vec2 get s_t2;
  external static set s_t2(b2Vec2 v);
  external static b2Vec2 get s_t3;
  external static set s_t3(b2Vec2 v);
  external static List<b2Vec2> MakeArray([num length]);
  external b2Vec2 Clone();

  /// Set this vector to all zeros.
  external b2Vec2 SetZero();

  /// Set this vector to some specified coordinates.
  external b2Vec2 SetXY(num x, num y);
  external b2Vec2 Copy(b2Vec2 other);

  /// Add a vector to this vector.
  external b2Vec2 SelfAdd(b2Vec2 v);
  external b2Vec2 SelfAddXY(num x, num y);

  /// Subtract a vector from this vector.
  external b2Vec2 SelfSub(b2Vec2 v);
  external b2Vec2 SelfSubXY(num x, num y);

  /// Multiply this vector by a scalar.
  external b2Vec2 SelfMul(num s);

  /// this += s * v
  external b2Vec2 SelfMulAdd(num s, b2Vec2 v);

  /// this -= s * v
  external b2Vec2 SelfMulSub(num s, b2Vec2 v);
  external num Dot(b2Vec2 v);
  external num Cross(b2Vec2 v);

  /// Get the length of this vector (the norm).
  external num Length();
  external num GetLength();

  /// Get the length squared. For performance, use this instead of
  /// b2Vec2::Length (if possible).
  external num LengthSquared();
  external num GetLengthSquared();

  /// Convert this vector into a unit vector. Returns the length.
  external num Normalize();
  external b2Vec2 SelfNormalize();
  external b2Vec2 SelfRotate(num c, num s);
  external b2Vec2 SelfRotateRadians(num radians);
  external b2Vec2 SelfRotateDegrees(num degrees);

  /// Does this vector contain finite coordinates?
  external bool IsValid();
  external b2Vec2 SelfCrossVS(num s);
  external b2Vec2 SelfCrossSV(num s);
  external b2Vec2 SelfMinV(b2Vec2 v);
  external b2Vec2 SelfMaxV(b2Vec2 v);
  external b2Vec2 SelfAbs();
  external b2Vec2 SelfNeg();

  /// Get the skew vector such that dot(skew_vec, other) ===
  /// cross(vec, other)
  external b2Vec2 SelfSkew();
}

@JS("box2d.b2Vec3")
class b2Vec3 {
  // @Ignore
  b2Vec3.fakeConstructor$();
  external factory b2Vec3([num x, num y, num z]);
  external num get x;
  external set x(num v);
  external num get y;
  external set y(num v);
  external num get z;
  external set z(num v);
  external static b2Vec3 get ZERO;
  external static set ZERO(b2Vec3 v);
  external static b2Vec3 get s_t0;
  external static set s_t0(b2Vec3 v);
  external b2Vec3 Clone();
  external b2Vec3 SetZero();
  external b2Vec3 SetXYZ(num x, num y, num z);
  external b2Vec3 Copy(b2Vec3 other);
  external b2Vec3 SelfNeg();
  external b2Vec3 SelfAdd(b2Vec3 v);
  external b2Vec3 SelfAddXYZ(num x, num y, num z);
  external b2Vec3 SelfSub(b2Vec3 v);
  external b2Vec3 SelfSubXYZ(num x, num y, num z);
  external b2Vec3 SelfMul(num s);
}

@JS("box2d.b2Mat22")
class b2Mat22 {
  // @Ignore
  b2Mat22.fakeConstructor$();

  /// A 2-by-2 matrix. Stored in column-major order.
  external factory b2Mat22();
  external b2Vec2 get ex;
  external set ex(b2Vec2 v);
  external b2Vec2 get ey;
  external set ey(b2Vec2 v);
  external static b2Mat22 get IDENTITY;
  external static set IDENTITY(b2Mat22 v);
  external b2Mat22 Clone();

  /// Construct this matrix using columns.
  external static b2Mat22 FromVV(b2Vec2 c1, b2Vec2 c2);

  /// Construct this matrix using scalars.
  external static b2Mat22 FromSSSS(num r1c1, num r1c2, num r2c1, num r2c2);

  /// Construct this matrix using an angle. This matrix becomes an
  /// orthonormal rotation matrix.
  external static b2Mat22 FromAngleRadians(num radians);

  /// Initialize this matrix using scalars.
  external b2Mat22 SetSSSS(num r1c1, num r1c2, num r2c1, num r2c2);

  /// Initialize this matrix using columns.
  external b2Mat22 SetVV(b2Vec2 c1, b2Vec2 c2);

  /// Initialize this matrix using an angle. This matrix becomes an
  /// orthonormal rotation matrix.
  external b2Mat22 SetAngle(num radians);
  external b2Mat22 Copy(b2Mat22 other);

  /// Set this to the identity matrix.
  external b2Mat22 SetIdentity();

  /// Set this matrix to all zeros.
  external b2Mat22 SetZero();

  /// Extract the angle from this matrix (assumed to be a rotation
  /// matrix).
  external num GetAngle();
  external b2Mat22 GetInverse(b2Mat22 out);

  /// Solve A * x = b, where b is a column vector. This is more
  /// efficient than computing the inverse in one-shot cases.
  external b2Vec2 Solve(num b_x, num b_y, b2Vec2 out);
  external b2Mat22 SelfAbs();
  external b2Mat22 SelfInv();
  external b2Mat22 SelfAddM(b2Mat22 M);
  external b2Mat22 SelfSubM(b2Mat22 M);
}

@JS("box2d.b2Mat33")
class b2Mat33 {
  // @Ignore
  b2Mat33.fakeConstructor$();

  /// A 3-by-3 matrix. Stored in column-major order.
  external factory b2Mat33();
  external b2Vec3 get ex;
  external set ex(b2Vec3 v);
  external b2Vec3 get ey;
  external set ey(b2Vec3 v);
  external b2Vec3 get ez;
  external set ez(b2Vec3 v);
  external static b2Mat33 get IDENTITY;
  external static set IDENTITY(b2Mat33 v);
  external b2Mat33 Clone();
  external b2Mat33 SetVVV(b2Vec3 c1, b2Vec3 c2, b2Vec3 c3);
  external b2Mat33 Copy(b2Mat33 other);
  external b2Mat33 SetIdentity();

  /// Set this matrix to all zeros.
  external b2Mat33 SetZero();
  external b2Mat33 SelfAddM(b2Mat33 M);

  /// Solve A * x = b, where b is a column vector. This is more
  /// efficient than computing the inverse in one-shot cases.
  external b2Vec3 Solve33(num b_x, num b_y, num b_z, b2Vec3 out);

  /// Solve A * x = b, where b is a column vector. This is more
  /// efficient than computing the inverse in one-shot cases. Solve
  /// only the upper 2-by-2 matrix equation.
  external b2Vec2 Solve22(num b_x, num b_y, b2Vec2 out);

  /// Get the inverse of this matrix as a 2-by-2.
  /// Returns the zero matrix if singular.
  external void GetInverse22(b2Mat33 M);

  /// Get the symmetric inverse of this matrix as a 3-by-3.
  /// Returns the zero matrix if singular.
  external void GetSymInverse33(b2Mat33 M);
}

@JS("box2d.b2Rot")
class b2Rot {
  // @Ignore
  b2Rot.fakeConstructor$();

  /// Rotation
  /// Initialize from an angle in radians
  external factory b2Rot([num angle]);
  external num get angle;
  external set angle(num v);
  external num get s;
  external set s(num v);
  external num get c;
  external set c(num v);
  external static b2Rot get IDENTITY;
  external static set IDENTITY(b2Rot v);
  external b2Rot Clone();
  external b2Rot Copy(b2Rot other);

  /// Set using an angle in radians.
  external b2Rot SetAngle(num angle);

  /// Set to the identity rotation
  external b2Rot SetIdentity();

  /// Get the angle in radians
  external num GetAngle();

  /// Get the x-axis
  external b2Vec2 GetXAxis(b2Vec2 out);

  /// Get the y-axis
  external b2Vec2 GetYAxis(b2Vec2 out);
}

@JS("box2d.b2Transform")
class b2Transform {
  // @Ignore
  b2Transform.fakeConstructor$();

  /// A transform contains translation and rotation. It is used to
  /// represent the position and orientation of rigid frames.
  external factory b2Transform();
  external b2Vec2 get p;
  external set p(b2Vec2 v);
  external b2Rot get q;
  external set q(b2Rot v);
  external static b2Transform get IDENTITY;
  external static set IDENTITY(b2Transform v);
  external b2Transform Clone();
  external b2Transform Copy(b2Transform other);

  /// Set this to the identity transform.
  external b2Transform SetIdentity();

  /// Set this based on the position and angle.
  external b2Transform SetPositionRotation(b2Vec2 position, b2Rot q);
  external b2Transform SetPositionAngleRadians(b2Vec2 pos, num a);
  external b2Transform SetPosition(b2Vec2 position);
  external b2Transform SetPositionXY(num x, num y);
  external b2Transform SetRotation(b2Rot rotation);
  external b2Transform SetRotationAngleRadians(num radians);
  external b2Vec2 GetPosition();
  external b2Rot GetRotation();
  external num GetRotationAngle();
  external num GetAngle();
}

@JS("box2d.b2Sweep")
class b2Sweep {
  // @Ignore
  b2Sweep.fakeConstructor$();

  /// This describes the motion of a body/shape for TOI computation.
  /// Shapes are defined with respect to the body origin, which may
  /// no coincide with the center of mass. However, to support dynamics
  /// we must interpolate the center of mass position.
  external factory b2Sweep();
  external b2Vec2 get localCenter;
  external set localCenter(b2Vec2 v);
  external b2Vec2 get c0;
  external set c0(b2Vec2 v);
  external b2Vec2 get c;
  external set c(b2Vec2 v);
  external num get a0;
  external set a0(num v);
  external num get a;
  external set a(num v);

  /// Fraction of the current time step in the range [0,1]
  /// c0 and a0 are the positions at alpha0.
  external num get alpha0;
  external set alpha0(num v);
  external b2Sweep Clone();
  external b2Sweep Copy(b2Sweep other);

  /// Get the interpolated transform at a specific time.
  external b2Transform GetTransform(b2Transform xf, num beta);

  /// Advance the sweep forward, yielding a new initial state.
  external void Advance(num alpha);

  /// Normalize an angle in radians to be between -pi and pi
  /// (actually 0 and 2*pi)
  external void Normalize();
}

@JS("box2d.b2ControllerEdge")
class b2ControllerEdge {
  // @Ignore
  b2ControllerEdge.fakeConstructor$();

  /// A controller edge is used to connect bodies and controllers
  /// together in a bipartite graph.
  external factory b2ControllerEdge();
  external b2Controller get controller;
  external set controller(b2Controller v);
  external b2Body get body;
  external set body(b2Body v);
  external b2ControllerEdge get prevBody;
  external set prevBody(b2ControllerEdge v);
  external b2ControllerEdge get nextBody;
  external set nextBody(b2ControllerEdge v);
  external b2ControllerEdge get prevController;
  external set prevController(b2ControllerEdge v);
  external b2ControllerEdge get nextController;
  external set nextController(b2ControllerEdge v);
}

@JS("box2d.b2Controller")
class b2Controller {
  // @Ignore
  b2Controller.fakeConstructor$();

  /// Base class for controllers. Controllers are a convience for
  /// encapsulating common per-step functionality.
  external factory b2Controller();
  external b2World get m_world;
  external set m_world(b2World v);
  external b2ControllerEdge get m_bodyList;
  external set m_bodyList(b2ControllerEdge v);
  external num get m_bodyCount;
  external set m_bodyCount(num v);
  external b2Controller get m_prev;
  external set m_prev(b2Controller v);
  external b2Controller get m_next;
  external set m_next(b2Controller v);

  /// Controllers override this to implement per-step
  /// functionality.
  external void Step(b2TimeStep step);

  /// Controllers override this to provide debug drawing.
  external void Draw(b2Draw debugDraw);

  /// Get the next controller in the world's body list.
  external b2Controller GetNext();

  /// Get the previous controller in the world's body list.
  external b2Controller GetPrev();

  /// Get the parent world of this body.
  external b2World GetWorld();

  /// Get the attached body list
  external b2ControllerEdge GetBodyList();

  /// Adds a body to the controller list.
  external void AddBody(b2Body body);

  /// Removes a body from the controller list.
  external void RemoveBody(b2Body body);

  /// Removes all bodies from the controller list.
  external void Clear();
}

@JS("box2d.b2ConstantAccelController")
class b2ConstantAccelController extends b2Controller {
  // @Ignore
  b2ConstantAccelController.fakeConstructor$() : super.fakeConstructor$();

  /// Applies a force every frame
  external factory b2ConstantAccelController();

  /// The acceleration to apply
  external b2Vec2 get A;
  external set A(b2Vec2 v);
  external void Step(b2TimeStep step);

  /// The force to apply
  external b2Vec2 get F;
  external set F(b2Vec2 v);
}

@JS("box2d.b2Jacobian")
class b2Jacobian {
  // @Ignore
  b2Jacobian.fakeConstructor$();
  external factory b2Jacobian();
  external b2Vec2 get linear;
  external set linear(b2Vec2 v);
  external num get angularA;
  external set angularA(num v);
  external num get angularB;
  external set angularB(num v);
  external b2Jacobian SetZero();
  external b2Jacobian Set(b2Vec2 x, num a1, num a2);
}

@JS("box2d.b2JointEdge")
class b2JointEdge {
  // @Ignore
  b2JointEdge.fakeConstructor$();

  /// A joint edge is used to connect bodies and joints together in
  /// a joint graph where each body is a node and each joint is an
  /// edge. A joint edge belongs to a doubly linked list maintained
  /// in each attached body. Each joint has two joint nodes, one
  /// for each attached body.
  external factory b2JointEdge();
  external b2Body get other;
  external set other(b2Body v);
  external b2Joint get joint;
  external set joint(b2Joint v);
  external b2JointEdge get prev;
  external set prev(b2JointEdge v);
  external b2JointEdge get next;
  external set next(b2JointEdge v);
}

@JS("box2d.b2JointDef")
class b2JointDef {
  // @Ignore
  b2JointDef.fakeConstructor$();

  /// Joint definitions are used to construct joints.
  external factory b2JointDef(num /*enum b2JointType*/ type);

  /// The joint type is set automatically for concrete joint types.
  external num /*enum b2JointType*/ get type;
  external set type(num /*enum b2JointType*/ v);

  /// Use this to attach application specific data to your joints.
  external dynamic get userData;
  external set userData(dynamic v);

  /// The first attached body.
  external b2Body get bodyA;
  external set bodyA(b2Body v);

  /// The second attached body.
  external b2Body get bodyB;
  external set bodyB(b2Body v);

  /// Set this flag to true if the attached bodies should collide.
  external bool get collideConnected;
  external set collideConnected(bool v);
}

@JS("box2d.b2Joint")
class b2Joint {
  // @Ignore
  b2Joint.fakeConstructor$();

  /// The base joint class. Joints are used to constraint two
  /// bodies together in various fashions. Some joints also feature
  /// limits and motors.
  external factory b2Joint();
  external num /*enum b2JointType*/ get m_type;
  external set m_type(num /*enum b2JointType*/ v);
  external b2Joint get m_prev;
  external set m_prev(b2Joint v);
  external b2Joint get m_next;
  external set m_next(b2Joint v);
  external b2JointEdge get m_edgeA;
  external set m_edgeA(b2JointEdge v);
  external b2JointEdge get m_edgeB;
  external set m_edgeB(b2JointEdge v);
  external b2Body get m_bodyA;
  external set m_bodyA(b2Body v);
  external b2Body get m_bodyB;
  external set m_bodyB(b2Body v);
  external num get m_index;
  external set m_index(num v);
  external bool get m_islandFlag;
  external set m_islandFlag(bool v);
  external bool get m_collideConnected;
  external set m_collideConnected(bool v);
  external dynamic get m_userData;
  external set m_userData(dynamic v);

  /// Get the anchor point on bodyA in world coordinates.
  external b2Vec2 GetAnchorA(b2Vec2 out);

  /// Get the anchor point on bodyB in world coordinates.
  external b2Vec2 GetAnchorB(b2Vec2 out);

  /// Get the reaction force on bodyB at the joint anchor in
  /// Newtons.
  external b2Vec2 GetReactionForce(num inv_dt, b2Vec2 out);

  /// Get the reaction torque on bodyB in N*m.
  external num GetReactionTorque(num inv_dt);
  external void InitVelocityConstraints(b2SolverData data);
  external void SolveVelocityConstraints(b2SolverData data);

  /// This returns true if the position errors are within
  /// tolerance.
  external bool SolvePositionConstraints(b2SolverData data);

  /// Get the type of the concrete joint.
  external num /*enum b2JointType*/ GetType();

  /// Get the first body attached to this joint.
  external b2Body GetBodyA();

  /// Get the second body attached to this joint.
  external b2Body GetBodyB();

  /// Get the next joint the world joint list.
  external b2Joint GetNext();

  /// Get the user data pointer.
  external dynamic GetUserData();

  /// Set the user data pointer.
  external void SetUserData(dynamic data);

  /// Get collide connected.
  /// Note: modifying the collide connect flag won't work correctly
  /// because the flag is only checked when fixture AABBs begin to
  /// overlap.
  external bool GetCollideConnected();

  /// Dump this joint to the log file.
  external void Dump();

  /// Short-cut function to determine if either body is inactive.
  external bool IsActive();

  /// Shift the origin for any points stored in world coordinates.
  external void ShiftOrigin(b2Vec2 newOrigin);
}

@JS("box2d.b2RevoluteJointDef")
class b2RevoluteJointDef extends b2JointDef {
  // @Ignore
  b2RevoluteJointDef.fakeConstructor$() : super.fakeConstructor$();

  /// Revolute joint definition. This requires defining an anchor
  /// point where the bodies are joined. The definition uses local
  /// anchor points so that the initial configuration can violate
  /// the constraint slightly. You also need to specify the initial
  /// relative angle for joint limits. This helps when saving and
  /// loading a game.
  /// The local anchor points are measured from the body's origin
  /// rather than the center of mass because:
  /// 1. you might not know where the center of mass will be.
  /// 2. if you add/remove shapes from a body and recompute the
  /// mass, the joints will be broken.
  external factory b2RevoluteJointDef();

  /// The local anchor point relative to bodyA's origin.
  external b2Vec2 get localAnchorA;
  external set localAnchorA(b2Vec2 v);

  /// The local anchor point relative to bodyB's origin.
  external b2Vec2 get localAnchorB;
  external set localAnchorB(b2Vec2 v);

  /// The bodyB angle minus bodyA angle in the reference state
  /// (radians).
  external num get referenceAngle;
  external set referenceAngle(num v);

  /// A flag to enable joint limits.
  external bool get enableLimit;
  external set enableLimit(bool v);

  /// The lower angle for the joint limit (radians).
  external num get lowerAngle;
  external set lowerAngle(num v);

  /// The upper angle for the joint limit (radians).
  external num get upperAngle;
  external set upperAngle(num v);

  /// A flag to enable the joint motor.
  external bool get enableMotor;
  external set enableMotor(bool v);

  /// The desired motor speed. Usually in radians per second.
  external num get motorSpeed;
  external set motorSpeed(num v);

  /// The maximum motor torque used to achieve the desired motor
  /// speed.
  /// Usually in N-m.
  external num get maxMotorTorque;
  external set maxMotorTorque(num v);
  external void Initialize(b2Body bA, b2Body bB, b2Vec2 anchor);
}

@JS("box2d.b2RevoluteJoint")
class b2RevoluteJoint extends b2Joint {
  // @Ignore
  b2RevoluteJoint.fakeConstructor$() : super.fakeConstructor$();

  /// A revolute joint constrains two bodies to share a common
  /// point while they are free to rotate about the point. The
  /// relative rotation about the shared point is the joint angle.
  /// You can limit the relative rotation with a joint limit that
  /// specifies a lower and upper angle. You can use a motor to
  /// drive the relative rotation about the shared point. A maximum
  /// motor torque is provided so that infinite forces are not
  /// generated.
  external factory b2RevoluteJoint(b2RevoluteJointDef def);
  external b2Vec2 get m_localAnchorA;
  external set m_localAnchorA(b2Vec2 v);
  external b2Vec2 get m_localAnchorB;
  external set m_localAnchorB(b2Vec2 v);
  external b2Vec3 get m_impulse;
  external set m_impulse(b2Vec3 v);
  external num get m_motorImpulse;
  external set m_motorImpulse(num v);
  external bool get m_enableMotor;
  external set m_enableMotor(bool v);
  external num get m_maxMotorTorque;
  external set m_maxMotorTorque(num v);
  external num get m_motorSpeed;
  external set m_motorSpeed(num v);
  external bool get m_enableLimit;
  external set m_enableLimit(bool v);
  external num get m_referenceAngle;
  external set m_referenceAngle(num v);
  external num get m_lowerAngle;
  external set m_lowerAngle(num v);
  external num get m_upperAngle;
  external set m_upperAngle(num v);
  external num get m_indexA;
  external set m_indexA(num v);
  external num get m_indexB;
  external set m_indexB(num v);
  external b2Vec2 get m_rA;
  external set m_rA(b2Vec2 v);
  external b2Vec2 get m_rB;
  external set m_rB(b2Vec2 v);
  external b2Vec2 get m_localCenterA;
  external set m_localCenterA(b2Vec2 v);
  external b2Vec2 get m_localCenterB;
  external set m_localCenterB(b2Vec2 v);
  external num get m_invMassA;
  external set m_invMassA(num v);
  external num get m_invMassB;
  external set m_invMassB(num v);
  external num get m_invIA;
  external set m_invIA(num v);
  external num get m_invIB;
  external set m_invIB(num v);
  external b2Mat33 get m_mass;
  external set m_mass(b2Mat33 v);
  external num get m_motorMass;
  external set m_motorMass(num v);
  external num /*enum b2LimitState*/ get m_limitState;
  external set m_limitState(num /*enum b2LimitState*/ v);
  external b2Rot get m_qA;
  external set m_qA(b2Rot v);
  external b2Rot get m_qB;
  external set m_qB(b2Rot v);
  external b2Vec2 get m_lalcA;
  external set m_lalcA(b2Vec2 v);
  external b2Vec2 get m_lalcB;
  external set m_lalcB(b2Vec2 v);
  external b2Mat22 get m_K;
  external set m_K(b2Mat22 v);
  external void InitVelocityConstraints(b2SolverData data);
  external void SolveVelocityConstraints(b2SolverData data);
  external bool SolvePositionConstraints(b2SolverData data);
  external b2Vec2 GetAnchorA(b2Vec2 out);
  external b2Vec2 GetAnchorB(b2Vec2 out);

  /// Get the reaction force given the inverse time step.
  /// Unit is N.
  external b2Vec2 GetReactionForce(num inv_dt, b2Vec2 out);

  /// Get the reaction torque due to the joint limit given the
  /// inverse time step.
  /// Unit is N*m.
  external num GetReactionTorque(num inv_dt);

  /// The local anchor point relative to bodyA's origin.
  external b2Vec2 GetLocalAnchorA(b2Vec2 out);

  /// The local anchor point relative to bodyB's origin.
  external b2Vec2 GetLocalAnchorB([b2Vec2 out]);

  /// Get the reference angle.
  external num GetReferenceAngle();
  external num GetJointAngleRadians();
  external num GetJointSpeed();
  external bool IsMotorEnabled();
  external void EnableMotor(bool flag);

  /// Get the current motor torque given the inverse time step.
  /// Unit is N*m.
  external num GetMotorTorque(num inv_dt);
  external num GetMotorSpeed();
  external void SetMaxMotorTorque(num torque);
  external num GetMaxMotorTorque();
  external bool IsLimitEnabled();
  external void EnableLimit(bool flag);
  external num GetLowerLimit();
  external num GetUpperLimit();
  external void SetLimits(num lower, num upper);
  external void SetMotorSpeed(num speed);

  /// Dump to b2Log.
  external void Dump();
}

@JS("box2d.b2PrismaticJointDef")
class b2PrismaticJointDef extends b2JointDef {
  // @Ignore
  b2PrismaticJointDef.fakeConstructor$() : super.fakeConstructor$();

  /// Prismatic joint definition. This requires defining a line of
  /// motion using an axis and an anchor point. The definition uses
  /// local anchor points and a local axis so that the initial
  /// configuration can violate the constraint slightly. The joint
  /// translation is zero when the local anchor points coincide in
  /// world space. Using local anchors and a local axis helps when
  /// saving and loading a game.
  external factory b2PrismaticJointDef();

  /// The local anchor point relative to bodyA's origin.
  external b2Vec2 get localAnchorA;
  external set localAnchorA(b2Vec2 v);

  /// The local anchor point relative to bodyB's origin.
  external b2Vec2 get localAnchorB;
  external set localAnchorB(b2Vec2 v);

  /// The local translation unit axis in bodyA.
  external b2Vec2 get localAxisA;
  external set localAxisA(b2Vec2 v);

  /// The constrained angle between the bodies: bodyB_angle -
  /// bodyA_angle.
  external num get referenceAngle;
  external set referenceAngle(num v);

  /// Enable/disable the joint limit.
  external bool get enableLimit;
  external set enableLimit(bool v);

  /// The lower translation limit, usually in meters.
  external num get lowerTranslation;
  external set lowerTranslation(num v);

  /// The upper translation limit, usually in meters.
  external num get upperTranslation;
  external set upperTranslation(num v);

  /// Enable/disable the joint motor.
  external bool get enableMotor;
  external set enableMotor(bool v);

  /// The maximum motor torque, usually in N-m.
  external num get maxMotorForce;
  external set maxMotorForce(num v);

  /// The desired motor speed in radians per second.
  external num get motorSpeed;
  external set motorSpeed(num v);

  /// Initialize the bodies, anchors, axis, and reference angle
  /// using the world anchor and unit world axis.
  external void Initialize(b2Body bA, b2Body bB, b2Vec2 anchor, b2Vec2 axis);
}

@JS("box2d.b2PrismaticJoint")
class b2PrismaticJoint extends b2Joint {
  // @Ignore
  b2PrismaticJoint.fakeConstructor$() : super.fakeConstructor$();

  /// A prismatic joint. This joint provides one degree of freedom:
  /// translation along an axis fixed in bodyA. Relative rotation
  /// is prevented. You can use a joint limit to restrict the range
  /// of motion and a joint motor to drive the motion or to model
  /// joint friction.
  external factory b2PrismaticJoint(b2PrismaticJointDef def);
  external b2Vec2 get m_localAnchorA;
  external set m_localAnchorA(b2Vec2 v);
  external b2Vec2 get m_localAnchorB;
  external set m_localAnchorB(b2Vec2 v);
  external b2Vec2 get m_localXAxisA;
  external set m_localXAxisA(b2Vec2 v);
  external b2Vec2 get m_localYAxisA;
  external set m_localYAxisA(b2Vec2 v);
  external num get m_referenceAngle;
  external set m_referenceAngle(num v);
  external b2Vec3 get m_impulse;
  external set m_impulse(b2Vec3 v);
  external num get m_motorImpulse;
  external set m_motorImpulse(num v);
  external num get m_lowerTranslation;
  external set m_lowerTranslation(num v);
  external num get m_upperTranslation;
  external set m_upperTranslation(num v);
  external num get m_maxMotorForce;
  external set m_maxMotorForce(num v);
  external num get m_motorSpeed;
  external set m_motorSpeed(num v);
  external bool get m_enableLimit;
  external set m_enableLimit(bool v);
  external bool get m_enableMotor;
  external set m_enableMotor(bool v);
  external num /*enum b2LimitState*/ get m_limitState;
  external set m_limitState(num /*enum b2LimitState*/ v);
  external num get m_indexA;
  external set m_indexA(num v);
  external num get m_indexB;
  external set m_indexB(num v);
  external b2Vec2 get m_localCenterA;
  external set m_localCenterA(b2Vec2 v);
  external b2Vec2 get m_localCenterB;
  external set m_localCenterB(b2Vec2 v);
  external num get m_invMassA;
  external set m_invMassA(num v);
  external num get m_invMassB;
  external set m_invMassB(num v);
  external num get m_invIA;
  external set m_invIA(num v);
  external num get m_invIB;
  external set m_invIB(num v);
  external b2Vec2 get m_axis;
  external set m_axis(b2Vec2 v);
  external b2Vec2 get m_perp;
  external set m_perp(b2Vec2 v);
  external num get m_s1;
  external set m_s1(num v);
  external num get m_s2;
  external set m_s2(num v);
  external num get m_a1;
  external set m_a1(num v);
  external num get m_a2;
  external set m_a2(num v);
  external b2Mat33 get m_K;
  external set m_K(b2Mat33 v);
  external b2Mat33 get m_K3;
  external set m_K3(b2Mat33 v);
  external b2Mat22 get m_K2;
  external set m_K2(b2Mat22 v);
  external num get m_motorMass;
  external set m_motorMass(num v);
  external b2Rot get m_qA;
  external set m_qA(b2Rot v);
  external b2Rot get m_qB;
  external set m_qB(b2Rot v);
  external b2Vec2 get m_lalcA;
  external set m_lalcA(b2Vec2 v);
  external b2Vec2 get m_lalcB;
  external set m_lalcB(b2Vec2 v);
  external b2Vec2 get m_rA;
  external set m_rA(b2Vec2 v);
  external b2Vec2 get m_rB;
  external set m_rB(b2Vec2 v);
  external void InitVelocityConstraints(b2SolverData data);
  external void SolveVelocityConstraints(b2SolverData data);
  external bool SolvePositionConstraints(b2SolverData data);
  external b2Vec2 GetAnchorA(b2Vec2 out);
  external b2Vec2 GetAnchorB(b2Vec2 out);
  external b2Vec2 GetReactionForce(num inv_dt, b2Vec2 out);
  external num GetReactionTorque(num inv_dt);

  /// The local anchor point relative to bodyA's origin.
  external b2Vec2 GetLocalAnchorA(b2Vec2 out);

  /// The local anchor point relative to bodyB's origin.
  external b2Vec2 GetLocalAnchorB(b2Vec2 out);

  /// The local joint axis relative to bodyA.
  external b2Vec2 GetLocalAxisA(b2Vec2 out);

  /// Get the reference angle.
  external num GetReferenceAngle();
  external num GetJointTranslation();
  external num GetJointSpeed();
  external bool IsLimitEnabled();
  external void EnableLimit(bool flag);
  external num GetLowerLimit();
  external num GetUpperLimit();
  external void SetLimits(num upper, num lower);
  external bool IsMotorEnabled();
  external void EnableMotor(bool flag);
  external void SetMotorSpeed(num speed);
  external num GetMotorSpeed();
  external void SetMaxMotorForce(num force);
  external num GetMaxMotorForce();
  external num GetMotorForce(num inv_dt);

  /// Dump to b2Log
  external void Dump();
}

@JS("box2d.b2GearJointDef")
class b2GearJointDef extends b2JointDef {
  // @Ignore
  b2GearJointDef.fakeConstructor$() : super.fakeConstructor$();

  /// Gear joint definition. This definition requires two existing
  /// revolute or prismatic joints (any combination will work).
  external factory b2GearJointDef();

  /// The first revolute/prismatic joint attached to the gear
  /// joint.
  external b2Joint get joint1;
  external set joint1(b2Joint v);

  /// The second revolute/prismatic joint attached to the gear
  /// joint.
  external b2Joint get joint2;
  external set joint2(b2Joint v);

  /// The gear ratio.
  external num get ratio;
  external set ratio(num v);
}

@JS("box2d.b2GearJoint")
class b2GearJoint extends b2Joint {
  // @Ignore
  b2GearJoint.fakeConstructor$() : super.fakeConstructor$();

  /// A gear joint is used to connect two joints together. Either
  /// joint can be a revolute or prismatic joint. You specify a
  /// gear ratio to bind the motions together:
  /// coordinateA + ratio * coordinateB = constant
  /// The ratio can be negative or positive. If one joint is a
  /// revolute joint and the other joint is a prismatic joint, then
  /// the ratio will have units of length or units of 1/length.
  /// warning You have to manually destroy the gear joint if jointA
  /// or jointB is destroyed.
  external factory b2GearJoint(b2GearJointDef def);
  external b2Joint get m_joint1;
  external set m_joint1(b2Joint v);
  external b2Joint get m_joint2;
  external set m_joint2(b2Joint v);
  external num /*enum b2JointType*/ get m_typeA;
  external set m_typeA(num /*enum b2JointType*/ v);
  external num /*enum b2JointType*/ get m_typeB;
  external set m_typeB(num /*enum b2JointType*/ v);
  external b2Body get m_bodyC;
  external set m_bodyC(b2Body v);
  external b2Body get m_bodyD;
  external set m_bodyD(b2Body v);
  external b2Vec2 get m_localAnchorA;
  external set m_localAnchorA(b2Vec2 v);
  external b2Vec2 get m_localAnchorB;
  external set m_localAnchorB(b2Vec2 v);
  external b2Vec2 get m_localAnchorC;
  external set m_localAnchorC(b2Vec2 v);
  external b2Vec2 get m_localAnchorD;
  external set m_localAnchorD(b2Vec2 v);
  external b2Vec2 get m_localAxisC;
  external set m_localAxisC(b2Vec2 v);
  external b2Vec2 get m_localAxisD;
  external set m_localAxisD(b2Vec2 v);
  external num get m_referenceAngleA;
  external set m_referenceAngleA(num v);
  external num get m_referenceAngleB;
  external set m_referenceAngleB(num v);
  external num get m_constant;
  external set m_constant(num v);
  external num get m_ratio;
  external set m_ratio(num v);
  external num get m_impulse;
  external set m_impulse(num v);
  external num get m_indexA;
  external set m_indexA(num v);
  external num get m_indexB;
  external set m_indexB(num v);
  external num get m_indexC;
  external set m_indexC(num v);
  external num get m_indexD;
  external set m_indexD(num v);
  external b2Vec2 get m_lcA;
  external set m_lcA(b2Vec2 v);
  external b2Vec2 get m_lcB;
  external set m_lcB(b2Vec2 v);
  external b2Vec2 get m_lcC;
  external set m_lcC(b2Vec2 v);
  external b2Vec2 get m_lcD;
  external set m_lcD(b2Vec2 v);
  external num get m_mA;
  external set m_mA(num v);
  external num get m_mB;
  external set m_mB(num v);
  external num get m_mC;
  external set m_mC(num v);
  external num get m_mD;
  external set m_mD(num v);
  external num get m_iA;
  external set m_iA(num v);
  external num get m_iB;
  external set m_iB(num v);
  external num get m_iC;
  external set m_iC(num v);
  external num get m_iD;
  external set m_iD(num v);
  external b2Vec2 get m_JvAC;
  external set m_JvAC(b2Vec2 v);
  external b2Vec2 get m_JvBD;
  external set m_JvBD(b2Vec2 v);
  external num get m_JwA;
  external set m_JwA(num v);
  external num get m_JwB;
  external set m_JwB(num v);
  external num get m_JwC;
  external set m_JwC(num v);
  external num get m_JwD;
  external set m_JwD(num v);
  external num get m_mass;
  external set m_mass(num v);
  external b2Rot get m_qA;
  external set m_qA(b2Rot v);
  external b2Rot get m_qB;
  external set m_qB(b2Rot v);
  external b2Rot get m_qC;
  external set m_qC(b2Rot v);
  external b2Rot get m_qD;
  external set m_qD(b2Rot v);
  external b2Vec2 get m_lalcA;
  external set m_lalcA(b2Vec2 v);
  external b2Vec2 get m_lalcB;
  external set m_lalcB(b2Vec2 v);
  external b2Vec2 get m_lalcC;
  external set m_lalcC(b2Vec2 v);
  external b2Vec2 get m_lalcD;
  external set m_lalcD(b2Vec2 v);
  external void InitVelocityConstraints(b2SolverData data);
  external void SolveVelocityConstraints(b2SolverData data);
  external bool SolvePositionConstraints(b2SolverData data);
  external b2Vec2 GetAnchorA(b2Vec2 out);
  external b2Vec2 GetAnchorB(b2Vec2 out);
  external b2Vec2 GetReactionForce(num inv_dt, b2Vec2 out);
  external num GetReactionTorque(num inv_dt);

  /// Get the first joint.
  external b2Joint GetJoint1();

  /// Get the second joint.
  external b2Joint GetJoint2();
  external num GetRatio();
  external void SetRatio(num ratio);

  /// Dump joint to dmLog
  external void Dump();
}

@JS("box2d.b2DistanceProxy")
class b2DistanceProxy {
  // @Ignore
  b2DistanceProxy.fakeConstructor$();

  /// A distance proxy is used by the GJK algorithm.
  /// It encapsulates any shape.
  external factory b2DistanceProxy();
  external List<b2Vec2> get m_buffer;
  external set m_buffer(List<b2Vec2> v);
  external List<b2Vec2> get m_vertices;
  external set m_vertices(List<b2Vec2> v);
  external num get m_count;
  external set m_count(num v);
  external num get m_radius;
  external set m_radius(num v);
  external b2DistanceProxy Reset();

  /// Initialize the proxy using the given shape. The shape must
  /// remain in scope while the proxy is in use.
  external void SetShape(b2Shape shape, num index);

  /// Get the supporting vertex index in the given direction.
  external num GetSupport(b2Vec2 d);

  /// Get the supporting vertex in the given direction.
  external b2Vec2 GetSupportVertex(b2Vec2 d, b2Vec2 out);

  /// Get the vertex count.
  external num GetVertexCount();

  /// Get a vertex by index. Used by box2d.b2Distance.
  external b2Vec2 GetVertex(num index);
}

@JS("box2d.b2SimplexCache")
class b2SimplexCache {
  // @Ignore
  b2SimplexCache.fakeConstructor$();

  /// Used to warm start box2d.b2Distance.
  /// Set count to zero on first call.
  external factory b2SimplexCache();
  external num get metric;
  external set metric(num v);
  external num get count;
  external set count(num v);
  external List<num> get indexA;
  external set indexA(List<num> v);
  external List<num> get indexB;
  external set indexB(List<num> v);
  external b2SimplexCache Reset();
}

@JS("box2d.b2DistanceInput")
class b2DistanceInput {
  // @Ignore
  b2DistanceInput.fakeConstructor$();

  /// Input for box2d.b2Distance.
  /// You have to option to use the shape radii in the computation.
  external factory b2DistanceInput();
  external b2DistanceProxy get proxyA;
  external set proxyA(b2DistanceProxy v);
  external b2DistanceProxy get proxyB;
  external set proxyB(b2DistanceProxy v);
  external b2Transform get transformA;
  external set transformA(b2Transform v);
  external b2Transform get transformB;
  external set transformB(b2Transform v);
  external bool get useRadii;
  external set useRadii(bool v);
  external b2DistanceInput Reset();
}

@JS("box2d.b2DistanceOutput")
class b2DistanceOutput {
  // @Ignore
  b2DistanceOutput.fakeConstructor$();

  /// Output for box2d.b2Distance.
  external factory b2DistanceOutput();
  external b2Vec2 get pointA;
  external set pointA(b2Vec2 v);
  external b2Vec2 get pointB;
  external set pointB(b2Vec2 v);
  external num get distance;
  external set distance(num v);
  external num get iterations;
  external set iterations(num v);
  external b2DistanceOutput Reset();
}

@JS("box2d.b2SimplexVertex")
class b2SimplexVertex {
  // @Ignore
  b2SimplexVertex.fakeConstructor$();
  external factory b2SimplexVertex();
  external b2Vec2 get wA;
  external set wA(b2Vec2 v);
  external b2Vec2 get wB;
  external set wB(b2Vec2 v);
  external b2Vec2 get w;
  external set w(b2Vec2 v);
  external num get a;
  external set a(num v);
  external num get indexA;
  external set indexA(num v);
  external num get indexB;
  external set indexB(num v);
  external b2SimplexVertex Copy(b2SimplexVertex other);
}

@JS("box2d.b2Simplex")
class b2Simplex {
  // @Ignore
  b2Simplex.fakeConstructor$();
  external factory b2Simplex();
  external b2SimplexVertex get m_v1;
  external set m_v1(b2SimplexVertex v);
  external b2SimplexVertex get m_v2;
  external set m_v2(b2SimplexVertex v);
  external b2SimplexVertex get m_v3;
  external set m_v3(b2SimplexVertex v);
  external List<b2SimplexVertex> get m_vertices;
  external set m_vertices(List<b2SimplexVertex> v);
  external num get m_count;
  external set m_count(num v);
  external void ReadCache(b2SimplexCache cache, b2DistanceProxy proxyA,
      b2Transform transformA, b2DistanceProxy proxyB, b2Transform transformB);
  external void WriteCache(b2SimplexCache cache);
  external b2Vec2 GetSearchDirection(b2Vec2 out);
  external b2Vec2 GetClosestPoint(b2Vec2 out);
  external void GetWitnessPoints(b2Vec2 pA, b2Vec2 pB);
  external num GetMetric();

  /// Solve a line segment using barycentric coordinates.
  /// p = a1 * w1 + a2 * w2
  /// a1 + a2 = 1
  /// The vector from the origin to the closest point on the line is
  /// perpendicular to the line.
  /// e12 = w2 - w1
  /// dot(p, e) = 0
  /// a1 * dot(w1, e) + a2 * dot(w2, e) = 0
  /// 2-by-2 linear system
  /// [1      1     ][a1] = [1]
  /// [w1.e12 w2.e12][a2] = [0]
  /// Define
  /// d12_1 =  dot(w2, e12)
  /// d12_2 = -dot(w1, e12)
  /// d12 = d12_1 + d12_2
  /// Solution
  /// a1 = d12_1 / d12
  /// a2 = d12_2 / d12
  external void Solve2();

  /// Possible regions:
  /// - points[2]
  /// - edge points[0]-points[2]
  /// - edge points[1]-points[2]
  /// - inside the triangle
  external void Solve3();
}

@JS("box2d.b2WeldJointDef")
class b2WeldJointDef extends b2JointDef {
  // @Ignore
  b2WeldJointDef.fakeConstructor$() : super.fakeConstructor$();

  /// Weld joint definition. You need to specify local anchor
  /// points where they are attached and the relative body angle.
  /// The position of the anchor points is important for computing
  /// the reaction torque.
  external factory b2WeldJointDef();

  /// The local anchor point relative to bodyA's origin.
  external b2Vec2 get localAnchorA;
  external set localAnchorA(b2Vec2 v);

  /// The local anchor point relative to bodyB's origin.
  external b2Vec2 get localAnchorB;
  external set localAnchorB(b2Vec2 v);

  /// The bodyB angle minus bodyA angle in the reference state
  /// (radians).
  external num get referenceAngle;
  external set referenceAngle(num v);

  /// The mass-spring-damper frequency in Hertz. Rotation only.
  /// Disable softness with a value of 0.
  external num get frequencyHz;
  external set frequencyHz(num v);

  /// The damping ratio. 0 = no damping, 1 = critical damping.
  external num get dampingRatio;
  external set dampingRatio(num v);
  external void Initialize(b2Body bA, b2Body bB, b2Vec2 anchor);
}

@JS("box2d.b2WeldJoint")
class b2WeldJoint extends b2Joint {
  // @Ignore
  b2WeldJoint.fakeConstructor$() : super.fakeConstructor$();

  /// A weld joint essentially glues two bodies together. A weld
  /// joint may distort somewhat because the island constraint
  /// solver is approximate.
  external factory b2WeldJoint(b2WeldJointDef def);
  external num get m_frequencyHz;
  external set m_frequencyHz(num v);
  external num get m_dampingRatio;
  external set m_dampingRatio(num v);
  external num get m_bias;
  external set m_bias(num v);
  external b2Vec2 get m_localAnchorA;
  external set m_localAnchorA(b2Vec2 v);
  external b2Vec2 get m_localAnchorB;
  external set m_localAnchorB(b2Vec2 v);
  external num get m_referenceAngle;
  external set m_referenceAngle(num v);
  external num get m_gamma;
  external set m_gamma(num v);
  external b2Vec3 get m_impulse;
  external set m_impulse(b2Vec3 v);
  external num get m_indexA;
  external set m_indexA(num v);
  external num get m_indexB;
  external set m_indexB(num v);
  external b2Vec2 get m_rA;
  external set m_rA(b2Vec2 v);
  external b2Vec2 get m_rB;
  external set m_rB(b2Vec2 v);
  external b2Vec2 get m_localCenterA;
  external set m_localCenterA(b2Vec2 v);
  external b2Vec2 get m_localCenterB;
  external set m_localCenterB(b2Vec2 v);
  external num get m_invMassA;
  external set m_invMassA(num v);
  external num get m_invMassB;
  external set m_invMassB(num v);
  external num get m_invIA;
  external set m_invIA(num v);
  external num get m_invIB;
  external set m_invIB(num v);
  external b2Mat33 get m_mass;
  external set m_mass(b2Mat33 v);
  external b2Rot get m_qA;
  external set m_qA(b2Rot v);
  external b2Rot get m_qB;
  external set m_qB(b2Rot v);
  external b2Vec2 get m_lalcA;
  external set m_lalcA(b2Vec2 v);
  external b2Vec2 get m_lalcB;
  external set m_lalcB(b2Vec2 v);
  external b2Mat33 get m_K;
  external set m_K(b2Mat33 v);
  external void InitVelocityConstraints(b2SolverData data);
  external void SolveVelocityConstraints(b2SolverData data);
  external bool SolvePositionConstraints(b2SolverData data);
  external b2Vec2 GetAnchorA(b2Vec2 out);
  external b2Vec2 GetAnchorB(b2Vec2 out);
  external b2Vec2 GetReactionForce(num inv_dt, b2Vec2 out);
  external num GetReactionTorque(num inv_dt);

  /// The local anchor point relative to bodyA's origin.
  external b2Vec2 GetLocalAnchorA(b2Vec2 out);

  /// The local anchor point relative to bodyB's origin.
  external b2Vec2 GetLocalAnchorB(b2Vec2 out);

  /// Get the reference angle.
  external num GetReferenceAngle();

  /// Set/get frequency in Hz.
  external void SetFrequency(num hz);
  external num GetFrequency();

  /// Set/get damping ratio.
  external void SetDampingRatio(num ratio);
  external num GetDampingRatio();

  /// Dump to b2Log
  external void Dump();
}

@JS("box2d.b2RopeJointDef")
class b2RopeJointDef extends b2JointDef {
  // @Ignore
  b2RopeJointDef.fakeConstructor$() : super.fakeConstructor$();

  /// Rope joint definition. This requires two body anchor points
  /// and a maximum lengths.
  /// Note: by default the connected objects will not collide. see
  /// collideConnected in box2d.b2JointDef.
  external factory b2RopeJointDef();

  /// The local anchor point relative to bodyA's origin.
  external b2Vec2 get localAnchorA;
  external set localAnchorA(b2Vec2 v);

  /// The local anchor point relative to bodyB's origin.
  external b2Vec2 get localAnchorB;
  external set localAnchorB(b2Vec2 v);

  /// The maximum length of the rope.
  /// Warning: this must be larger than box2d.b2_linearSlop or the
  /// joint will have no effect.
  external num get maxLength;
  external set maxLength(num v);
}

@JS("box2d.b2RopeJoint")
class b2RopeJoint extends b2Joint {
  // @Ignore
  b2RopeJoint.fakeConstructor$() : super.fakeConstructor$();

  /// A rope joint enforces a maximum distance between two points
  /// on two bodies. It has no other effect.
  /// Warning: if you attempt to change the maximum length during
  /// the simulation you will get some non-physical behavior. A
  /// model that would allow you to dynamically modify the length
  /// would have some sponginess, so I chose not to implement it
  /// that way. See box2d.b2DistanceJoint if you want to
  /// dynamically control length.
  external factory b2RopeJoint(b2RopeJointDef def);
  external b2Vec2 get m_localAnchorA;
  external set m_localAnchorA(b2Vec2 v);
  external b2Vec2 get m_localAnchorB;
  external set m_localAnchorB(b2Vec2 v);
  external num get m_maxLength;
  external set m_maxLength(num v);
  external num get m_length;
  external set m_length(num v);
  external num get m_impulse;
  external set m_impulse(num v);
  external num get m_indexA;
  external set m_indexA(num v);
  external num get m_indexB;
  external set m_indexB(num v);
  external b2Vec2 get m_u;
  external set m_u(b2Vec2 v);
  external b2Vec2 get m_rA;
  external set m_rA(b2Vec2 v);
  external b2Vec2 get m_rB;
  external set m_rB(b2Vec2 v);
  external b2Vec2 get m_localCenterA;
  external set m_localCenterA(b2Vec2 v);
  external b2Vec2 get m_localCenterB;
  external set m_localCenterB(b2Vec2 v);
  external num get m_invMassA;
  external set m_invMassA(num v);
  external num get m_invMassB;
  external set m_invMassB(num v);
  external num get m_invIA;
  external set m_invIA(num v);
  external num get m_invIB;
  external set m_invIB(num v);
  external num get m_mass;
  external set m_mass(num v);
  external num /*enum b2LimitState*/ get m_state;
  external set m_state(num /*enum b2LimitState*/ v);
  external b2Rot get m_qA;
  external set m_qA(b2Rot v);
  external b2Rot get m_qB;
  external set m_qB(b2Rot v);
  external b2Vec2 get m_lalcA;
  external set m_lalcA(b2Vec2 v);
  external b2Vec2 get m_lalcB;
  external set m_lalcB(b2Vec2 v);
  external void InitVelocityConstraints(b2SolverData data);
  external void SolveVelocityConstraints(b2SolverData data);
  external bool SolvePositionConstraints(b2SolverData data);
  external b2Vec2 GetAnchorA(b2Vec2 out);
  external b2Vec2 GetAnchorB(b2Vec2 out);
  external b2Vec2 GetReactionForce(num inv_dt, b2Vec2 out);
  external num GetReactionTorque(num inv_dt);

  /// The local anchor point relative to bodyA's origin.
  external b2Vec2 GetLocalAnchorA(b2Vec2 out);

  /// The local anchor point relative to bodyB's origin.
  external b2Vec2 GetLocalAnchorB(b2Vec2 out);

  /// Set/Get the maximum length of the rope.
  external void SetMaxLength(num length);
  external num GetMaxLength();
  external num /*enum b2LimitState*/ GetLimitState();

  /// Dump joint to dmLog
  external void Dump();
}

@JS("box2d.b2GravityController")
class b2GravityController extends b2Controller {
  // @Ignore
  b2GravityController.fakeConstructor$() : super.fakeConstructor$();

  /// Applies simplified gravity between every pair of bodies
  external factory b2GravityController();

  /// Specifies the strength of the gravitiation force
  external num get G;
  external set G(num v);

  /// If true, gravity is proportional to r^-2, otherwise r^-1
  external bool get invSqr;
  external set invSqr(bool v);
  external void Step(b2TimeStep step);
}

@JS("box2d.b2Profile")
class b2Profile {
  // @Ignore
  b2Profile.fakeConstructor$();

  /// Profiling data. Times are in milliseconds.
  external factory b2Profile();
  external num get step;
  external set step(num v);
  external num get collide;
  external set collide(num v);
  external num get solve;
  external set solve(num v);
  external num get solveInit;
  external set solveInit(num v);
  external num get solveVelocity;
  external set solveVelocity(num v);
  external num get solvePosition;
  external set solvePosition(num v);
  external num get broadphase;
  external set broadphase(num v);
  external num get solveTOI;
  external set solveTOI(num v);
  external b2Profile Reset();
}

@JS("box2d.b2TimeStep")
class b2TimeStep {
  // @Ignore
  b2TimeStep.fakeConstructor$();

  /// This is an internal structure.
  external factory b2TimeStep();
  external num get dt;
  external set dt(num v);
  external num get inv_dt;
  external set inv_dt(num v);
  external num get dtRatio;
  external set dtRatio(num v);
  external num get velocityIterations;
  external set velocityIterations(num v);
  external num get positionIterations;
  external set positionIterations(num v);
  external bool get warmStarting;
  external set warmStarting(bool v);
  external b2TimeStep Copy(b2TimeStep step);
}

@JS("box2d.b2Position")
class b2Position {
  // @Ignore
  b2Position.fakeConstructor$();

  /// This is an internal structure.
  external factory b2Position();
  external b2Vec2 get c;
  external set c(b2Vec2 v);
  external num get a;
  external set a(num v);
  external static List<b2Position> MakeArray(num length);
}

@JS("box2d.b2Velocity")
class b2Velocity {
  // @Ignore
  b2Velocity.fakeConstructor$();

  /// This is an internal structure.
  external factory b2Velocity();
  external b2Vec2 get v;
  external set v(b2Vec2 v);
  external num get w;
  external set w(num v);
  external static List<b2Velocity> MakeArray(num length);
}

@JS("box2d.b2SolverData")
class b2SolverData {
  // @Ignore
  b2SolverData.fakeConstructor$();

  /// Solver Data
  external factory b2SolverData();
  external b2TimeStep get step;
  external set step(b2TimeStep v);
  external List<b2Position> get positions;
  external set positions(List<b2Position> v);
  external List<b2Velocity> get velocities;
  external set velocities(List<b2Velocity> v);
}

@JS("box2d.b2ContactFeature")
class b2ContactFeature {
  // @Ignore
  b2ContactFeature.fakeConstructor$();

  /// The features that intersect to form the contact point
  /// This must be 4 bytes or less.
  external factory b2ContactFeature(b2ContactID id);
  external b2ContactID get JS$_id;
  external set JS$_id(b2ContactID v);
  external num get JS$_indexA;
  external set JS$_indexA(num v);
  external num get JS$_indexB;
  external set JS$_indexB(num v);
  external num get JS$_typeA;
  external set JS$_typeA(num v);
  external num get JS$_typeB;
  external set JS$_typeB(num v);
  external num get indexA;
  external set indexA(num v);
  external num get indexB;
  external set indexB(num v);
  external num get typeA;
  external set typeA(num v);
  external num get typeB;
  external set typeB(num v);
}

@JS("box2d.b2ContactID")
class b2ContactID {
  // @Ignore
  b2ContactID.fakeConstructor$();

  /// Contact ids to facilitate warm starting.
  external factory b2ContactID();
  external b2ContactFeature get cf;
  external set cf(b2ContactFeature v);
  external num get key;
  external set key(num v);
  external b2ContactID Copy(b2ContactID o);
  external b2ContactID Clone();
}

@JS("box2d.b2ManifoldPoint")
class b2ManifoldPoint {
  // @Ignore
  b2ManifoldPoint.fakeConstructor$();

  /// A manifold point is a contact point belonging to a contact
  /// manifold. It holds details related to the geometry and dynamics
  /// of the contact points.
  /// The local point usage depends on the manifold type:
  /// -e_circles: the local center of circleB
  /// -e_faceA: the local center of cirlceB or the clip point of polygonB
  /// -e_faceB: the clip point of polygonA
  /// This structure is stored across time steps, so we keep it small.
  /// Note: the impulses are used for internal caching and may not
  /// provide reliable contact forces, especially for high speed collisions.
  external factory b2ManifoldPoint();
  external b2Vec2 get localPoint;
  external set localPoint(b2Vec2 v);
  external num get normalImpulse;
  external set normalImpulse(num v);
  external num get tangentImpulse;
  external set tangentImpulse(num v);
  external b2ContactID get id;
  external set id(b2ContactID v);
  external static List<b2ManifoldPoint> MakeArray(num length);
  external void Reset();
  external b2ManifoldPoint Copy(b2ManifoldPoint o);
}

@JS("box2d.b2Manifold")
class b2Manifold {
  // @Ignore
  b2Manifold.fakeConstructor$();

  /// A manifold for two touching convex shapes.
  /// Box2D supports multiple types of contact:
  /// - clip point versus plane with radius
  /// - point versus point with radius (circles)
  /// The local point usage depends on the manifold type:
  /// -e_circles: the local center of circleA
  /// -e_faceA: the center of faceA
  /// -e_faceB: the center of faceB
  /// Similarly the local normal usage:
  /// -e_circles: not used
  /// -e_faceA: the normal on polygonA
  /// -e_faceB: the normal on polygonB
  /// We store contacts in this way so that position correction can
  /// account for movement, which is critical for continuous physics.
  /// All contact scenarios must be expressed in one of these types.
  /// This structure is stored across time steps, so we keep it small.
  external factory b2Manifold();
  external List<b2ManifoldPoint> get points;
  external set points(List<b2ManifoldPoint> v);
  external b2Vec2 get localNormal;
  external set localNormal(b2Vec2 v);
  external b2Vec2 get localPoint;
  external set localPoint(b2Vec2 v);
  external num /*enum b2ManifoldType*/ get type;
  external set type(num /*enum b2ManifoldType*/ v);
  external num get pointCount;
  external set pointCount(num v);
  external void Reset();
  external b2Manifold Copy(b2Manifold o);
  external b2Manifold Clone();
}

@JS("box2d.b2WorldManifold")
class b2WorldManifold {
  // @Ignore
  b2WorldManifold.fakeConstructor$();

  /// This is used to compute the current state of a contact
  /// manifold.
  external factory b2WorldManifold();
  external b2Vec2 get normal;
  external set normal(b2Vec2 v);
  external List<b2Vec2> get points;
  external set points(List<b2Vec2> v);
  external List<num> get separations;
  external set separations(List<num> v);

  /// Evaluate the manifold with supplied transforms. This assumes
  /// modest motion from the original state. This does not change
  /// the point count, impulses, etc. The radii must come from the
  /// shapes that generated the manifold.
  external void Initialize(b2Manifold manifold, b2Transform xfA, num radiusA,
      b2Transform xfB, num radiusB);
}

@JS("box2d.b2ClipVertex")
class b2ClipVertex {
  // @Ignore
  b2ClipVertex.fakeConstructor$();

  /// Used for computing contact manifolds.
  external factory b2ClipVertex();
  external b2Vec2 get v;
  external set v(b2Vec2 v);
  external b2ContactID get id;
  external set id(b2ContactID v);
  external static List<b2ClipVertex> MakeArray([num length]);
  external b2ClipVertex Copy(b2ClipVertex other);
}

@JS("box2d.b2RayCastInput")
class b2RayCastInput {
  // @Ignore
  b2RayCastInput.fakeConstructor$();

  /// Ray-cast input data. The ray extends from p1 to p1 +
  /// maxFraction * (p2 - p1).
  external factory b2RayCastInput();
  external b2Vec2 get p1;
  external set p1(b2Vec2 v);
  external b2Vec2 get p2;
  external set p2(b2Vec2 v);
  external num get maxFraction;
  external set maxFraction(num v);
  external b2RayCastInput Copy(b2RayCastInput o);
}

@JS("box2d.b2RayCastOutput")
class b2RayCastOutput {
  // @Ignore
  b2RayCastOutput.fakeConstructor$();

  /// Ray-cast output data. The ray hits at p1 + fraction * (p2 -
  /// p1), where p1 and p2 come from box2d.b2RayCastInput.
  external factory b2RayCastOutput();
  external b2Vec2 get normal;
  external set normal(b2Vec2 v);
  external num get fraction;
  external set fraction(num v);
  external b2RayCastOutput Copy(b2RayCastOutput o);
}

@JS("box2d.b2AABB")
class b2AABB {
  // @Ignore
  b2AABB.fakeConstructor$();

  /// An axis aligned bounding box.
  external factory b2AABB();
  external b2Vec2 get lowerBound;
  external set lowerBound(b2Vec2 v);
  external b2Vec2 get upperBound;
  external set upperBound(b2Vec2 v);
  external b2Vec2 get m_out_center;
  external set m_out_center(b2Vec2 v);
  external b2Vec2 get m_out_extent;
  external set m_out_extent(b2Vec2 v);
  external b2AABB Copy(b2AABB o);

  /// Verify that the bounds are sorted.
  external bool IsValid();

  /// Get the center of the AABB.
  external b2Vec2 GetCenter();

  /// Get the extents of the AABB (half-widths).
  external b2Vec2 GetExtents();

  /// Get the perimeter length
  external num GetPerimeter();

  /// Combine an AABB into this one.
  external b2AABB Combine1(b2AABB aabb);

  /// Combine two AABBs into this one.
  external b2AABB Combine2(b2AABB aabb1, b2AABB aabb2);
  external static b2AABB Combine(b2AABB aabb1, b2AABB aabb2, b2AABB out);

  /// Does this aabb contain the provided AABB.
  external bool Contains(b2AABB aabb);

  /// From Real-time Collision Detection, p179.
  external bool RayCast(b2RayCastOutput output, b2RayCastInput input);
  external bool TestOverlap(b2AABB other);
}

@JS("box2d.b2Timer")
class b2Timer {
  // @Ignore
  b2Timer.fakeConstructor$();

  /// Timer for profiling. This has platform specific code and may
  /// not work on every platform.
  external factory b2Timer();
  external num get m_start;
  external set m_start(num v);
  external b2Timer Reset();
  external num GetMilliseconds();
}

@JS("box2d.b2Counter")
class b2Counter {
  // @Ignore
  b2Counter.fakeConstructor$();
  external factory b2Counter();
  external num get m_count;
  external set m_count(num v);
  external num get m_min_count;
  external set m_min_count(num v);
  external num get m_max_count;
  external set m_max_count(num v);
  external num GetCount();
  external num GetMinCount();
  external num GetMaxCount();
  external num ResetCount();
  external void ResetMinCount();
  external void ResetMaxCount();
  external void Increment();
  external void Decrement();
}

@JS("box2d.b2TOIInput")
class b2TOIInput {
  // @Ignore
  b2TOIInput.fakeConstructor$();

  /// Input parameters for b2TimeOfImpact
  external factory b2TOIInput();
  external b2DistanceProxy get proxyA;
  external set proxyA(b2DistanceProxy v);
  external b2DistanceProxy get proxyB;
  external set proxyB(b2DistanceProxy v);
  external b2Sweep get sweepA;
  external set sweepA(b2Sweep v);
  external b2Sweep get sweepB;
  external set sweepB(b2Sweep v);
  external num get tMax;
  external set tMax(num v);
}

@JS("box2d.b2TOIOutput")
class b2TOIOutput {
  // @Ignore
  b2TOIOutput.fakeConstructor$();

  /// Output parameters for b2TimeOfImpact.
  external factory b2TOIOutput();
  external num /*enum b2TOIOutputState*/ get state;
  external set state(num /*enum b2TOIOutputState*/ v);
  external num get t;
  external set t(num v);
}

@JS("box2d.b2SeparationFunction")
class b2SeparationFunction {
  // @Ignore
  b2SeparationFunction.fakeConstructor$();
  external factory b2SeparationFunction();
  external b2DistanceProxy get m_proxyA;
  external set m_proxyA(b2DistanceProxy v);
  external b2DistanceProxy get m_proxyB;
  external set m_proxyB(b2DistanceProxy v);
  external b2Sweep get m_sweepA;
  external set m_sweepA(b2Sweep v);
  external b2Sweep get m_sweepB;
  external set m_sweepB(b2Sweep v);
  external num /*enum b2SeparationFunctionType*/ get m_type;
  external set m_type(num /*enum b2SeparationFunctionType*/ v);
  external b2Vec2 get m_localPoint;
  external set m_localPoint(b2Vec2 v);
  external b2Vec2 get m_axis;
  external set m_axis(b2Vec2 v);

  /// TODO_ERIN might not need to return the separation
  external num Initialize(b2SimplexCache cache, b2DistanceProxy proxyA,
      b2Sweep sweepA, b2DistanceProxy proxyB, b2Sweep sweepB, num t1);
  external num FindMinSeparation(List<num> indexA, List<num> indexB, num t);
  external num Evaluate(num indexA, num indexB, num t);
}

@JS("box2d.b2ContactEdge")
class b2ContactEdge {
  // @Ignore
  b2ContactEdge.fakeConstructor$();

  /// A contact edge is used to connect bodies and contacts
  /// together in a contact graph where each body is a node and
  /// each contact is an edge. A contact edge belongs to a doubly
  /// linked list maintained in each attached body. Each contact
  /// has two contact nodes, one for each attached body.
  external factory b2ContactEdge();
  external b2Body get other;
  external set other(b2Body v);
  external b2Contact get contact;
  external set contact(b2Contact v);
  external b2ContactEdge get prev;
  external set prev(b2ContactEdge v);
  external b2ContactEdge get next;
  external set next(b2ContactEdge v);
}

@JS("box2d.b2Contact")
class b2Contact {
  // @Ignore
  b2Contact.fakeConstructor$();

  /// The class manages contact between two shapes. A contact
  /// exists for each overlapping AABB in the broad-phase (except
  /// if filtered). Therefore a contact object may exist that has
  /// no contact points.
  external factory b2Contact();
  external num /*enum b2ContactFlag*/ get m_flags;
  external set m_flags(num /*enum b2ContactFlag*/ v);

  /// World pool and list pointers.
  external b2Contact get m_prev;
  external set m_prev(b2Contact v);
  external b2Contact get m_next;
  external set m_next(b2Contact v);

  /// Nodes for connecting bodies.
  external b2ContactEdge get m_nodeA;
  external set m_nodeA(b2ContactEdge v);
  external b2ContactEdge get m_nodeB;
  external set m_nodeB(b2ContactEdge v);
  external b2Fixture get m_fixtureA;
  external set m_fixtureA(b2Fixture v);
  external b2Fixture get m_fixtureB;
  external set m_fixtureB(b2Fixture v);
  external num get m_indexA;
  external set m_indexA(num v);
  external num get m_indexB;
  external set m_indexB(num v);
  external b2Manifold get m_manifold;
  external set m_manifold(b2Manifold v);
  external num get m_toiCount;
  external set m_toiCount(num v);
  external num get m_toi;
  external set m_toi(num v);
  external num get m_friction;
  external set m_friction(num v);
  external num get m_restitution;
  external set m_restitution(num v);
  external num get m_tangentSpeed;
  external set m_tangentSpeed(num v);
  external b2Manifold get m_oldManifold;
  external set m_oldManifold(b2Manifold v);

  /// Get the contact manifold. Do not modify the manifold unless
  /// you understand the internals of Box2D.
  external b2Manifold GetManifold();

  /// Get the world manifold.
  external void GetWorldManifold(b2WorldManifold worldManifold);

  /// Is this contact touching?
  external bool IsTouching();

  /// Enable/disable this contact. This can be used inside the
  /// pre-solve contact listener. The contact is only disabled for
  /// the current time step (or sub-step in continuous collisions).
  external void SetEnabled(bool flag);

  /// Has this contact been disabled?
  external bool IsEnabled();

  /// Get the next contact in the world's contact list.
  external b2Contact GetNext();

  /// Get fixture A in this contact.
  external b2Fixture GetFixtureA();
  external num GetChildIndexA();

  /// Get fixture B in this contact.
  external b2Fixture GetFixtureB();
  external num GetChildIndexB();

  /// Evaluate this contact with your own manifold and transforms.
  external void Evaluate(b2Manifold manifold, b2Transform xfA, b2Transform xfB);

  /// Flag this contact for filtering. Filtering will occur the
  /// next time step.
  external void FlagForFiltering();

  /// Override the default friction mixture. You can call this in
  /// box2d.b2ContactListener::PreSolve.
  /// This value persists until set or reset.
  external void SetFriction(num friction);

  /// Get the friction.
  external num GetFriction();

  /// Reset the friction mixture to the default value.
  external void ResetFriction();

  /// Override the default restitution mixture. You can call this
  /// in box2d.b2ContactListener::PreSolve.
  /// The value persists until you set or reset.
  external void SetRestitution(num restitution);

  /// Get the restitution.
  external num GetRestitution();

  /// Reset the restitution to the default value.
  external void ResetRestitution();

  /// Set the desired tangent speed for a conveyor belt behavior.
  /// In meters per second.
  external void SetTangentSpeed(num speed);

  /// Get the desired tangent speed. In meters per second.
  external num GetTangentSpeed();
  external void Reset(
      b2Fixture fixtureA, num indexA, b2Fixture fixtureB, num indexB);

  /// Update the contact manifold and touching status.
  /// Note: do not assume the fixture AABBs are overlapping or are
  /// valid.
  external void Update(b2ContactListener listener);
  external num ComputeTOI(b2Sweep sweepA, b2Sweep sweepB);
}

@JS("box2d.b2PolygonAndCircleContact")
class b2PolygonAndCircleContact extends b2Contact {
  // @Ignore
  b2PolygonAndCircleContact.fakeConstructor$() : super.fakeConstructor$();
  external factory b2PolygonAndCircleContact();
  external static b2Contact Create(dynamic allocator);
  external static void Destroy(b2Contact contact, dynamic allocator);
  external void Reset(
      b2Fixture fixtureA, num indexA, b2Fixture fixtureB, num indexB);
  external void Evaluate(b2Manifold manifold, b2Transform xfA, b2Transform xfB);
}

@JS("box2d.b2EdgeAndPolygonContact")
class b2EdgeAndPolygonContact extends b2Contact {
  // @Ignore
  b2EdgeAndPolygonContact.fakeConstructor$() : super.fakeConstructor$();
  external factory b2EdgeAndPolygonContact();
  external static b2Contact Create(dynamic allocator);
  external static void Destroy(b2Contact contact, dynamic allocator);
  external void Reset(
      b2Fixture fixtureA, num indexA, b2Fixture fixtureB, num indexB);
  external void Evaluate(b2Manifold manifold, b2Transform xfA, b2Transform xfB);
}

@JS("box2d.b2MassData")
class b2MassData {
  // @Ignore
  b2MassData.fakeConstructor$();

  /// This holds the mass data computed for a shape.
  external factory b2MassData();

  /// The mass of the shape, usually in kilograms.
  external num get mass;
  external set mass(num v);

  /// The position of the shape's centroid relative to the shape's
  /// origin.
  external b2Vec2 get center;
  external set center(b2Vec2 v);

  /// The rotational inertia of the shape about the local origin.
  external num get I;
  external set I(num v);
}

@JS("box2d.b2Shape")
class b2Shape {
  // @Ignore
  b2Shape.fakeConstructor$();

  /// A shape is used for collision detection. You can create a
  /// shape however you like.
  /// Shapes used for simulation in box2d.b2World are created
  /// automatically when a box2d.b2Fixture is created. Shapes may
  /// encapsulate a one or more child shapes.
  external factory b2Shape(num /*enum b2ShapeType*/ type, num radius);
  external num /*enum b2ShapeType*/ get m_type;
  external set m_type(num /*enum b2ShapeType*/ v);
  external num get m_radius;
  external set m_radius(num v);

  /// Clone the concrete shape using the provided allocator.
  external b2Shape Clone();
  external b2Shape Copy(b2Shape other);

  /// Get the type of this shape. You can use this to down cast to
  /// the concrete shape.
  external num /*enum b2ShapeType*/ GetType();

  /// Get the number of child primitives.
  external num GetChildCount();

  /// Test a point for containment in this shape. This only works
  /// for convex shapes.
  external bool TestPoint(b2Transform xf, b2Vec2 p);

  /// Cast a ray against a child shape.
  external bool RayCast(b2RayCastOutput output, b2RayCastInput input,
      b2Transform transform, num childIndex);

  /// Given a transform, compute the associated axis aligned
  /// bounding box for a child shape.
  external void ComputeAABB(b2AABB aabb, b2Transform xf, num childIndex);

  /// Compute the mass properties of this shape using its
  /// dimensions and density.
  /// The inertia tensor is computed about the local origin.
  external void ComputeMass(b2MassData massData, num density);
  external void SetupDistanceProxy(b2DistanceProxy proxy, num index);
  external num ComputeSubmergedArea(
      b2Vec2 normal, num offset, b2Transform xf, b2Vec2 c);

  /// Dump this shape to the log file.
  external void Dump();
}

@JS("box2d.b2PolygonShape")
class b2PolygonShape extends b2Shape {
  // @Ignore
  b2PolygonShape.fakeConstructor$() : super.fakeConstructor$();

  /// A convex polygon. It is assumed that the interior of the
  /// polygon is to the left of each edge.
  /// Polygons have a maximum number of vertices equal to
  /// box2d.b2_maxPolygonVertices. In most cases you should not
  /// need many vertices for a convex polygon.
  external factory b2PolygonShape();
  external b2Vec2 get m_centroid;
  external set m_centroid(b2Vec2 v);
  external List<b2Vec2> get m_vertices;
  external set m_vertices(List<b2Vec2> v);
  external List<b2Vec2> get m_normals;
  external set m_normals(List<b2Vec2> v);
  external num get m_count;
  external set m_count(num v);

  /// Implement box2d.b2Shape.
  external b2Shape Clone();
  external b2Shape Copy(b2Shape other);

  /// Build vertices to represent an axis-aligned box centered on
  /// the local origin.
  external b2PolygonShape SetAsBox(num hx, num hy);

  /// Build vertices to represent an oriented box.
  external b2PolygonShape SetAsOrientedBox(
      num hx, num hy, b2Vec2 center, num angle);

  /// Create a convex hull from the given array of local points.
  /// The count must be in the range [3, b2_maxPolygonVertices].
  /// warning the points may be re-ordered, even if they form a
  /// convex polygon
  /// warning collinear points are handled but not removed.
  /// Collinear points may lead to poor stacking behavior.
  external b2PolygonShape Set(List<b2Vec2> vertices, [num count]);
  external b2PolygonShape SetAsVector(List<b2Vec2> vertices, [num count]);
  external b2PolygonShape SetAsArray(List<b2Vec2> vertices, [num count]);

  /// Implement box2d.b2Shape.
  external num GetChildCount();
  external bool TestPoint(b2Transform xf, b2Vec2 p);

  /// Implement box2d.b2Shape.
  external bool RayCast(b2RayCastOutput output, b2RayCastInput input,
      b2Transform xf, num childIndex);
  external void ComputeAABB(b2AABB aabb, b2Transform xf, num childIndex);
  external void ComputeMass(b2MassData massData, num density);

  /// Validate convexity. This is a very time consuming operation.
  external bool Validate();
  external void SetupDistanceProxy(b2DistanceProxy proxy, num index);
  external num ComputeSubmergedArea(
      b2Vec2 normal, num offset, b2Transform xf, b2Vec2 c);

  /// Dump this shape to the log file.
  external void Dump();
  external static b2Vec2 ComputeCentroid(
      List<b2Vec2> vs, num count, b2Vec2 out);
}

@JS("box2d.b2EPAxis")
class b2EPAxis {
  // @Ignore
  b2EPAxis.fakeConstructor$();

  /// This structure is used to keep track of the best separating
  /// axis.
  external factory b2EPAxis();
  external num /*enum b2EPAxisType*/ get type;
  external set type(num /*enum b2EPAxisType*/ v);
  external num get index;
  external set index(num v);
  external num get separation;
  external set separation(num v);
}

@JS("box2d.b2TempPolygon")
class b2TempPolygon {
  // @Ignore
  b2TempPolygon.fakeConstructor$();

  /// This holds polygon B expressed in frame A.
  external factory b2TempPolygon();
  external List<b2Vec2> get vertices;
  external set vertices(List<b2Vec2> v);
  external List<b2Vec2> get normals;
  external set normals(List<b2Vec2> v);
  external num get count;
  external set count(num v);
}

@JS("box2d.b2ReferenceFace")
class b2ReferenceFace {
  // @Ignore
  b2ReferenceFace.fakeConstructor$();

  /// Reference face used for clipping
  external factory b2ReferenceFace();
  external num get i1;
  external set i1(num v);
  external num get i2;
  external set i2(num v);
  external b2Vec2 get v1;
  external set v1(b2Vec2 v);
  external b2Vec2 get v2;
  external set v2(b2Vec2 v);
  external b2Vec2 get normal;
  external set normal(b2Vec2 v);
  external b2Vec2 get sideNormal1;
  external set sideNormal1(b2Vec2 v);
  external num get sideOffset1;
  external set sideOffset1(num v);
  external b2Vec2 get sideNormal2;
  external set sideNormal2(b2Vec2 v);
  external num get sideOffset2;
  external set sideOffset2(num v);
}

@JS("box2d.b2EPCollider")
class b2EPCollider {
  // @Ignore
  b2EPCollider.fakeConstructor$();

  /// This class collides and edge and a polygon, taking into
  /// account edge adjacency.
  external factory b2EPCollider();
  external b2TempPolygon get m_polygonB;
  external set m_polygonB(b2TempPolygon v);
  external b2Transform get m_xf;
  external set m_xf(b2Transform v);
  external b2Vec2 get m_centroidB;
  external set m_centroidB(b2Vec2 v);
  external b2Vec2 get m_v0;
  external set m_v0(b2Vec2 v);
  external b2Vec2 get m_v1;
  external set m_v1(b2Vec2 v);
  external b2Vec2 get m_v2;
  external set m_v2(b2Vec2 v);
  external b2Vec2 get m_v3;
  external set m_v3(b2Vec2 v);
  external b2Vec2 get m_normal0;
  external set m_normal0(b2Vec2 v);
  external b2Vec2 get m_normal1;
  external set m_normal1(b2Vec2 v);
  external b2Vec2 get m_normal2;
  external set m_normal2(b2Vec2 v);
  external b2Vec2 get m_normal;
  external set m_normal(b2Vec2 v);
  external num /*enum b2EPColliderVertexType*/ get m_type1;
  external set m_type1(num /*enum b2EPColliderVertexType*/ v);
  external num /*enum b2EPColliderVertexType*/ get m_type2;
  external set m_type2(num /*enum b2EPColliderVertexType*/ v);
  external b2Vec2 get m_lowerLimit;
  external set m_lowerLimit(b2Vec2 v);
  external b2Vec2 get m_upperLimit;
  external set m_upperLimit(b2Vec2 v);
  external num get m_radius;
  external set m_radius(num v);
  external bool get m_front;
  external set m_front(bool v);

  /// Algorithm:
  /// 1. Classify v1 and v2
  /// 2. Classify polygon centroid as front or back
  /// 3. Flip normal if necessary
  /// 4. Initialize normal range to [-pi, pi] about face normal
  /// 5. Adjust normal range according to adjacent edges
  /// 6. Visit each separating axes, only accept axes within the range
  /// 7. Return if _any_ axis indicates separation
  /// 8. Clip
  external void Collide(b2Manifold manifold, b2EdgeShape edgeA, b2Transform xfA,
      b2PolygonShape polygonB, b2Transform xfB);
  external b2EPAxis ComputeEdgeSeparation(b2EPAxis out);
  external b2EPAxis ComputePolygonSeparation(b2EPAxis out);
}

@JS("box2d.b2EdgeShape")
class b2EdgeShape extends b2Shape {
  // @Ignore
  b2EdgeShape.fakeConstructor$() : super.fakeConstructor$();

  /// A line segment (edge) shape. These can be connected in chains
  /// or loops to other edge shapes. The connectivity information
  /// is used to ensure correct contact normals.
  external factory b2EdgeShape();

  /// These are the edge vertices
  external b2Vec2 get m_vertex1;
  external set m_vertex1(b2Vec2 v);
  external b2Vec2 get m_vertex2;
  external set m_vertex2(b2Vec2 v);

  /// Optional adjacent vertices. These are used for smooth
  /// collision.
  external b2Vec2 get m_vertex0;
  external set m_vertex0(b2Vec2 v);
  external b2Vec2 get m_vertex3;
  external set m_vertex3(b2Vec2 v);
  external bool get m_hasVertex0;
  external set m_hasVertex0(bool v);
  external bool get m_hasVertex3;
  external set m_hasVertex3(bool v);

  /// Set this as an isolated edge.
  external b2EdgeShape Set(b2Vec2 v1, b2Vec2 v2);

  /// Implement box2d.b2Shape.
  external b2Shape Clone();
  external b2Shape Copy(b2Shape other);
  external num GetChildCount();
  external bool TestPoint(b2Transform xf, b2Vec2 p);

  /// Implement box2d.b2Shape.
  /// p = p1 + t * d
  /// v = v1 + s * e
  /// p1 + t * d = v1 + s * e
  /// s * e - t * d = p1 - v1
  external bool RayCast(b2RayCastOutput output, b2RayCastInput input,
      b2Transform xf, num childIndex);
  external void ComputeAABB(b2AABB aabb, b2Transform xf, num childIndex);
  external void ComputeMass(b2MassData massData, num density);
  external void SetupDistanceProxy(b2DistanceProxy proxy, num index);
  external num ComputeSubmergedArea(
      b2Vec2 normal, num offset, b2Transform xf, b2Vec2 c);

  /// Dump this shape to the log file.
  external void Dump();
}

@JS("box2d.b2ChainShape")
class b2ChainShape extends b2Shape {
  // @Ignore
  b2ChainShape.fakeConstructor$() : super.fakeConstructor$();

  /// A chain shape is a free form sequence of line segments.
  /// The chain has two-sided collision, so you can use inside and outside collision.
  /// Therefore, you may use any winding order.
  /// Since there may be many vertices, they are allocated using b2Alloc.
  /// Connectivity information is used to create smooth collisions.
  /// WARNING: The chain will not collide properly if there are self-intersections.
  external factory b2ChainShape();

  /// The vertices. Owned by this class.
  external List<b2Vec2> get m_vertices;
  external set m_vertices(List<b2Vec2> v);

  /// The vertex count.
  external num get m_count;
  external set m_count(num v);
  external b2Vec2 get m_prevVertex;
  external set m_prevVertex(b2Vec2 v);
  external b2Vec2 get m_nextVertex;
  external set m_nextVertex(b2Vec2 v);
  external bool get m_hasPrevVertex;
  external set m_hasPrevVertex(bool v);
  external bool get m_hasNextVertex;
  external set m_hasNextVertex(bool v);

  /// Create a loop. This automatically adjusts connectivity.
  external b2ChainShape CreateLoop(List<b2Vec2> vertices, [num count]);

  /// Create a chain with isolated end vertices.
  external b2ChainShape CreateChain(List<b2Vec2> vertices, [num count]);

  /// Establish connectivity to a vertex that precedes the first vertex.
  /// Don't call this for loops.
  external b2ChainShape SetPrevVertex(b2Vec2 prevVertex);

  /// Establish connectivity to a vertex that follows the last vertex.
  /// Don't call this for loops.
  external b2ChainShape SetNextVertex(b2Vec2 nextVertex);

  /// Implement box2d.b2Shape. Vertices are cloned using b2Alloc.
  external b2Shape Clone();
  external b2Shape Copy(b2Shape other);
  external num GetChildCount();

  /// Get a child edge.
  external void GetChildEdge(b2EdgeShape edge, num index);

  /// This always return false.
  external bool TestPoint(b2Transform xf, b2Vec2 p);

  /// Implement box2d.b2Shape.
  external bool RayCast(b2RayCastOutput output, b2RayCastInput input,
      b2Transform xf, num childIndex);
  external static b2EdgeShape get s_edgeShape;
  external static set s_edgeShape(b2EdgeShape v);
  external void ComputeAABB(b2AABB aabb, b2Transform xf, num childIndex);
  external void ComputeMass(b2MassData massData, num density);
  external void SetupDistanceProxy(b2DistanceProxy proxy, num index);
  external num ComputeSubmergedArea(
      b2Vec2 normal, num offset, b2Transform xf, b2Vec2 c);

  /// Dump this shape to the log file.
  external void Dump();
}

@JS("box2d.b2ChainAndPolygonContact")
class b2ChainAndPolygonContact extends b2Contact {
  // @Ignore
  b2ChainAndPolygonContact.fakeConstructor$() : super.fakeConstructor$();
  external factory b2ChainAndPolygonContact();
  external static b2Contact Create(dynamic allocator);
  external static void Destroy(b2Contact contact, dynamic allocator);
  external void Reset(
      b2Fixture fixtureA, num indexA, b2Fixture fixtureB, num indexB);
  external void Evaluate(b2Manifold manifold, b2Transform xfA, b2Transform xfB);
}

@JS("box2d.b2PolygonContact")
class b2PolygonContact extends b2Contact {
  // @Ignore
  b2PolygonContact.fakeConstructor$() : super.fakeConstructor$();
  external factory b2PolygonContact();
  external static b2Contact Create(dynamic allocator);
  external static void Destroy(b2Contact contact, dynamic allocator);
  external void Reset(
      b2Fixture fixtureA, num indexA, b2Fixture fixtureB, num indexB);
  external void Evaluate(b2Manifold manifold, b2Transform xfA, b2Transform xfB);
}

@JS("box2d.b2CircleContact")
class b2CircleContact extends b2Contact {
  // @Ignore
  b2CircleContact.fakeConstructor$() : super.fakeConstructor$();
  external factory b2CircleContact();
  external static b2Contact Create(dynamic allocator);
  external static void Destroy(b2Contact contact, dynamic allocator);
  external void Reset(
      b2Fixture fixtureA, num indexA, b2Fixture fixtureB, num indexB);
  external void Evaluate(b2Manifold manifold, b2Transform xfA, b2Transform xfB);
}

@JS("box2d.b2ChainAndCircleContact")
class b2ChainAndCircleContact extends b2Contact {
  // @Ignore
  b2ChainAndCircleContact.fakeConstructor$() : super.fakeConstructor$();
  external factory b2ChainAndCircleContact();
  external static b2Contact Create(dynamic allocator);
  external static void Destroy(b2Contact contact, dynamic allocator);
  external void Reset(
      b2Fixture fixtureA, num indexA, b2Fixture fixtureB, num indexB);
  external void Evaluate(b2Manifold manifold, b2Transform xfA, b2Transform xfB);
}

@JS("box2d.b2EdgeAndCircleContact")
class b2EdgeAndCircleContact extends b2Contact {
  // @Ignore
  b2EdgeAndCircleContact.fakeConstructor$() : super.fakeConstructor$();
  external factory b2EdgeAndCircleContact();
  external static b2Contact Create(dynamic allocator);
  external static void Destroy(b2Contact contact, dynamic allocator);
  external void Reset(
      b2Fixture fixtureA, num indexA, b2Fixture fixtureB, num indexB);
  external void Evaluate(b2Manifold manifold, b2Transform xfA, b2Transform xfB);
}

@JS("box2d.b2VelocityConstraintPoint")
class b2VelocityConstraintPoint {
  // @Ignore
  b2VelocityConstraintPoint.fakeConstructor$();
  external factory b2VelocityConstraintPoint();
  external b2Vec2 get rA;
  external set rA(b2Vec2 v);
  external b2Vec2 get rB;
  external set rB(b2Vec2 v);
  external num get normalImpulse;
  external set normalImpulse(num v);
  external num get tangentImpulse;
  external set tangentImpulse(num v);
  external num get normalMass;
  external set normalMass(num v);
  external num get tangentMass;
  external set tangentMass(num v);
  external num get velocityBias;
  external set velocityBias(num v);
  external static List<b2VelocityConstraintPoint> MakeArray(num length);
}

@JS("box2d.b2ContactVelocityConstraint")
class b2ContactVelocityConstraint {
  // @Ignore
  b2ContactVelocityConstraint.fakeConstructor$();
  external factory b2ContactVelocityConstraint();
  external List<b2VelocityConstraintPoint> get points;
  external set points(List<b2VelocityConstraintPoint> v);
  external b2Vec2 get normal;
  external set normal(b2Vec2 v);
  external b2Vec2 get tangent;
  external set tangent(b2Vec2 v);
  external b2Mat22 get normalMass;
  external set normalMass(b2Mat22 v);
  external b2Mat22 get K;
  external set K(b2Mat22 v);
  external num get indexA;
  external set indexA(num v);
  external num get indexB;
  external set indexB(num v);
  external num get invMassA;
  external set invMassA(num v);
  external num get invMassB;
  external set invMassB(num v);
  external num get invIA;
  external set invIA(num v);
  external num get invIB;
  external set invIB(num v);
  external num get friction;
  external set friction(num v);
  external num get restitution;
  external set restitution(num v);
  external num get tangentSpeed;
  external set tangentSpeed(num v);
  external num get pointCount;
  external set pointCount(num v);
  external num get contactIndex;
  external set contactIndex(num v);
  external static List<b2ContactVelocityConstraint> MakeArray(num length);
}

@JS("box2d.b2ContactPositionConstraint")
class b2ContactPositionConstraint {
  // @Ignore
  b2ContactPositionConstraint.fakeConstructor$();
  external factory b2ContactPositionConstraint();
  external List<b2Vec2> get localPoints;
  external set localPoints(List<b2Vec2> v);
  external b2Vec2 get localNormal;
  external set localNormal(b2Vec2 v);
  external b2Vec2 get localPoint;
  external set localPoint(b2Vec2 v);
  external num get indexA;
  external set indexA(num v);
  external num get indexB;
  external set indexB(num v);
  external num get invMassA;
  external set invMassA(num v);
  external num get invMassB;
  external set invMassB(num v);
  external b2Vec2 get localCenterA;
  external set localCenterA(b2Vec2 v);
  external b2Vec2 get localCenterB;
  external set localCenterB(b2Vec2 v);
  external num get invIA;
  external set invIA(num v);
  external num get invIB;
  external set invIB(num v);
  external num /*enum b2ManifoldType*/ get type;
  external set type(num /*enum b2ManifoldType*/ v);
  external num get radiusA;
  external set radiusA(num v);
  external num get radiusB;
  external set radiusB(num v);
  external num get pointCount;
  external set pointCount(num v);
  external static List<b2ContactPositionConstraint> MakeArray(num length);
}

@JS("box2d.b2ContactSolverDef")
class b2ContactSolverDef {
  // @Ignore
  b2ContactSolverDef.fakeConstructor$();
  external factory b2ContactSolverDef();
  external b2TimeStep get step;
  external set step(b2TimeStep v);
  external List<b2Contact> get contacts;
  external set contacts(List<b2Contact> v);
  external num get count;
  external set count(num v);
  external List<b2Position> get positions;
  external set positions(List<b2Position> v);
  external List<b2Velocity> get velocities;
  external set velocities(List<b2Velocity> v);
  external dynamic get allocator;
  external set allocator(dynamic v);
}

@JS("box2d.b2ContactSolver")
class b2ContactSolver {
  // @Ignore
  b2ContactSolver.fakeConstructor$();
  external factory b2ContactSolver();
  external b2TimeStep get m_step;
  external set m_step(b2TimeStep v);
  external List<b2Position> get m_positions;
  external set m_positions(List<b2Position> v);
  external List<b2Velocity> get m_velocities;
  external set m_velocities(List<b2Velocity> v);
  external dynamic get m_allocator;
  external set m_allocator(dynamic v);
  external List<b2ContactPositionConstraint> get m_positionConstraints;
  external set m_positionConstraints(List<b2ContactPositionConstraint> v);
  external List<b2ContactVelocityConstraint> get m_velocityConstraints;
  external set m_velocityConstraints(List<b2ContactVelocityConstraint> v);
  external List<b2Contact> get m_contacts;
  external set m_contacts(List<b2Contact> v);
  external num get m_count;
  external set m_count(num v);
  external b2ContactSolver Initialize(b2ContactSolverDef def);

  /// Initialize position dependent portions of the velocity
  /// constraints.
  external void InitializeVelocityConstraints();
  external void WarmStart();
  external void SolveVelocityConstraints();
  external void StoreImpulses();

  /// Sequential solver.
  external bool SolvePositionConstraints();

  /// Sequential position solver for position constraints.
  external bool SolveTOIPositionConstraints(num toiIndexA, num toiIndexB);
}

@JS("box2d.b2PositionSolverManifold")
class b2PositionSolverManifold {
  // @Ignore
  b2PositionSolverManifold.fakeConstructor$();
  external factory b2PositionSolverManifold();
  external b2Vec2 get normal;
  external set normal(b2Vec2 v);
  external b2Vec2 get point;
  external set point(b2Vec2 v);
  external num get separation;
  external set separation(num v);
  external void Initialize(b2ContactPositionConstraint pc, b2Transform xfA,
      b2Transform xfB, num index);
}

@JS("box2d.b2DestructionListener")
class b2DestructionListener {
  // @Ignore
  b2DestructionListener.fakeConstructor$();

  /// Joints and fixtures are destroyed when their associated body
  /// is destroyed. Implement this listener so that you may nullify
  /// references to these joints and shapes.
  external factory b2DestructionListener();

  /// Called when any joint is about to be destroyed due to the
  /// destruction of one of its attached bodies.
  external void SayGoodbyeJoint(b2Joint joint);

  /// Called when any fixture is about to be destroyed due to the
  /// destruction of its parent body.
  external void SayGoodbyeFixture(b2Fixture fixture);
}

@JS("box2d.b2ContactFilter")
class b2ContactFilter {
  // @Ignore
  b2ContactFilter.fakeConstructor$();

  /// Implement this class to provide collision filtering. In other
  /// words, you can implement this class if you want finer control
  /// over contact creation.
  external factory b2ContactFilter();

  /// Return true if contact calculations should be performed
  /// between these two shapes.
  /// warning for performance reasons this is only called when the
  /// AABBs begin to overlap.
  external bool ShouldCollide(b2Fixture fixtureA, b2Fixture fixtureB);
}

@JS("box2d.b2ContactImpulse")
class b2ContactImpulse {
  // @Ignore
  b2ContactImpulse.fakeConstructor$();

  /// Contact impulses for reporting. Impulses are used instead of
  /// forces because sub-step forces may approach infinity for
  /// rigid body collisions. These match up one-to-one with the
  /// contact points in b2Manifold.
  external factory b2ContactImpulse();
  external List<num> get normalImpulses;
  external set normalImpulses(List<num> v);
  external List<num> get tangentImpulses;
  external set tangentImpulses(List<num> v);
  external num get count;
  external set count(num v);
}

@JS("box2d.b2ContactListener")
class b2ContactListener {
  // @Ignore
  b2ContactListener.fakeConstructor$();

  /// Implement this class to get contact information. You can use
  /// these results for things like sounds and game logic. You can
  /// also get contact results by traversing the contact lists
  /// after the time step. However, you might miss some contacts
  /// because continuous physics leads to sub-stepping.
  /// Additionally you may receive multiple callbacks for the same
  /// contact in a single time step.
  /// You should strive to make your callbacks efficient because
  /// there may be many callbacks per time step.
  /// warning You cannot create/destroy Box2D entities inside these
  /// callbacks.
  external factory b2ContactListener();

  /// Called when two fixtures begin to touch.
  external void BeginContact(b2Contact contact);

  /// Called when two fixtures cease to touch.
  external void EndContact(b2Contact contact);

  /// This is called after a contact is updated. This allows you to
  /// inspect a contact before it goes to the solver. If you are
  /// careful, you can modify the contact manifold (e.g. disable
  /// contact).
  /// A copy of the old manifold is provided so that you can detect
  /// changes.
  /// Note: this is called only for awake bodies.
  /// Note: this is called even when the number of contact points
  /// is zero.
  /// Note: this is not called for sensors.
  /// Note: if you set the number of contact points to zero, you
  /// will not get an EndContact callback. However, you may get a
  /// BeginContact callback the next step.
  external void PreSolve(b2Contact contact, b2Manifold oldManifold);

  /// This lets you inspect a contact after the solver is finished.
  /// This is useful for inspecting impulses.
  /// Note: the contact manifold does not include time of impact
  /// impulses, which can be arbitrarily large if the sub-step is
  /// small. Hence the impulse is provided explicitly in a separate
  /// data structure.
  /// Note: this is only called for contacts that are touching,
  /// solid, and awake.
  external void PostSolve(b2Contact contact, b2ContactImpulse impulse);
  external static b2ContactListener get b2_defaultListener;
  external static set b2_defaultListener(b2ContactListener v);
}

@JS("box2d.b2QueryCallback")
class b2QueryCallback {
  // @Ignore
  b2QueryCallback.fakeConstructor$();

  /// Callback class for AABB queries.
  /// See b2World::Query
  external factory b2QueryCallback();

  /// Called for each fixture found in the query AABB.
  external bool ReportFixture();
}

@JS("box2d.b2RayCastCallback")
class b2RayCastCallback {
  // @Ignore
  b2RayCastCallback.fakeConstructor$();

  /// Callback class for ray casts.
  /// See b2World::RayCast
  external factory b2RayCastCallback();

  /// Called for each fixture found in the query. You control how
  /// the ray cast proceeds by returning a float:
  /// return -1: ignore this fixture and continue
  /// return 0: terminate the ray cast
  /// return fraction: clip the ray to this point
  /// return 1: don't clip the ray and continue
  /// of intersection
  external num ReportFixture(
      b2Fixture fixture, b2Vec2 point, b2Vec2 normal, num fraction);
}

@JS("box2d.b2Island")
class b2Island {
  // @Ignore
  b2Island.fakeConstructor$();

  /// This is an internal class.
  external factory b2Island();
  external dynamic get m_allocator;
  external set m_allocator(dynamic v);
  external b2ContactListener get m_listener;
  external set m_listener(b2ContactListener v);
  external List<b2Body> get m_bodies;
  external set m_bodies(List<b2Body> v);
  external List<b2Contact> get m_contacts;
  external set m_contacts(List<b2Contact> v);
  external List<b2Joint> get m_joints;
  external set m_joints(List<b2Joint> v);
  external List<b2Position> get m_positions;
  external set m_positions(List<b2Position> v);
  external List<b2Velocity> get m_velocities;
  external set m_velocities(List<b2Velocity> v);
  external num get m_bodyCount;
  external set m_bodyCount(num v);
  external num get m_jointCount;
  external set m_jointCount(num v);
  external num get m_contactCount;
  external set m_contactCount(num v);
  external num get m_bodyCapacity;
  external set m_bodyCapacity(num v);
  external num get m_contactCapacity;
  external set m_contactCapacity(num v);
  external num get m_jointCapacity;
  external set m_jointCapacity(num v);
  external void Initialize(num bodyCapacity, num contactCapacity,
      num jointCapacity, dynamic allocator, b2ContactListener listener);
  external void Clear();
  external void AddBody(b2Body body);
  external void AddContact(b2Contact contact);
  external void AddJoint(b2Joint joint);
  external void Solve(
      b2Profile profile, b2TimeStep step, b2Vec2 gravity, bool allowSleep);
  external void SolveTOI(b2TimeStep subStep, num toiIndexA, num toiIndexB);
  external void Report(List<b2ContactVelocityConstraint> constraints);
}

@JS("box2d.b2ContactRegister")
class b2ContactRegister {
  // @Ignore
  b2ContactRegister.fakeConstructor$();
  external factory b2ContactRegister();
}

@JS("box2d.b2ContactFactory")
class b2ContactFactory {
  // @Ignore
  b2ContactFactory.fakeConstructor$();
  external factory b2ContactFactory(dynamic allocator);
  external void AddType(Function createFcn, Function destroyFcn,
      num /*enum b2ShapeType*/ type1, num /*enum b2ShapeType*/ type2);
  external void InitializeRegisters();
  external b2Contact Create(
      b2Fixture fixtureA, num indexA, b2Fixture fixtureB, num indexB);
  external void Destroy(b2Contact contact);
}

@JS("box2d.b2GrowableStack")
class b2GrowableStack {
  // @Ignore
  b2GrowableStack.fakeConstructor$();

  /// This is a growable LIFO stack with an initial capacity of N.
  /// If the stack size exceeds the initial capacity, the heap is
  /// used to increase the size of the stack.
  external factory b2GrowableStack(num N);
  external List<dynamic> get m_stack;
  external set m_stack(List<dynamic> v);
  external num get m_count;
  external set m_count(num v);
  external b2GrowableStack Reset();
  external void Push(dynamic element);
  external dynamic Pop();
  external num GetCount();
}

@JS("box2d.b2TreeNode")
class b2TreeNode {
  // @Ignore
  b2TreeNode.fakeConstructor$();

  /// A node in the dynamic tree. The client does not interact with
  /// this directly.
  external factory b2TreeNode([num id]);
  external num get m_id;
  external set m_id(num v);

  /// Enlarged AABB
  external b2AABB get aabb;
  external set aabb(b2AABB v);
  external dynamic get userData;
  external set userData(dynamic v);
  external b2TreeNode get parent;
  external set parent(b2TreeNode v);
  external b2TreeNode get child1;
  external set child1(b2TreeNode v);
  external b2TreeNode get child2;
  external set child2(b2TreeNode v);

  /// leaf = 0, free node = -1
  external num get height;
  external set height(num v);
  external bool IsLeaf();
}

@JS("box2d.b2DynamicTree")
class b2DynamicTree {
  // @Ignore
  b2DynamicTree.fakeConstructor$();

  /// A dynamic tree arranges data in a binary tree to accelerate
  /// queries such as volume queries and ray casts. Leafs are proxies
  /// with an AABB. In the tree we expand the proxy AABB by b2_fatAABBFactor
  /// so that the proxy AABB is bigger than the client object. This allows the client
  /// object to move by small amounts without triggering a tree update.
  /// Nodes are pooled and relocatable, so we use node indices rather than pointers.
  external factory b2DynamicTree();
  external b2TreeNode get m_root;
  external set m_root(b2TreeNode v);
  external b2TreeNode get m_freeList;
  external set m_freeList(b2TreeNode v);

  /// This is used to incrementally traverse the tree for
  /// re-balancing.
  external num get m_path;
  external set m_path(num v);
  external num get m_insertionCount;
  external set m_insertionCount(num v);

  /// Get proxy user data.
  external dynamic GetUserData(b2TreeNode proxy);

  /// Get the fat AABB for a proxy.
  external b2AABB GetFatAABB(b2TreeNode proxy);

  /// Query an AABB for overlapping proxies. The callback class is
  /// called for each proxy that overlaps the supplied AABB.
  external void Query(bool callback(b2TreeNode treeNode), b2AABB aabb);

  /// Ray-cast against the proxies in the tree. This relies on the callback
  /// to perform a exact ray-cast in the case were the proxy contains a shape.
  /// The callback also performs the any collision filtering. This has performance
  /// roughly equal to k * log(n), where k is the number of collisions and n is the
  /// number of proxies in the tree.
  external void RayCast(
      num callback(b2RayCastInput raycastInput, b2TreeNode treeNode),
      b2RayCastInput input);
  external b2TreeNode AllocateNode();
  external void FreeNode(b2TreeNode node);

  /// Create a proxy. Provide a tight fitting AABB and a userData
  /// pointer.
  external b2TreeNode CreateProxy(b2AABB aabb, dynamic userData);

  /// Destroy a proxy. This asserts if the id is invalid.
  external void DestroyProxy(b2TreeNode proxy);

  /// Move a proxy with a swepted AABB. If the proxy has moved
  /// outside of its fattened AABB, then the proxy is removed from
  /// the tree and re-inserted. Otherwise the function returns
  /// immediately.
  external bool MoveProxy(b2TreeNode proxy, b2AABB aabb, b2Vec2 displacement);
  external void InsertLeaf(b2TreeNode leaf);
  external void RemoveLeaf(b2TreeNode leaf);

  /// Perform a left or right rotation if node A is imbalanced.
  /// Returns the new root index.
  external b2TreeNode Balance(b2TreeNode A);

  /// Compute the height of the binary tree in O(N) time. Should
  /// not be called often.
  external num GetHeight();

  /// Get the ratio of the sum of the node areas to the root area.
  external num GetAreaRatio();

  /// Compute the height of a sub-tree.
  external num ComputeHeightNode(b2TreeNode node);
  external num ComputeHeight();
  external void ValidateStructure(b2TreeNode index);
  external void ValidateMetrics(b2TreeNode index);

  /// Validate this tree. For testing.
  external void Validate();

  /// Get the maximum balance of an node in the tree. The balance
  /// is the difference in height of the two children of a node.
  external num GetMaxBalance();

  /// Build an optimal tree. Very expensive. For testing.
  external void RebuildBottomUp();

  /// Shift the world origin. Useful for large worlds.
  /// The shift formula is: position -= newOrigin
  external void ShiftOrigin(b2Vec2 newOrigin);
}

@JS("box2d.b2Pair")
class b2Pair {
  // @Ignore
  b2Pair.fakeConstructor$();
  external factory b2Pair();
  external b2TreeNode get proxyA;
  external set proxyA(b2TreeNode v);
  external b2TreeNode get proxyB;
  external set proxyB(b2TreeNode v);
}

@JS("box2d.b2BroadPhase")
class b2BroadPhase {
  // @Ignore
  b2BroadPhase.fakeConstructor$();

  /// The broad-phase is used for computing pairs and performing
  /// volume queries and ray casts. This broad-phase does not
  /// persist pairs. Instead, this reports potentially new pairs.
  /// It is up to the client to consume the new pairs and to track
  /// subsequent overlap.
  external factory b2BroadPhase();
  external b2DynamicTree get m_tree;
  external set m_tree(b2DynamicTree v);
  external num get m_proxyCount;
  external set m_proxyCount(num v);
  external num get m_moveCount;
  external set m_moveCount(num v);
  external List<b2TreeNode> get m_moveBuffer;
  external set m_moveBuffer(List<b2TreeNode> v);
  external num get m_pairCount;
  external set m_pairCount(num v);
  external List<b2Pair> get m_pairBuffer;
  external set m_pairBuffer(List<b2Pair> v);

  /// Create a proxy with an initial AABB. Pairs are not reported
  /// until UpdatePairs is called.
  external b2TreeNode CreateProxy(b2AABB aabb, dynamic userData);

  /// Destroy a proxy. It is up to the client to remove any pairs.
  external void DestroyProxy(b2TreeNode proxy);

  /// Call MoveProxy as many times as you like, then when you are
  /// done call UpdatePairs to finalized the proxy pairs (for your
  /// time step).
  external void MoveProxy(b2TreeNode proxy, b2AABB aabb, b2Vec2 displacement);

  /// Call to trigger a re-processing of it's pairs on the next
  /// call to UpdatePairs.
  external void TouchProxy(b2TreeNode proxy);

  /// Get the fat AABB for a proxy.
  external b2AABB GetFatAABB(b2TreeNode proxy);

  /// Get user data from a proxy. Returns NULL if the id is
  /// invalid.
  external dynamic GetUserData(b2TreeNode proxy);

  /// Test overlap of fat AABBs.
  external bool TestOverlap(b2TreeNode proxyA, b2TreeNode proxyB);

  /// Get the number of proxies.
  external num GetProxyCount();

  /// Get the height of the embedded tree.
  external num GetTreeHeight();

  /// Get the balance of the embedded tree.
  external num GetTreeBalance();

  /// Get the quality metric of the embedded tree.
  external num GetTreeQuality();

  /// Shift the world origin. Useful for large worlds. The shift
  /// formula is: position -= newOrigin
  external void ShiftOrigin(b2Vec2 newOrigin);

  /// Update the pairs. This results in pair callbacks. This can
  /// only add pairs.
  external void UpdatePairs(dynamic contactManager);

  /// Query an AABB for overlapping proxies. The callback class is
  /// called for each proxy that overlaps the supplied AABB.
  external void Query(Function callback, b2AABB aabb);

  /// Ray-cast against the proxies in the tree. This relies on the
  /// callback to perform a exact ray-cast in the case were the
  /// proxy contains a shape. The callback also performs the any
  /// collision filtering. This has performance roughly equal to k
  /// * log(n), where k is the number of collisions and n is the
  /// number of proxies in the tree.
  external void RayCast(Function callback, b2RayCastInput input);
  external void BufferMove(b2TreeNode proxy);
  external void UnBufferMove(b2TreeNode proxy);
}

@JS("box2d.b2ContactManager")
class b2ContactManager {
  // @Ignore
  b2ContactManager.fakeConstructor$();

  /// Delegate of box2d.b2World.
  external factory b2ContactManager();
  external b2BroadPhase get m_broadPhase;
  external set m_broadPhase(b2BroadPhase v);
  external b2Contact get m_contactList;
  external set m_contactList(b2Contact v);
  external num get m_contactCount;
  external set m_contactCount(num v);
  external b2ContactFilter get m_contactFilter;
  external set m_contactFilter(b2ContactFilter v);
  external b2ContactListener get m_contactListener;
  external set m_contactListener(b2ContactListener v);
  external dynamic get m_allocator;
  external set m_allocator(dynamic v);
  external b2ContactFactory get m_contactFactory;
  external set m_contactFactory(b2ContactFactory v);
  external void Destroy(b2Contact c);

  /// This is the top level collision call for the time step. Here
  /// all the narrow phase collision is processed for the world
  /// contact list.
  external void Collide();
  external void FindNewContacts();

  /// Broad-phase callback.
  external void AddPair(
      b2FixtureProxy proxyUserDataA, b2FixtureProxy proxyUserDataB);
}

@JS("box2d.b2JointFactory")
class b2JointFactory {
  // @Ignore
  b2JointFactory.fakeConstructor$();
  external static b2Joint Create(b2JointDef def, dynamic allocator);
  external static void Destroy(b2Joint joint, dynamic allocator);
}

@JS("box2d.b2Color")
class b2Color {
  // @Ignore
  b2Color.fakeConstructor$();

  /// Color for debug drawing. Each value has the range [0,1].
  external factory b2Color(num rr, num gg, num bb);
  external num get r;
  external set r(num v);
  external num get g;
  external set g(num v);
  external num get b;
  external set b(num v);
  external b2Color SetRGB(num rr, num gg, num bb);
  external static String MakeStyleString();
  external static b2Color get RED;
  external static set RED(b2Color v);
  external static b2Color get GREEN;
  external static set GREEN(b2Color v);
  external static b2Color get BLUE;
  external static set BLUE(b2Color v);
}

@JS("box2d.b2Draw")
class b2Draw {
  // @Ignore
  b2Draw.fakeConstructor$();

  /// Implement and register this class with a b2World to provide
  /// debug drawing of physics entities in your game.
  external factory b2Draw();
  external num /*enum b2DrawFlags*/ get m_drawFlags;
  external set m_drawFlags(num /*enum b2DrawFlags*/ v);

  /// Set the drawing flags.
  external void SetFlags(num /*enum b2DrawFlags*/ flags);

  /// Get the drawing flags.
  external num /*enum b2DrawFlags*/ GetFlags();

  /// Append flags to the current flags.
  external void AppendFlags(num /*enum b2DrawFlags*/ flags);

  /// Clear flags from the current flags.
  external void ClearFlags(num /*enum b2DrawFlags*/ flags);
  external void PushTransform(b2Transform xf);
  external void PopTransform(b2Transform xf);

  /// Draw a closed polygon provided in CCW order.
  external void DrawPolygon(
      List<b2Vec2> vertices, num vertexCount, b2Color color);

  /// Draw a solid closed polygon provided in CCW order.
  external void DrawSolidPolygon(
      List<b2Vec2> vertices, num vertexCount, b2Color color);

  /// Draw a circle.
  external void DrawCircle(b2Vec2 center, num radius, b2Color color);

  /// Draw a solid circle.
  external void DrawSolidCircle(
      b2Vec2 center, num radius, b2Vec2 axis, b2Color color);

  /// Draw a line segment.
  external void DrawSegment(b2Vec2 p1, b2Vec2 p2, b2Color color);

  /// Draw a transform. Choose your own length scale.
  external void DrawTransform(b2Transform xf);
}

@JS("box2d.b2Filter")
class b2Filter {
  // @Ignore
  b2Filter.fakeConstructor$();

  /// This holds contact filtering data.
  external factory b2Filter();

  /// The collision category bits. Normally you would just set one
  /// bit.
  external num get categoryBits;
  external set categoryBits(num v);

  /// The collision mask bits. This states the categories that this
  /// shape would accept for collision.
  external num get maskBits;
  external set maskBits(num v);

  /// Collision groups allow a certain group of objects to never
  /// collide (negative) or always collide (positive). Zero means
  /// no collision group. Non-zero group filtering always wins
  /// against the mask bits.
  external num get groupIndex;
  external set groupIndex(num v);
  external b2Filter Clone();
  external b2Filter Copy(b2Filter other);
}

@JS("box2d.b2FixtureDef")
class b2FixtureDef {
  // @Ignore
  b2FixtureDef.fakeConstructor$();

  /// A fixture definition is used to create a fixture. This class
  /// defines an abstract fixture definition. You can reuse fixture
  /// definitions safely.
  external factory b2FixtureDef();

  /// The shape, this must be set. The shape will be cloned, so you
  /// can create the shape on the stack.
  external b2Shape get shape;
  external set shape(b2Shape v);

  /// Use this to store application specific fixture data.
  external dynamic get userData;
  external set userData(dynamic v);

  /// The friction coefficient, usually in the range [0,1].
  external num get friction;
  external set friction(num v);

  /// The restitution (elasticity) usually in the range [0,1].
  external num get restitution;
  external set restitution(num v);

  /// The density, usually in kg/m^2.
  external num get density;
  external set density(num v);

  /// A sensor shape collects contact information but never
  /// generates a collision response.
  external bool get isSensor;
  external set isSensor(bool v);

  /// Contact filtering data.
  external b2Filter get filter;
  external set filter(b2Filter v);
}

@JS("box2d.b2FixtureProxy")
class b2FixtureProxy {
  // @Ignore
  b2FixtureProxy.fakeConstructor$();

  /// This proxy is used internally to connect fixtures to the
  /// broad-phase.
  external factory b2FixtureProxy();
  external b2AABB get aabb;
  external set aabb(b2AABB v);
  external b2Fixture get fixture;
  external set fixture(b2Fixture v);
  external num get childIndex;
  external set childIndex(num v);
  external b2TreeNode get proxy;
  external set proxy(b2TreeNode v);
  external static List<b2FixtureProxy> MakeArray(num length);
}

@JS("box2d.b2Fixture")
class b2Fixture {
  // @Ignore
  b2Fixture.fakeConstructor$();

  /// A fixture is used to attach a shape to a body for collision
  /// detection. A fixture inherits its transform from its parent.
  /// Fixtures hold additional non-geometric data such as friction,
  /// collision filters, etc.
  /// Fixtures are created via box2d.b2Body::CreateFixture.
  /// warning you cannot reuse fixtures.
  external factory b2Fixture();
  external num get m_density;
  external set m_density(num v);
  external b2Fixture get m_next;
  external set m_next(b2Fixture v);
  external b2Body get m_body;
  external set m_body(b2Body v);
  external b2Shape get m_shape;
  external set m_shape(b2Shape v);
  external num get m_friction;
  external set m_friction(num v);
  external num get m_restitution;
  external set m_restitution(num v);
  external List<b2FixtureProxy> get m_proxies;
  external set m_proxies(List<b2FixtureProxy> v);
  external num get m_proxyCount;
  external set m_proxyCount(num v);
  external b2Filter get m_filter;
  external set m_filter(b2Filter v);
  external bool get m_isSensor;
  external set m_isSensor(bool v);
  external dynamic get m_userData;
  external set m_userData(dynamic v);

  /// Get the type of the child shape. You can use this to down
  /// cast to the concrete shape.
  external num /*enum b2ShapeType*/ GetType();

  /// Get the child shape. You can modify the child shape, however
  /// you should not change the number of vertices because this
  /// will crash some collision caching mechanisms.
  /// Manipulating the shape may lead to non-physical behavior.
  external b2Shape GetShape();

  /// Is this fixture a sensor (non-solid)?
  external bool IsSensor();

  /// Get the contact filtering data.
  external b2Filter GetFilterData();

  /// Get the user data that was assigned in the fixture
  /// definition. Use this to store your application specific data.
  external dynamic GetUserData();

  /// Set the user data. Use this to store your application
  /// specific data.
  external void SetUserData(dynamic data);

  /// Get the parent body of this fixture. This is NULL if the
  /// fixture is not attached.
  external b2Body GetBody();

  /// Get the next fixture in the parent body's fixture list.
  external b2Fixture GetNext();

  /// Set the density of this fixture. This will _not_
  /// automatically adjust the mass of the body. You must call
  /// box2d.b2Body::ResetMassData to update the body's mass.
  external void SetDensity(num density);

  /// Get the density of this fixture.
  external num GetDensity();

  /// Get the coefficient of friction.
  external num GetFriction();

  /// Set the coefficient of friction. This will _not_ change the
  /// friction of existing contacts.
  external void SetFriction(num friction);

  /// Get the coefficient of restitution.
  external num GetRestitution();

  /// Set the coefficient of restitution. This will _not_ change
  /// the restitution of existing contacts.
  external void SetRestitution(num restitution);

  /// Test a point for containment in this fixture.
  external bool TestPoint(b2Vec2 p);

  /// Cast a ray against this shape.
  external bool RayCast(
      b2RayCastOutput output, b2RayCastInput input, num childIndex);

  /// Get the mass data for this fixture. The mass data is based on
  /// the density and the shape. The rotational inertia is about
  /// the shape's origin. This operation may be expensive.
  external b2MassData GetMassData([b2MassData massData]);

  /// Get the fixture's AABB. This AABB may be enlarge and/or
  /// stale. If you need a more accurate AABB, compute it using the
  /// shape and the body transform.
  external b2AABB GetAABB(num childIndex);

  /// We need separation create/destroy functions from the
  /// constructor/destructor because the destructor cannot access
  /// the allocator (no destructor arguments allowed by C++).
  external void Create(b2Body body, b2FixtureDef def);
  external void Destroy();

  /// These support body activation/deactivation.
  external void CreateProxies(b2BroadPhase broadPhase, b2Transform xf);
  external void DestroyProxies(b2BroadPhase broadPhase);
  external void Synchronize(
      b2BroadPhase broadPhase, b2Transform transform1, b2Transform transform2);

  /// Set the contact filtering data. This will not update contacts
  /// until the next time step when either parent body is active
  /// and awake.
  /// This automatically calls Refilter.
  external void SetFilterData(b2Filter filter);

  /// Call this if you want to establish collision that was
  /// previously disabled by box2d.b2ContactFilter::ShouldCollide.
  external void Refilter();

  /// Set if this fixture is a sensor.
  external void SetSensor(bool sensor);

  /// Dump this fixture to the log file.
  external void Dump(num bodyIndex);
}

@JS("box2d.b2BodyDef")
class b2BodyDef {
  // @Ignore
  b2BodyDef.fakeConstructor$();

  /// A body definition holds all the data needed to construct a
  /// rigid body.
  /// You can safely re-use body definitions. Shapes are added to a
  /// body after construction.
  external factory b2BodyDef();

  /// The body type: static, kinematic, or dynamic.
  /// Note: if a dynamic body would have zero mass, the mass is set
  /// to one.
  external num /*enum b2BodyType*/ get type;
  external set type(num /*enum b2BodyType*/ v);

  /// The world position of the body. Avoid creating bodies at the
  /// origin since this can lead to many overlapping shapes.
  external b2Vec2 get position;
  external set position(b2Vec2 v);

  /// The world angle of the body in radians.
  external num get angle;
  external set angle(num v);

  /// The linear velocity of the body's origin in world
  /// co-ordinates.
  external b2Vec2 get linearVelocity;
  external set linearVelocity(b2Vec2 v);

  /// The angular velocity of the body.
  external num get angularVelocity;
  external set angularVelocity(num v);

  /// Linear damping is use to reduce the linear velocity. The
  /// damping parameter can be larger than 1.0f but the damping
  /// effect becomes sensitive to the time step when the damping
  /// parameter is large.
  external num get linearDamping;
  external set linearDamping(num v);

  /// Angular damping is use to reduce the angular velocity. The
  /// damping parameter can be larger than 1.0f but the damping
  /// effect becomes sensitive to the time step when the damping
  /// parameter is large.
  external num get angularDamping;
  external set angularDamping(num v);

  /// Set this flag to false if this body should never fall asleep.
  /// Note that this increases CPU usage.
  external bool get allowSleep;
  external set allowSleep(bool v);

  /// Is this body initially awake or sleeping?
  external bool get awake;
  external set awake(bool v);

  /// Should this body be prevented from rotating? Useful for
  /// characters.
  external bool get fixedRotation;
  external set fixedRotation(bool v);

  /// Is this a fast moving body that should be prevented from
  /// tunneling through other moving bodies? Note that all bodies
  /// are prevented from tunneling through kinematic and static
  /// bodies. This setting is only considered on dynamic bodies.
  /// warning You should use this flag sparingly since it increases
  /// processing time.
  external bool get bullet;
  external set bullet(bool v);

  /// Does this body start out active?
  external bool get active;
  external set active(bool v);

  /// Use this to store application specific body data.
  external dynamic get userData;
  external set userData(dynamic v);

  /// Scale the gravity applied to this body.
  external num get gravityScale;
  external set gravityScale(num v);
}

@JS("box2d.b2Body")
class b2Body {
  // @Ignore
  b2Body.fakeConstructor$();

  /// A rigid body. These are created via
  /// box2d.b2World::CreateBody.
  external factory b2Body(b2BodyDef bd, b2World world);
  external num /*enum b2BodyFlag*/ get m_flags;
  external set m_flags(num /*enum b2BodyFlag*/ v);
  external num get m_islandIndex;
  external set m_islandIndex(num v);
  external b2World get m_world;
  external set m_world(b2World v);
  external b2Transform get m_xf;
  external set m_xf(b2Transform v);
  external b2Transform get m_out_xf;
  external set m_out_xf(b2Transform v);
  external b2Sweep get m_sweep;
  external set m_sweep(b2Sweep v);
  external b2Sweep get m_out_sweep;
  external set m_out_sweep(b2Sweep v);
  external b2JointEdge get m_jointList;
  external set m_jointList(b2JointEdge v);
  external b2ContactEdge get m_contactList;
  external set m_contactList(b2ContactEdge v);
  external b2Body get m_prev;
  external set m_prev(b2Body v);
  external b2Body get m_next;
  external set m_next(b2Body v);
  external b2Vec2 get m_linearVelocity;
  external set m_linearVelocity(b2Vec2 v);
  external b2Vec2 get m_out_linearVelocity;
  external set m_out_linearVelocity(b2Vec2 v);
  external num get m_angularVelocity;
  external set m_angularVelocity(num v);
  external num get m_linearDamping;
  external set m_linearDamping(num v);
  external num get m_angularDamping;
  external set m_angularDamping(num v);
  external num get m_gravityScale;
  external set m_gravityScale(num v);
  external b2Vec2 get m_force;
  external set m_force(b2Vec2 v);
  external num get m_torque;
  external set m_torque(num v);
  external num get m_sleepTime;
  external set m_sleepTime(num v);
  external num /*enum b2BodyType*/ get m_type;
  external set m_type(num /*enum b2BodyType*/ v);
  external num get m_mass;
  external set m_mass(num v);
  external num get m_invMass;
  external set m_invMass(num v);
  external num get m_I;
  external set m_I(num v);
  external num get m_invI;
  external set m_invI(num v);
  external dynamic get m_userData;
  external set m_userData(dynamic v);
  external b2Fixture get m_fixtureList;
  external set m_fixtureList(b2Fixture v);
  external num get m_fixtureCount;
  external set m_fixtureCount(num v);
  external b2ControllerEdge get m_controllerList;
  external set m_controllerList(b2ControllerEdge v);
  external num get m_controllerCount;
  external set m_controllerCount(num v);

  /// Creates a fixture and attach it to this body. Use this
  /// function if you need to set some fixture parameters, like
  /// friction. Otherwise you can create the fixture directly from
  /// a shape.
  /// If the density is non-zero, this function automatically
  /// updates the mass of the body. Contacts are not created until
  /// the next time step.
  /// warning This function is locked during callbacks.
  external b2Fixture CreateFixture(b2FixtureDef def);

  /// Creates a fixture from a shape and attach it to this body.
  /// This is a convenience function. Use b2FixtureDef if you need
  /// to set parameters like friction, restitution, user data, or
  /// filtering.
  /// If the density is non-zero, this function automatically
  /// updates the mass of the body.
  /// warning This function is locked during callbacks.
  external b2Fixture CreateFixture2(b2Shape shape, num density);

  /// Destroy a fixture. This removes the fixture from the
  /// broad-phase and destroys all contacts associated with this
  /// fixture. This will automatically adjust the mass of the body
  /// if the body is dynamic and the fixture has positive density.
  /// All fixtures attached to a body are implicitly destroyed when
  /// the body is destroyed.
  /// warning This function is locked during callbacks.
  external void DestroyFixture(b2Fixture fixture);

  /// Set the position of the body's origin and rotation.
  /// Manipulating a body's transform may cause non-physical
  /// behavior.
  /// Note: contacts are updated on the next call to b2World::Step.
  external void SetTransformVecRadians(b2Vec2 position, num angle);
  external void SetTransformXYRadians(num x, num y, num angle);
  external void SetTransform(b2Transform xf);

  /// Get the body transform for the body's origin.
  external b2Transform GetTransform([b2Transform out]);

  /// Get the world body origin position.
  external b2Vec2 GetPosition([b2Vec2 out]);
  external void SetPosition(b2Vec2 position);
  external void SetPositionXY(num x, num y);

  /// Get the angle in radians.
  external num GetAngle();
  external void SetAngle(num angle);

  /// Get the world position of the center of mass.
  external b2Vec2 GetWorldCenter([b2Vec2 out]);

  /// Get the local position of the center of mass.
  external b2Vec2 GetLocalCenter([b2Vec2 out]);

  /// Set the linear velocity of the center of mass.
  external void SetLinearVelocity(b2Vec2 v);

  /// Get the linear velocity of the center of mass.
  external b2Vec2 GetLinearVelocity([b2Vec2 out]);

  /// Set the angular velocity.
  external void SetAngularVelocity(num w);

  /// Get the angular velocity.
  external num GetAngularVelocity();
  external b2BodyDef GetDefinition(b2BodyDef bd);

  /// Apply a force at a world point. If the force is not applied
  /// at the center of mass, it will generate a torque and affect
  /// the angular velocity. This wakes up the body.
  external void ApplyForce(b2Vec2 force, b2Vec2 point, [bool wake]);

  /// Apply a force to the center of mass. This wakes up the body.
  external void ApplyForceToCenter(b2Vec2 force, [bool wake]);

  /// Apply a torque. This affects the angular velocity without
  /// affecting the linear velocity of the center of mass. This
  /// wakes up the body.
  external void ApplyTorque(num torque, [bool wake]);

  /// Apply an impulse at a point. This immediately modifies the
  /// velocity. It also modifies the angular velocity if the point
  /// of application is not at the center of mass. This wakes up
  /// the body.
  external void ApplyLinearImpulse(b2Vec2 impulse, b2Vec2 point, [bool wake]);

  /// Apply an angular impulse.
  external void ApplyAngularImpulse(num impulse, [bool wake]);

  /// Get the total mass of the body.
  external num GetMass();

  /// Get the rotational inertia of the body about the local
  /// origin.
  external num GetInertia();

  /// Get the mass data of the body.
  external b2MassData GetMassData(b2MassData data);

  /// Set the mass properties to override the mass properties of
  /// the fixtures.
  /// Note that this changes the center of mass position.
  /// Note that creating or destroying fixtures can also alter the
  /// mass.
  /// This function has no effect if the body isn't dynamic.
  external void SetMassData(b2MassData massData);

  /// This resets the mass properties to the sum of the mass
  /// properties of the fixtures. This normally does not need to be
  /// called unless you called SetMassData to override the mass and
  /// you later want to reset the mass.
  external void ResetMassData();

  /// Get the world coordinates of a point given the local
  /// coordinates.
  external b2Vec2 GetWorldPoint(b2Vec2 localPoint, b2Vec2 out);

  /// Get the world coordinates of a vector given the local
  /// coordinates.
  external b2Vec2 GetWorldVector(b2Vec2 localVector, b2Vec2 out);

  /// Gets a local point relative to the body's origin given a
  /// world point.
  external b2Vec2 GetLocalPoint(b2Vec2 worldPoint, b2Vec2 out);

  /// Gets a local vector given a world vector.
  external b2Vec2 GetLocalVector(b2Vec2 worldVector, b2Vec2 out);

  /// Get the world linear velocity of a world point attached to
  /// this body.
  external b2Vec2 GetLinearVelocityFromWorldPoint(
      b2Vec2 worldPoint, b2Vec2 out);

  /// Get the world velocity of a local point.
  external b2Vec2 GetLinearVelocityFromLocalPoint(
      b2Vec2 localPoint, b2Vec2 out);

  /// Get the linear damping of the body.
  external num GetLinearDamping();

  /// Set the linear damping of the body.
  external void SetLinearDamping(num linearDamping);

  /// Get the angular damping of the body.
  external num GetAngularDamping();

  /// Set the angular damping of the body.
  external void SetAngularDamping(num angularDamping);

  /// Get the gravity scale of the body.
  external num GetGravityScale();

  /// Set the gravity scale of the body.
  external void SetGravityScale(num scale);

  /// Set the type of this body. This may alter the mass and
  /// velocity.
  external void SetType(num /*enum b2BodyType*/ type);

  /// Get the type of this body.
  external num /*enum b2BodyType*/ GetType();

  /// Should this body be treated like a bullet for continuous
  /// collision detection?
  external void SetBullet(bool flag);

  /// Is this body treated like a bullet for continuous collision
  /// detection?
  external bool IsBullet();

  /// You can disable sleeping on this body. If you disable
  /// sleeping, the body will be woken.
  external void SetSleepingAllowed(bool flag);

  /// Is this body allowed to sleep
  external bool IsSleepingAllowed();

  /// Set the sleep state of the body. A sleeping body has very low CPU cost.
  /// put it to sleep.
  external void SetAwake(bool flag);

  /// Get the sleeping state of this body.
  external bool IsAwake();

  /// Set the active state of the body. An inactive body is not
  /// simulated and cannot be collided with or woken up.
  /// If you pass a flag of true, all fixtures will be added to the
  /// broad-phase.
  /// If you pass a flag of false, all fixtures will be removed from
  /// the broad-phase and all contacts will be destroyed.
  /// Fixtures and joints are otherwise unaffected. You may continue
  /// to create/destroy fixtures and joints on inactive bodies.
  /// Fixtures on an inactive body are implicitly inactive and will
  /// not participate in collisions, ray-casts, or queries.
  /// Joints connected to an inactive body are implicitly inactive.
  /// An inactive body is still owned by a b2World object and remains
  /// in the body list.
  external void SetActive(bool flag);

  /// Get the active state of the body.
  external bool IsActive();

  /// Set this body to have fixed rotation. This causes the mass to
  /// be reset.
  external void SetFixedRotation(bool flag);

  /// Does this body have fixed rotation?
  external bool IsFixedRotation();

  /// Get the list of all fixtures attached to this body.
  external b2Fixture GetFixtureList();

  /// Get the list of all joints attached to this body.
  external b2JointEdge GetJointList();

  /// Get the list of all contacts attached to this body.
  /// warning this list changes during the time step and you may
  /// miss some collisions if you don't use b2ContactListener.
  external b2ContactEdge GetContactList();

  /// Get the next body in the world's body list.
  external b2Body GetNext();

  /// Get the user data pointer that was provided in the body
  /// definition.
  external dynamic GetUserData();

  /// Set the user data. Use this to store your application
  /// specific data.
  external void SetUserData(dynamic data);

  /// Get the parent world of this body.
  external b2World GetWorld();
  external void SynchronizeFixtures();
  external void SynchronizeTransform();

  /// This is used to prevent connected bodies from colliding.
  /// It may lie, depending on the collideConnected flag.
  external bool ShouldCollide(b2Body other);
  external void Advance(num alpha);

  /// Dump this body to a log file
  external void Dump();
  external b2ControllerEdge GetControllerList();
  external num GetControllerCount();
}

@JS("box2d.b2World")
class b2World {
  // @Ignore
  b2World.fakeConstructor$();

  /// Construct a world object.
  external factory b2World(b2Vec2 gravity);
  external num /*enum b2WorldFlag*/ get m_flags;
  external set m_flags(num /*enum b2WorldFlag*/ v);
  external b2ContactManager get m_contactManager;
  external set m_contactManager(b2ContactManager v);
  external b2Body get m_bodyList;
  external set m_bodyList(b2Body v);
  external b2Joint get m_jointList;
  external set m_jointList(b2Joint v);
  external num get m_bodyCount;
  external set m_bodyCount(num v);
  external num get m_jointCount;
  external set m_jointCount(num v);
  external b2Vec2 get m_gravity;
  external set m_gravity(b2Vec2 v);
  external b2Vec2 get m_out_gravity;
  external set m_out_gravity(b2Vec2 v);
  external bool get m_allowSleep;
  external set m_allowSleep(bool v);
  external b2DestructionListener get m_destructionListener;
  external set m_destructionListener(b2DestructionListener v);
  external b2Draw get m_debugDraw;
  external set m_debugDraw(b2Draw v);

  /// This is used to compute the time step ratio to support a
  /// variable time step.
  external num get m_inv_dt0;
  external set m_inv_dt0(num v);

  /// These are for debugging the solver.
  external bool get m_warmStarting;
  external set m_warmStarting(bool v);
  external bool get m_continuousPhysics;
  external set m_continuousPhysics(bool v);
  external bool get m_subStepping;
  external set m_subStepping(bool v);
  external bool get m_stepComplete;
  external set m_stepComplete(bool v);
  external b2Profile get m_profile;
  external set m_profile(b2Profile v);
  external b2Island get m_island;
  external set m_island(b2Island v);
  external List<b2Body> get s_stack;
  external set s_stack(List<b2Body> v);
  external b2Controller get m_controllerList;
  external set m_controllerList(b2Controller v);
  external num get m_controllerCount;
  external set m_controllerCount(num v);

  /// Enable/disable sleep.
  external void SetAllowSleeping(bool flag);
  external bool GetAllowSleeping();

  /// Enable/disable warm starting. For testing.
  external void SetWarmStarting(bool flag);
  external bool GetWarmStarting();

  /// Enable/disable continuous physics. For testing.
  external void SetContinuousPhysics(bool flag);
  external bool GetContinuousPhysics();

  /// Enable/disable single stepped continuous physics. For
  /// testing.
  external void SetSubStepping(bool flag);
  external bool GetSubStepping();

  /// Get the world body list. With the returned body, use
  /// b2Body::GetNext to get the next body in the world list. A
  /// NULL body indicates the end of the list.
  external b2Body GetBodyList();

  /// Get the world joint list. With the returned joint, use
  /// b2Joint::GetNext to get the next joint in the world list. A
  /// NULL joint indicates the end of the list.
  external b2Joint GetJointList();

  /// Get the world contact list. With the returned contact, use
  /// box2d.b2Contact::GetNext to get the next contact in the world
  /// list. A NULL contact indicates the end of the list.
  /// warning contacts are created and destroyed in the middle of a
  /// time step.
  /// Use box2d.b2ContactListener to avoid missing contacts.
  external b2Contact GetContactList();

  /// Get the number of bodies.
  external num GetBodyCount();

  /// Get the number of joints.
  external num GetJointCount();

  /// Get the number of contacts (each may have 0 or more contact
  /// points).
  external num GetContactCount();

  /// Change the global gravity vector.
  external void SetGravity(b2Vec2 gravity, [bool wake]);

  /// Get the global gravity vector.
  external b2Vec2 GetGravity([b2Vec2 out]);

  /// Is the world locked (in the middle of a time step).
  external bool IsLocked();

  /// Set flag to control automatic clearing of forces after each
  /// time step.
  external void SetAutoClearForces(bool flag);

  /// Get the flag that controls automatic clearing of forces after
  /// each time step.
  external bool GetAutoClearForces();

  /// Get the contact manager for testing.
  external b2ContactManager GetContactManager();

  /// Get the current profile.
  external b2Profile GetProfile();

  /// Register a destruction listener. The listener is owned by you
  /// and must remain in scope.
  external void SetDestructionListener(b2DestructionListener listener);

  /// Register a contact filter to provide specific control over
  /// collision. Otherwise the default filter is used
  /// (b2_defaultFilter). The listener is owned by you and must
  /// remain in scope.
  external void SetContactFilter(b2ContactFilter filter);

  /// Register a contact event listener. The listener is owned by
  /// you and must remain in scope.
  external void SetContactListener(b2ContactListener listener);

  /// Register a routine for debug drawing. The debug draw
  /// functions are called inside with b2World::DrawDebugData
  /// method. The debug draw object is owned by you and must remain
  /// in scope.
  external void SetDebugDraw(b2Draw debugDraw);

  /// Create a rigid body given a definition. No reference to the
  /// definition is retained.
  /// warning This function is locked during callbacks.
  external b2Body CreateBody(b2BodyDef def);

  /// Destroy a rigid body given a definition. No reference to the
  /// definition is retained. This function is locked during
  /// callbacks.
  /// warning This automatically deletes all associated shapes and
  /// joints.
  /// warning This function is locked during callbacks.
  external void DestroyBody(b2Body b);

  /// Create a joint to constrain bodies together. No reference to
  /// the definition is retained. This may cause the connected
  /// bodies to cease colliding.
  /// warning This function is locked during callbacks.
  external b2Joint CreateJoint(b2JointDef def);

  /// Destroy a joint. This may cause the connected bodies to begin
  /// colliding.
  /// warning This function is locked during callbacks.
  external void DestroyJoint(b2Joint j);

  /// Find islands, integrate and solve constraints, solve position
  /// constraints
  external void Solve(b2TimeStep step);

  /// Find TOI contacts and solve them.
  external void SolveTOI(b2TimeStep step);

  /// Take a time step. This performs collision detection,
  /// integration, and constraint solution.
  external void Step(num dt, num velocityIterations, num positionIterations);

  /// Manually clear the force buffer on all bodies. By default,
  /// forces are cleared automatically after each call to Step. The
  /// default behavior is modified by calling SetAutoClearForces.
  /// The purpose of this function is to support sub-stepping.
  /// Sub-stepping is often used to maintain a fixed sized time
  /// step under a variable frame-rate.
  /// When you perform sub-stepping you will disable auto clearing
  /// of forces and instead call ClearForces after all sub-steps
  /// are complete in one pass of your game loop.
  external void ClearForces();

  /// Query the world for all fixtures that potentially overlap the
  /// provided AABB.
  /// boolean} callback a user implemented callback class.
  external void QueryAABB(
      dynamic /*bool|b2QueryCallback*/ callback(b2Fixture fixture),
      b2AABB aabb);

  /// boolean} callback
  external void QueryShape(
      dynamic /*bool|b2QueryCallback*/ callback(b2Fixture fixture),
      b2Shape shape,
      b2Transform transform);

  /// boolean} callback
  external void QueryPoint(
      dynamic /*bool|b2QueryCallback*/ callback(b2Fixture fixture),
      b2Vec2 point);

  /// Ray-cast the world for all fixtures in the path of the ray.
  /// Your callback controls whether you get the closest point, any
  /// point, or n-points. The ray-cast ignores shapes that contain
  /// the starting point.
  /// box2d.b2Vec2, box2d.b2Vec2, number)} callback a user
  /// implemented callback class.
  external void RayCast(
      dynamic /*Null|b2RayCastCallback*/ callback(
          b2Fixture fixture, b2Vec2 vec1, b2Vec2 vec2, num points),
      b2Vec2 point1,
      b2Vec2 point2);
  external b2Fixture RayCastOne(b2Vec2 point1, b2Vec2 point2);
  external List<b2Fixture> RayCastAll(
      b2Vec2 point1, b2Vec2 point2, List<b2Fixture> out);
  external void DrawShape(b2Fixture fixture, b2Color color);
  external void DrawJoint(b2Joint joint);

  /// Call this to draw shapes and other debug draw data.
  external void DrawDebugData();
  external void SetBroadPhase(b2BroadPhase broadPhase);

  /// Get the number of broad-phase proxies.
  external num GetProxyCount();

  /// Get the height of the dynamic tree.
  external num GetTreeHeight();

  /// Get the balance of the dynamic tree.
  external num GetTreeBalance();

  /// Get the quality metric of the dynamic tree. The smaller the
  /// better. The minimum is 1.
  external num GetTreeQuality();

  /// Shift the world origin. Useful for large worlds.
  /// The body shift formula is: position -= newOrigin
  external void ShiftOrigin(b2Vec2 newOrigin);

  /// Dump the world into the log file.
  /// warning this should be called outside of a time step.
  external void Dump();
  external b2Controller AddController(b2Controller controller);
  external void RemoveController(b2Controller controller);
}

@JS("box2d.b2AreaJointDef")
class b2AreaJointDef extends b2JointDef {
  // @Ignore
  b2AreaJointDef.fakeConstructor$() : super.fakeConstructor$();

  /// Definition for a [box2d.b2AreaJoint], which connects a
  /// group a bodies together so they maintain a constant area
  /// within them.
  external factory b2AreaJointDef();
  external b2World get world;
  external set world(b2World v);
  external List<b2Body> get bodies;
  external set bodies(List<b2Body> v);

  /// The mass-spring-damper frequency in Hertz. A value of 0
  /// disables softness.
  external num get frequencyHz;
  external set frequencyHz(num v);

  /// The damping ratio. 0 = no damping, 1 = critical damping.
  external num get dampingRatio;
  external set dampingRatio(num v);
  external void AddBody(b2Body body);
}

@JS("box2d.b2AreaJoint")
class b2AreaJoint extends b2Joint {
  // @Ignore
  b2AreaJoint.fakeConstructor$() : super.fakeConstructor$();

  /// A distance joint constrains two points on two bodies to
  /// remain at a fixed distance from each other. You can view this
  /// as a massless, rigid rod.
  external factory b2AreaJoint(b2AreaJointDef def);
  external List<b2Body> get m_bodies;
  external set m_bodies(List<b2Body> v);
  external num get m_frequencyHz;
  external set m_frequencyHz(num v);
  external num get m_dampingRatio;
  external set m_dampingRatio(num v);
  external num get m_impulse;
  external set m_impulse(num v);
  external b2Vec2 GetAnchorA(b2Vec2 out);
  external b2Vec2 GetAnchorB(b2Vec2 out);

  /// Get the reaction force given the inverse time step.
  /// Unit is N.
  external b2Vec2 GetReactionForce(num inv_dt, b2Vec2 out);

  /// Get the reaction torque given the inverse time step.
  /// Unit is N*m. This is always zero for a distance joint.
  external num GetReactionTorque(num inv_dt);

  /// Set/get frequency in Hz.
  external void SetFrequency(num hz);
  external num GetFrequency();

  /// Set/get damping ratio.
  external void SetDampingRatio(num ratio);
  external num GetDampingRatio();

  /// Dump joint to dmLog
  external void Dump();
  external void InitVelocityConstraints(b2SolverData data);
  external void SolveVelocityConstraints(b2SolverData data);
  external bool SolvePositionConstraints(b2SolverData data);
}

@JS("box2d.b2BuoyancyController")
class b2BuoyancyController extends b2Controller {
  // @Ignore
  b2BuoyancyController.fakeConstructor$() : super.fakeConstructor$();

  /// Calculates buoyancy forces for fluids in the form of a half
  /// plane.
  external factory b2BuoyancyController();

  /// The outer surface normal
  external b2Vec2 get normal;
  external set normal(b2Vec2 v);

  /// The height of the fluid surface along the normal
  external num get offset;
  external set offset(num v);

  /// The fluid density
  external num get density;
  external set density(num v);

  /// Fluid velocity, for drag calculations
  external b2Vec2 get velocity;
  external set velocity(b2Vec2 v);

  /// Linear drag co-efficient
  external num get linearDrag;
  external set linearDrag(num v);

  /// Linear drag co-efficient
  external num get angularDrag;
  external set angularDrag(num v);

  /// If false, bodies are assumed to be uniformly dense, otherwise
  /// use the shapes densities
  external bool get useDensity;
  external set useDensity(bool v);

  /// If true, gravity is taken from the world instead of the
  external bool get useWorldGravity;
  external set useWorldGravity(bool v);

  /// Gravity vector, if the world's gravity is not used
  external b2Vec2 get gravity;
  external set gravity(b2Vec2 v);
  external void Step(b2TimeStep step);
  external void Draw(b2Draw debugDraw);
}

@JS("box2d.b2TensorDampingController")
class b2TensorDampingController extends b2Controller {
  // @Ignore
  b2TensorDampingController.fakeConstructor$() : super.fakeConstructor$();

  /// Applies top down linear damping to the controlled bodies
  /// The damping is calculated by multiplying velocity by a matrix
  /// in local co-ordinates.
  external factory b2TensorDampingController();

  /// Tensor to use in damping model
  external b2Mat22 get T;
  external set T(b2Mat22 v);

  /// Set this to a positive number to clamp the maximum amount of
  /// damping done.
  external num get maxTimestep;
  external set maxTimestep(num v);
  external void Step(b2TimeStep step);

  /// Sets damping independently along the x and y axes
  external void SetAxisAligned(num xDamping, num yDamping);
}

@JS("box2d.b2DistanceJointDef")
class b2DistanceJointDef extends b2JointDef {
  // @Ignore
  b2DistanceJointDef.fakeConstructor$() : super.fakeConstructor$();

  /// Distance joint definition. This requires defining an anchor
  /// point on both bodies and the non-zero length of the distance
  /// joint. The definition uses local anchor points so that the
  /// initial configuration can violate the constraint slightly.
  /// This helps when saving and loading a game.
  /// warning Do not use a zero or short length.
  external factory b2DistanceJointDef();

  /// The local anchor point relative to bodyA's origin.
  external b2Vec2 get localAnchorA;
  external set localAnchorA(b2Vec2 v);

  /// The local anchor point relative to bodyB's origin.
  external b2Vec2 get localAnchorB;
  external set localAnchorB(b2Vec2 v);

  /// The natural length between the anchor points.
  external num get length;
  external set length(num v);

  /// The mass-spring-damper frequency in Hertz. A value of 0
  /// disables softness.
  external num get frequencyHz;
  external set frequencyHz(num v);

  /// The damping ratio. 0 = no damping, 1 = critical damping.
  external num get dampingRatio;
  external set dampingRatio(num v);
  external void Initialize(
      b2Body b1, b2Body b2, b2Vec2 anchor1, b2Vec2 anchor2);
}

@JS("box2d.b2DistanceJoint")
class b2DistanceJoint extends b2Joint {
  // @Ignore
  b2DistanceJoint.fakeConstructor$() : super.fakeConstructor$();

  /// A distance joint constrains two points on two bodies to
  /// remain at a fixed distance from each other. You can view this
  /// as a massless, rigid rod.
  external factory b2DistanceJoint(b2DistanceJointDef def);
  external num get m_frequencyHz;
  external set m_frequencyHz(num v);
  external num get m_dampingRatio;
  external set m_dampingRatio(num v);
  external num get m_bias;
  external set m_bias(num v);
  external b2Vec2 get m_localAnchorA;
  external set m_localAnchorA(b2Vec2 v);
  external b2Vec2 get m_localAnchorB;
  external set m_localAnchorB(b2Vec2 v);
  external num get m_gamma;
  external set m_gamma(num v);
  external num get m_impulse;
  external set m_impulse(num v);
  external num get m_length;
  external set m_length(num v);
  external num get m_indexA;
  external set m_indexA(num v);
  external num get m_indexB;
  external set m_indexB(num v);
  external b2Vec2 get m_u;
  external set m_u(b2Vec2 v);
  external b2Vec2 get m_rA;
  external set m_rA(b2Vec2 v);
  external b2Vec2 get m_rB;
  external set m_rB(b2Vec2 v);
  external b2Vec2 get m_localCenterA;
  external set m_localCenterA(b2Vec2 v);
  external b2Vec2 get m_localCenterB;
  external set m_localCenterB(b2Vec2 v);
  external num get m_invMassA;
  external set m_invMassA(num v);
  external num get m_invMassB;
  external set m_invMassB(num v);
  external num get m_invIA;
  external set m_invIA(num v);
  external num get m_invIB;
  external set m_invIB(num v);
  external num get m_mass;
  external set m_mass(num v);
  external b2Rot get m_qA;
  external set m_qA(b2Rot v);
  external b2Rot get m_qB;
  external set m_qB(b2Rot v);
  external b2Vec2 get m_lalcA;
  external set m_lalcA(b2Vec2 v);
  external b2Vec2 get m_lalcB;
  external set m_lalcB(b2Vec2 v);
  external b2Vec2 GetAnchorA(b2Vec2 out);
  external b2Vec2 GetAnchorB(b2Vec2 out);

  /// Get the reaction force given the inverse time step.
  /// Unit is N.
  external b2Vec2 GetReactionForce(num inv_dt, b2Vec2 out);

  /// Get the reaction torque given the inverse time step.
  /// Unit is N*m. This is always zero for a distance joint.
  external num GetReactionTorque(num inv_dt);

  /// The local anchor point relative to bodyA's origin.
  external b2Vec2 GetLocalAnchorA(b2Vec2 out);

  /// The local anchor point relative to bodyB's origin.
  external b2Vec2 GetLocalAnchorB(b2Vec2 out);
  external void SetLength(num length);
  external num GetLength();

  /// Set/get frequency in Hz.
  external void SetFrequency(num hz);
  external num GetFrequency();

  /// Set/get damping ratio.
  external void SetDampingRatio(num ratio);
  external num GetDampingRatio();

  /// Dump joint to dmLog
  external void Dump();
  external void InitVelocityConstraints(b2SolverData data);
  external void SolveVelocityConstraints(b2SolverData data);
  external bool SolvePositionConstraints(b2SolverData data);
}

@JS("box2d.b2FrictionJointDef")
class b2FrictionJointDef extends b2JointDef {
  // @Ignore
  b2FrictionJointDef.fakeConstructor$() : super.fakeConstructor$();

  /// Friction joint definition.
  external factory b2FrictionJointDef();

  /// The local anchor point relative to bodyA's origin.
  external b2Vec2 get localAnchorA;
  external set localAnchorA(b2Vec2 v);

  /// The local anchor point relative to bodyB's origin.
  external b2Vec2 get localAnchorB;
  external set localAnchorB(b2Vec2 v);

  /// The maximum friction force in N.
  external num get maxForce;
  external set maxForce(num v);

  /// The maximum friction torque in N-m.
  external num get maxTorque;
  external set maxTorque(num v);
  external void Initialize(b2Body bA, b2Body bB, b2Vec2 anchor);
}

@JS("box2d.b2FrictionJoint")
class b2FrictionJoint extends b2Joint {
  // @Ignore
  b2FrictionJoint.fakeConstructor$() : super.fakeConstructor$();

  /// Friction joint. This is used for top-down friction. It
  /// provides 2D translational friction and angular friction.
  external factory b2FrictionJoint(b2FrictionJointDef def);
  external b2Vec2 get m_localAnchorA;
  external set m_localAnchorA(b2Vec2 v);
  external b2Vec2 get m_localAnchorB;
  external set m_localAnchorB(b2Vec2 v);
  external b2Vec2 get m_linearImpulse;
  external set m_linearImpulse(b2Vec2 v);
  external num get m_angularImpulse;
  external set m_angularImpulse(num v);
  external num get m_maxForce;
  external set m_maxForce(num v);
  external num get m_maxTorque;
  external set m_maxTorque(num v);
  external num get m_indexA;
  external set m_indexA(num v);
  external num get m_indexB;
  external set m_indexB(num v);
  external b2Vec2 get m_rA;
  external set m_rA(b2Vec2 v);
  external b2Vec2 get m_rB;
  external set m_rB(b2Vec2 v);
  external b2Vec2 get m_localCenterA;
  external set m_localCenterA(b2Vec2 v);
  external b2Vec2 get m_localCenterB;
  external set m_localCenterB(b2Vec2 v);
  external num get m_invMassA;
  external set m_invMassA(num v);
  external num get m_invMassB;
  external set m_invMassB(num v);
  external num get m_invIA;
  external set m_invIA(num v);
  external num get m_invIB;
  external set m_invIB(num v);
  external b2Mat22 get m_linearMass;
  external set m_linearMass(b2Mat22 v);
  external num get m_angularMass;
  external set m_angularMass(num v);
  external b2Rot get m_qA;
  external set m_qA(b2Rot v);
  external b2Rot get m_qB;
  external set m_qB(b2Rot v);
  external b2Vec2 get m_lalcA;
  external set m_lalcA(b2Vec2 v);
  external b2Vec2 get m_lalcB;
  external set m_lalcB(b2Vec2 v);
  external b2Mat22 get m_K;
  external set m_K(b2Mat22 v);
  external void InitVelocityConstraints(b2SolverData data);
  external void SolveVelocityConstraints(b2SolverData data);
  external bool SolvePositionConstraints(b2SolverData data);
  external b2Vec2 GetAnchorA(b2Vec2 out);
  external b2Vec2 GetAnchorB(b2Vec2 out);
  external b2Vec2 GetReactionForce(num inv_dt, b2Vec2 out);
  external num GetReactionTorque(num inv_dt);

  /// The local anchor point relative to bodyA's origin.
  external b2Vec2 GetLocalAnchorA(b2Vec2 out);

  /// The local anchor point relative to bodyB's origin.
  external b2Vec2 GetLocalAnchorB(b2Vec2 out);

  /// Set the maximum friction force in N.
  external void SetMaxForce(num force);

  /// Get the maximum friction force in N.
  external num GetMaxForce();

  /// Set the maximum friction torque in N*m.
  external void SetMaxTorque(num torque);

  /// Get the maximum friction torque in N*m.
  external num GetMaxTorque();

  /// Dump joint to dmLog
  external void Dump();
}

@JS("box2d.b2MouseJointDef")
class b2MouseJointDef extends b2JointDef {
  // @Ignore
  b2MouseJointDef.fakeConstructor$() : super.fakeConstructor$();

  /// Mouse joint definition. This requires a world target point,
  /// tuning parameters, and the time step.
  external factory b2MouseJointDef();

  /// The initial world target point. This is assumed to coincide
  /// with the body anchor initially.
  external b2Vec2 get target;
  external set target(b2Vec2 v);

  /// The maximum constraint force that can be exerted to move the
  /// candidate body. Usually you will express as some multiple of
  /// the weight (multiplier * mass * gravity).
  external num get maxForce;
  external set maxForce(num v);

  /// The response speed.
  external num get frequencyHz;
  external set frequencyHz(num v);

  /// The damping ratio. 0 = no damping, 1 = critical damping.
  external num get dampingRatio;
  external set dampingRatio(num v);
}

@JS("box2d.b2MouseJoint")
class b2MouseJoint extends b2Joint {
  // @Ignore
  b2MouseJoint.fakeConstructor$() : super.fakeConstructor$();

  /// A mouse joint is used to make a point on a body track a
  /// specified world point. This a soft constraint with a maximum
  /// force. This allows the constraint to stretch and without
  /// applying huge forces.
  /// NOTE: this joint is not documented in the manual because it
  /// was developed to be used in the testbed. If you want to learn
  /// how to use the mouse joint, look at the testbed.
  external factory b2MouseJoint(b2MouseJointDef def);
  external b2Vec2 get m_localAnchorB;
  external set m_localAnchorB(b2Vec2 v);
  external b2Vec2 get m_targetA;
  external set m_targetA(b2Vec2 v);
  external num get m_frequencyHz;
  external set m_frequencyHz(num v);
  external num get m_dampingRatio;
  external set m_dampingRatio(num v);
  external num get m_beta;
  external set m_beta(num v);
  external b2Vec2 get m_impulse;
  external set m_impulse(b2Vec2 v);
  external num get m_maxForce;
  external set m_maxForce(num v);
  external num get m_gamma;
  external set m_gamma(num v);
  external num get m_indexA;
  external set m_indexA(num v);
  external num get m_indexB;
  external set m_indexB(num v);
  external b2Vec2 get m_rB;
  external set m_rB(b2Vec2 v);
  external b2Vec2 get m_localCenterB;
  external set m_localCenterB(b2Vec2 v);
  external num get m_invMassB;
  external set m_invMassB(num v);
  external num get m_invIB;
  external set m_invIB(num v);
  external b2Mat22 get m_mass;
  external set m_mass(b2Mat22 v);
  external b2Vec2 get m_C;
  external set m_C(b2Vec2 v);
  external b2Rot get m_qB;
  external set m_qB(b2Rot v);
  external b2Vec2 get m_lalcB;
  external set m_lalcB(b2Vec2 v);
  external b2Mat22 get m_K;
  external set m_K(b2Mat22 v);
  external void SetTarget(b2Vec2 target);
  external b2Vec2 GetTarget(b2Vec2 out);
  external void SetMaxForce(num maxForce);
  external num GetMaxForce();
  external void SetFrequency(num hz);
  external num GetFrequency();
  external void SetDampingRatio(num ratio);
  external num GetDampingRatio();
  external void InitVelocityConstraints(b2SolverData data);
  external void SolveVelocityConstraints(b2SolverData data);
  external bool SolvePositionConstraints(b2SolverData data);
  external b2Vec2 GetAnchorA(b2Vec2 out);
  external b2Vec2 GetAnchorB(b2Vec2 out);
  external b2Vec2 GetReactionForce(num inv_dt, b2Vec2 out);
  external num GetReactionTorque(num inv_dt);

  /// The mouse joint does not support dumping.
  external void Dump();

  /// Implement b2Joint::ShiftOrigin
  external void ShiftOrigin(b2Vec2 newOrigin);
}

@JS("box2d.b2ConstantForceController")
class b2ConstantForceController extends b2Controller {
  // @Ignore
  b2ConstantForceController.fakeConstructor$() : super.fakeConstructor$();

  /// Applies a force every frame
  external factory b2ConstantForceController();
  external void Step(b2TimeStep step);
}

@JS("box2d.b2PulleyJointDef")
class b2PulleyJointDef extends b2JointDef {
  // @Ignore
  b2PulleyJointDef.fakeConstructor$() : super.fakeConstructor$();

  /// Pulley joint definition. This requires two ground anchors,
  /// two dynamic body anchor points, and a pulley ratio.
  external factory b2PulleyJointDef();

  /// The first ground anchor in world coordinates. This point
  /// never moves.
  external b2Vec2 get groundAnchorA;
  external set groundAnchorA(b2Vec2 v);

  /// The second ground anchor in world coordinates. This point
  /// never moves.
  external b2Vec2 get groundAnchorB;
  external set groundAnchorB(b2Vec2 v);

  /// The local anchor point relative to bodyA's origin.
  external b2Vec2 get localAnchorA;
  external set localAnchorA(b2Vec2 v);

  /// The local anchor point relative to bodyB's origin.
  external b2Vec2 get localAnchorB;
  external set localAnchorB(b2Vec2 v);

  /// The a reference length for the segment attached to bodyA.
  external num get lengthA;
  external set lengthA(num v);

  /// The a reference length for the segment attached to bodyB.
  external num get lengthB;
  external set lengthB(num v);

  /// The pulley ratio, used to simulate a block-and-tackle.
  external num get ratio;
  external set ratio(num v);
  external void Initialize(b2Body bA, b2Body bB, b2Vec2 groundA, b2Vec2 groundB,
      b2Vec2 anchorA, b2Vec2 anchorB, num r);
}

@JS("box2d.b2PulleyJoint")
class b2PulleyJoint extends b2Joint {
  // @Ignore
  b2PulleyJoint.fakeConstructor$() : super.fakeConstructor$();

  /// The pulley joint is connected to two bodies and two fixed ground points.
  /// The pulley supports a ratio such that:
  /// lengthA + ratio * lengthB <= constant
  /// Yes, the force transmitted is scaled by the ratio.
  /// Warning: the pulley joint can get a bit squirrelly by itself.
  /// They often work better when combined with prismatic joints.
  /// You should also cover the the anchor points with static
  /// shapes to prevent one side from going to zero length.
  external factory b2PulleyJoint(b2PulleyJointDef def);
  external b2Vec2 get m_groundAnchorA;
  external set m_groundAnchorA(b2Vec2 v);
  external b2Vec2 get m_groundAnchorB;
  external set m_groundAnchorB(b2Vec2 v);
  external num get m_lengthA;
  external set m_lengthA(num v);
  external num get m_lengthB;
  external set m_lengthB(num v);
  external b2Vec2 get m_localAnchorA;
  external set m_localAnchorA(b2Vec2 v);
  external b2Vec2 get m_localAnchorB;
  external set m_localAnchorB(b2Vec2 v);
  external num get m_constant;
  external set m_constant(num v);
  external num get m_ratio;
  external set m_ratio(num v);
  external num get m_impulse;
  external set m_impulse(num v);
  external num get m_indexA;
  external set m_indexA(num v);
  external num get m_indexB;
  external set m_indexB(num v);
  external b2Vec2 get m_uA;
  external set m_uA(b2Vec2 v);
  external b2Vec2 get m_uB;
  external set m_uB(b2Vec2 v);
  external b2Vec2 get m_rA;
  external set m_rA(b2Vec2 v);
  external b2Vec2 get m_rB;
  external set m_rB(b2Vec2 v);
  external b2Vec2 get m_localCenterA;
  external set m_localCenterA(b2Vec2 v);
  external b2Vec2 get m_localCenterB;
  external set m_localCenterB(b2Vec2 v);
  external num get m_invMassA;
  external set m_invMassA(num v);
  external num get m_invMassB;
  external set m_invMassB(num v);
  external num get m_invIA;
  external set m_invIA(num v);
  external num get m_invIB;
  external set m_invIB(num v);
  external num get m_mass;
  external set m_mass(num v);
  external b2Rot get m_qA;
  external set m_qA(b2Rot v);
  external b2Rot get m_qB;
  external set m_qB(b2Rot v);
  external b2Vec2 get m_lalcA;
  external set m_lalcA(b2Vec2 v);
  external b2Vec2 get m_lalcB;
  external set m_lalcB(b2Vec2 v);
  external void InitVelocityConstraints(b2SolverData data);
  external void SolveVelocityConstraints(b2SolverData data);
  external bool SolvePositionConstraints(b2SolverData data);
  external b2Vec2 GetAnchorA(b2Vec2 out);
  external b2Vec2 GetAnchorB(b2Vec2 out);
  external b2Vec2 GetReactionForce(num inv_dt, b2Vec2 out);
  external num GetReactionTorque(num inv_dt);
  external b2Vec2 GetGroundAnchorA(b2Vec2 out);
  external b2Vec2 GetGroundAnchorB(b2Vec2 out);

  /// Get the current length of the segment attached to bodyA.
  external num GetLengthA();

  /// Get the current length of the segment attached to bodyB.
  external num GetLengthB();

  /// Get the pulley ratio.
  external num GetRatio();

  /// Get the current length of the segment attached to bodyA.
  external num GetCurrentLengthA();

  /// Get the current length of the segment attached to bodyB.
  external num GetCurrentLengthB();

  /// Dump joint to dmLog
  external void Dump();

  /// Implement b2Joint::ShiftOrigin
  external void ShiftOrigin(b2Vec2 newOrigin);
}

@JS("box2d.b2CircleShape")
class b2CircleShape extends b2Shape {
  // @Ignore
  b2CircleShape.fakeConstructor$() : super.fakeConstructor$();

  /// A circle shape.
  external factory b2CircleShape([num radius]);
  external b2Vec2 get m_p;
  external set m_p(b2Vec2 v);

  /// Implement box2d.b2Shape.
  external b2Shape Clone();
  external b2Shape Copy(b2Shape other);

  /// Implement box2d.b2Shape.
  external num GetChildCount();

  /// Implement box2d.b2Shape.
  external bool TestPoint(b2Transform transform, b2Vec2 p);

  /// Implement box2d.b2Shape.
  /// Collision Detection in Interactive 3D Environments by Gino
  /// van den Bergen From Section 3.1.2
  /// x = s + a * r
  /// norm(x) = radius
  external bool RayCast(b2RayCastOutput output, b2RayCastInput input,
      b2Transform transform, num childIndex);
  external void ComputeAABB(b2AABB aabb, b2Transform transform, num childIndex);
  external void ComputeMass(b2MassData massData, num density);
  external void SetupDistanceProxy(b2DistanceProxy proxy, num index);
  external num ComputeSubmergedArea(
      b2Vec2 normal, num offset, b2Transform xf, b2Vec2 c);

  /// Dump this shape to the log file.
  external void Dump();
}

@JS("box2d.b2RopeDef")
class b2RopeDef {
  // @Ignore
  b2RopeDef.fakeConstructor$();
  external factory b2RopeDef();
}

@JS("box2d.b2Rope")
class b2Rope {
  // @Ignore
  b2Rope.fakeConstructor$();
  external factory b2Rope();
  external num GetVertexCount();
  external List<b2Vec2> GetVertices();
  external void Initialize(b2RopeDef def);
  external void Step(num h, num iterations);
  external void SolveC2();
  external void SetAngleRadians(num angle);
  external void SolveC3();
  external void Draw(b2Draw draw);
}

@JS("box2d.b2WheelJointDef")
class b2WheelJointDef extends b2JointDef {
  // @Ignore
  b2WheelJointDef.fakeConstructor$() : super.fakeConstructor$();

  /// Wheel joint definition. This requires defining a line of
  /// motion using an axis and an anchor point. The definition uses
  /// local anchor points and a local axis so that the initial
  /// configuration can violate the constraint slightly. The joint
  /// translation is zero when the local anchor points coincide in
  /// world space. Using local anchors and a local axis helps when
  /// saving and loading a game.
  external factory b2WheelJointDef();

  /// The local anchor point relative to bodyA's origin.
  external b2Vec2 get localAnchorA;
  external set localAnchorA(b2Vec2 v);

  /// The local anchor point relative to bodyB's origin.
  external b2Vec2 get localAnchorB;
  external set localAnchorB(b2Vec2 v);

  /// The local translation axis in bodyA.
  external b2Vec2 get localAxisA;
  external set localAxisA(b2Vec2 v);

  /// Enable/disable the joint motor.
  external bool get enableMotor;
  external set enableMotor(bool v);

  /// The maximum motor torque, usually in N-m.
  external num get maxMotorTorque;
  external set maxMotorTorque(num v);

  /// The desired motor speed in radians per second.
  external num get motorSpeed;
  external set motorSpeed(num v);

  /// Suspension frequency, zero indicates no suspension
  external num get frequencyHz;
  external set frequencyHz(num v);

  /// Suspension damping ratio, one indicates critical damping
  external num get dampingRatio;
  external set dampingRatio(num v);
  external void Initialize(b2Body bA, b2Body bB, b2Vec2 anchor, b2Vec2 axis);
}

@JS("box2d.b2WheelJoint")
class b2WheelJoint extends b2Joint {
  // @Ignore
  b2WheelJoint.fakeConstructor$() : super.fakeConstructor$();

  /// A wheel joint. This joint provides two degrees of freedom:
  /// translation along an axis fixed in bodyA and rotation in the
  /// plane. You can use a joint limit to restrict the range of
  /// motion and a joint motor to drive the rotation or to model
  /// rotational friction.
  /// This joint is designed for vehicle suspensions.
  external factory b2WheelJoint(b2WheelJointDef def);
  external num get m_frequencyHz;
  external set m_frequencyHz(num v);
  external num get m_dampingRatio;
  external set m_dampingRatio(num v);
  external b2Vec2 get m_localAnchorA;
  external set m_localAnchorA(b2Vec2 v);
  external b2Vec2 get m_localAnchorB;
  external set m_localAnchorB(b2Vec2 v);
  external b2Vec2 get m_localXAxisA;
  external set m_localXAxisA(b2Vec2 v);
  external b2Vec2 get m_localYAxisA;
  external set m_localYAxisA(b2Vec2 v);
  external num get m_impulse;
  external set m_impulse(num v);
  external num get m_motorImpulse;
  external set m_motorImpulse(num v);
  external num get m_springImpulse;
  external set m_springImpulse(num v);
  external num get m_maxMotorTorque;
  external set m_maxMotorTorque(num v);
  external num get m_motorSpeed;
  external set m_motorSpeed(num v);
  external bool get m_enableMotor;
  external set m_enableMotor(bool v);
  external num get m_indexA;
  external set m_indexA(num v);
  external num get m_indexB;
  external set m_indexB(num v);
  external b2Vec2 get m_localCenterA;
  external set m_localCenterA(b2Vec2 v);
  external b2Vec2 get m_localCenterB;
  external set m_localCenterB(b2Vec2 v);
  external num get m_invMassA;
  external set m_invMassA(num v);
  external num get m_invMassB;
  external set m_invMassB(num v);
  external num get m_invIA;
  external set m_invIA(num v);
  external num get m_invIB;
  external set m_invIB(num v);
  external b2Vec2 get m_ax;
  external set m_ax(b2Vec2 v);
  external b2Vec2 get m_ay;
  external set m_ay(b2Vec2 v);
  external num get m_sAx;
  external set m_sAx(num v);
  external num get m_sBx;
  external set m_sBx(num v);
  external num get m_sAy;
  external set m_sAy(num v);
  external num get m_sBy;
  external set m_sBy(num v);
  external num get m_mass;
  external set m_mass(num v);
  external num get m_motorMass;
  external set m_motorMass(num v);
  external num get m_springMass;
  external set m_springMass(num v);
  external num get m_bias;
  external set m_bias(num v);
  external num get m_gamma;
  external set m_gamma(num v);
  external b2Rot get m_qA;
  external set m_qA(b2Rot v);
  external b2Rot get m_qB;
  external set m_qB(b2Rot v);
  external b2Vec2 get m_lalcA;
  external set m_lalcA(b2Vec2 v);
  external b2Vec2 get m_lalcB;
  external set m_lalcB(b2Vec2 v);
  external b2Vec2 get m_rA;
  external set m_rA(b2Vec2 v);
  external b2Vec2 get m_rB;
  external set m_rB(b2Vec2 v);

  /// Get the motor speed, usually in radians per second.
  external num GetMotorSpeed();
  external num GetMaxMotorTorque();
  external void SetSpringFrequencyHz(num hz);
  external num GetSpringFrequencyHz();
  external void SetSpringDampingRatio(num ratio);
  external num GetSpringDampingRatio();
  external void InitVelocityConstraints(b2SolverData data);
  external void SolveVelocityConstraints(b2SolverData data);
  external bool SolvePositionConstraints(b2SolverData data);
  external b2WheelJointDef GetDefinition(b2WheelJointDef def);
  external b2Vec2 GetAnchorA(b2Vec2 out);
  external b2Vec2 GetAnchorB(b2Vec2 out);
  external b2Vec2 GetReactionForce(num inv_dt, b2Vec2 out);
  external num GetReactionTorque(num inv_dt);

  /// The local anchor point relative to bodyA's origin.
  external b2Vec2 GetLocalAnchorA(b2Vec2 out);

  /// The local anchor point relative to bodyB's origin.
  external b2Vec2 GetLocalAnchorB(b2Vec2 out);

  /// The local joint axis relative to bodyA.
  external b2Vec2 GetLocalAxisA(b2Vec2 out);
  external num GetJointTranslation();
  external num GetJointSpeed();
  external bool IsMotorEnabled();
  external void EnableMotor(bool flag);

  /// Set the motor speed, usually in radians per second.
  external void SetMotorSpeed(num speed);

  /// Set/Get the maximum motor force, usually in N-m.
  external void SetMaxMotorTorque(num force);

  /// Get the current motor torque given the inverse time step,
  /// usually in N-m.
  external num GetMotorTorque(num inv_dt);

  /// Dump to b2Log
  external void Dump();
}

@JS("box2d.b2MotorJointDef")
class b2MotorJointDef extends b2JointDef {
  // @Ignore
  b2MotorJointDef.fakeConstructor$() : super.fakeConstructor$();

  /// Motor joint definition.
  external factory b2MotorJointDef();

  /// Position of bodyB minus the position of bodyA, in bodyA's
  /// frame, in meters.
  external b2Vec2 get linearOffset;
  external set linearOffset(b2Vec2 v);

  /// The bodyB angle minus bodyA angle in radians.
  external num get angularOffset;
  external set angularOffset(num v);

  /// The maximum motor force in N.
  external num get maxForce;
  external set maxForce(num v);

  /// The maximum motor torque in N-m.
  external num get maxTorque;
  external set maxTorque(num v);

  /// Position correction factor in the range [0,1].
  external num get correctionFactor;
  external set correctionFactor(num v);
  external void Initialize(b2Body bA, b2Body bB);
}

@JS("box2d.b2MotorJoint")
class b2MotorJoint extends b2Joint {
  // @Ignore
  b2MotorJoint.fakeConstructor$() : super.fakeConstructor$();

  /// A motor joint is used to control the relative motion between
  /// two bodies. A typical usage is to control the movement of a
  /// dynamic body with respect to the ground.
  external factory b2MotorJoint(b2MotorJointDef def);
  external b2Vec2 get m_linearOffset;
  external set m_linearOffset(b2Vec2 v);
  external num get m_angularOffset;
  external set m_angularOffset(num v);
  external b2Vec2 get m_linearImpulse;
  external set m_linearImpulse(b2Vec2 v);
  external num get m_angularImpulse;
  external set m_angularImpulse(num v);
  external num get m_maxForce;
  external set m_maxForce(num v);
  external num get m_maxTorque;
  external set m_maxTorque(num v);
  external num get m_correctionFactor;
  external set m_correctionFactor(num v);
  external num get m_indexA;
  external set m_indexA(num v);
  external num get m_indexB;
  external set m_indexB(num v);
  external b2Vec2 get m_rA;
  external set m_rA(b2Vec2 v);
  external b2Vec2 get m_rB;
  external set m_rB(b2Vec2 v);
  external b2Vec2 get m_localCenterA;
  external set m_localCenterA(b2Vec2 v);
  external b2Vec2 get m_localCenterB;
  external set m_localCenterB(b2Vec2 v);
  external b2Vec2 get m_linearError;
  external set m_linearError(b2Vec2 v);
  external num get m_angularError;
  external set m_angularError(num v);
  external num get m_invMassA;
  external set m_invMassA(num v);
  external num get m_invMassB;
  external set m_invMassB(num v);
  external num get m_invIA;
  external set m_invIA(num v);
  external num get m_invIB;
  external set m_invIB(num v);
  external b2Mat22 get m_linearMass;
  external set m_linearMass(b2Mat22 v);
  external num get m_angularMass;
  external set m_angularMass(num v);
  external b2Rot get m_qA;
  external set m_qA(b2Rot v);
  external b2Rot get m_qB;
  external set m_qB(b2Rot v);
  external b2Mat22 get m_K;
  external set m_K(b2Mat22 v);
  external b2Vec2 GetAnchorA(b2Vec2 out);
  external b2Vec2 GetAnchorB(b2Vec2 out);
  external b2Vec2 GetReactionForce(num inv_dt, b2Vec2 out);
  external num GetReactionTorque(num inv_dt);

  /// Set the position correction factor in the range [0,1].
  external void SetCorrectionFactor(num factor);

  /// Get the position correction factor in the range [0,1].
  external num GetCorrectionFactor();

  /// Set/get the target linear offset, in frame A, in meters.
  external void SetLinearOffset(b2Vec2 linearOffset);
  external b2Vec2 GetLinearOffset(b2Vec2 out);

  /// Set/get the target angular offset, in radians.
  external void SetAngularOffset(num angularOffset);
  external num GetAngularOffset();

  /// Set the maximum friction force in N.
  external void SetMaxForce(num force);

  /// Get the maximum friction force in N.
  external num GetMaxForce();

  /// Set the maximum friction torque in N*m.
  external void SetMaxTorque(num torque);

  /// Get the maximum friction torque in N*m.
  external num GetMaxTorque();
  external void InitVelocityConstraints(b2SolverData data);
  external void SolveVelocityConstraints(b2SolverData data);
  external bool SolvePositionConstraints(b2SolverData data);

  /// Dump to b2Log
  external void Dump();
}

@JS("box2d.b2ParticleSystem")
class b2ParticleSystem {
  // @Ignore
  b2ParticleSystem.fakeConstructor$();
}

// End module box2d

