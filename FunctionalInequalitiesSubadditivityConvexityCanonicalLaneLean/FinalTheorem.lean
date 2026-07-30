import FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean

def ConstrainedFunctionalInequalitiesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_functional_inequalities_endgame (A : AdmissibleClass) :
    ConstrainedFunctionalInequalitiesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean
end HautevilleHouse