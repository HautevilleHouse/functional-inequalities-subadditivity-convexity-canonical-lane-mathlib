import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean.ConvexityBridge

namespace HautevilleHouse
namespace FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  A.gateWitness

end FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean
end HautevilleHouse