##  <#GAPDoc Label="GIT_Fan:example">
##      <Example><![CDATA[
##  gap> Q := HomalgFieldOfRationalsInDefaultCAS( );
##  Q
##  gap> R := GradedRing( Q * "T1..4" );
##  Q[T1,T2,T3,T4]
##  gap> a := GradedLeftSubmodule( "T1*T6+T3*T4+T5*T6", R );
##  <A principal torsion-free (left) ideal given by a cyclic generator>
##  gap> Is_aFace( [ 1 .. 8 ], a );
##  true
##  gap> Is_aFace( [ 7, 8 ], a );
##  false

##  ]]></Example>
##  <#/GAPDoc>

LoadPackage( "Orbifolds" );

Q := HomalgFieldOfRationalsInDefaultCAS( );
R := GradedRing( Q * "T1..4" );

SetWeightsOfIndeterminates( R, [ [ 1, 0, 0 ], [ 0, 1, 0 ], [ 1, 0, 1 ], [ 0, 1, 1 ] ] );

a := GradedLeftSubmodule( "0", R );

Assert( 0, Length( OrbitCones( a, 3 ) ) = 5 );

