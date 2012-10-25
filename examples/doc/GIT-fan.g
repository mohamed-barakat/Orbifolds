##  <#GAPDoc Label="GIT_Fan:example">
##      <Example><![CDATA[
## gap> Q := HomalgFieldOfRationalsInDefaultCAS( );
## Q
## gap> R := GradedRing( Q * "T1..8" );
## Q[T1,T2,T3,T4,T5,T6,T7,T8]
## (weights: yet unset)
## gap>
## gap> SetWeightsOfIndeterminates( R, [ [ 1, 0, 1 ], [ 1, 1, 1 ], [ 0, 1, 1 ], [ 0, -1, 1 ], [ -1, -1, 1 ], [ -1, 0, 1 ], [ 2, 1, 1 ], [ -2, -1, 1 ] ] );
## gap> a := GradedLeftSubmodule( "T1*T6+T2*T5+T3*T4+T7*T8", R );
## <A graded principal torsion-free (left) ideal given by a cyclic generator>
## gap> Is_aFace( [ 1 .. 8 ], a );
## true
## gap> Is_aFace( [ 7, 8 ], a );
## false
## gap> Length( OrbitCones( a, 3 ) );
## 72
## gap> w := [ 0, 0, 2 ];
## [ 0, 0, 2 ]
## gap> lambda := GIT_Cone( a, w );
## <A cone in |R^3>
## gap> Length( RayGenerators( lambda ) );
## 8
## gap> Length(MaximalCones(GIT_Fan(a)));
## 37
##  ]]></Example>
##  <#/GAPDoc>

LoadPackage( "Orbifolds" );

Q := HomalgFieldOfRationalsInDefaultCAS( );
R := GradedRing( Q * "T1..8" );

SetWeightsOfIndeterminates( R, [ [ 1, 0, 1 ], [ 1, 1, 1 ], [ 0, 1, 1 ], [ 0, -1, 1 ], [ -1, -1, 1 ], [ -1, 0, 1 ], [ 2, 1, 1 ], [ -2, -1, 1 ] ] );

a := GradedLeftSubmodule( "T1*T6+T2*T5+T3*T4+T7*T8", R );

Assert( 0, Is_aFace( [ 1 .. 8 ], a ) );
Assert( 0, not Is_aFace( [ 7, 8 ], a ) );
Assert( 0, Length( OrbitCones( a, 3 ) ) = 72 );

w := [ 0, 0, 2 ];
lambda := GIT_Cone( a, w );

Assert( 0, Length( RayGenerators( lambda ) ) = 8 );

Assert( 0, Length( MaximalCones( GIT_Fan( a ) ) ) = 37 );
