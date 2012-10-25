##  <#GAPDoc Label="GIT_Fan:example">
##      <Example><![CDATA[
## gap> Q := HomalgFieldOfRationalsInDefaultCAS( );
## Q
## gap> R := GradedRing( Q * "T1..4" );
## Q[T1,T2,T3,T4]
## (weights: yet unset)
## gap> 
## gap> SetWeightsOfIndeterminates( R, [ [ 1, 0, 0 ], [ 0, 1, 0 ], [ 1, 0, 1 ], [ 0, 1, 1 ] ] );
## gap> 
## gap> a := GradedLeftSubmodule( "0", R );
## <A graded principal torsion-free (left) ideal given by a cyclic generator>
## gap> Length(OrbitCones(a));
## 5
## gap> Length(MaximalCones(GIT_Fan(a)));
## 4
##  ]]></Example>
##  <#/GAPDoc>

LoadPackage( "Orbifolds" );

Q := HomalgFieldOfRationalsInDefaultCAS( );
R := GradedRing( Q * "T1..4" );

SetWeightsOfIndeterminates( R, [ [ 1, 0, 0 ], [ 0, 1, 0 ], [ 1, 0, 1 ], [ 0, 1, 1 ] ] );

a := GradedLeftSubmodule( "0", R );

Assert( 0, Length( OrbitCones( a ) ) = 5 );
Assert( 0, Length( MaximalCones( GIT_Fan( a ) ) ) = 4 );

