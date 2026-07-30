import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean

structure FunctionalInequalityAdmittedObject where
  space : Type
  normedSpace : NormedAddCommGroup space
  convex : Prop
  subadditivity : Prop
  inequality : Prop
  conclusion : inequality

def FunctionalInequalityWitnessClosed (O : FunctionalInequalityAdmittedObject) : Prop :=
  O.inequality

theorem inequality_witness_closed (O : FunctionalInequalityAdmittedObject) :
    FunctionalInequalityWitnessClosed O :=
  O.conclusion

end FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean
end HautevilleHouse