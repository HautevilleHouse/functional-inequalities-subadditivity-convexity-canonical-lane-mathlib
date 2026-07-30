import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean.SubadditiveInequalityPackage

namespace HautevilleHouse
namespace FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean

structure ConvexityPackage (X : Type u) where
  domain : Set X
  convexFunctional : X -> ℝ
  convexityCondition : forall (x y : X) (t : ℝ), 0 ≤ t → t ≤ 1 → convexFunctional (t • x + (1 - t) • y) ≤ t * convexFunctional x + (1 - t) * convexFunctional y
  equivalence : Prop

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  A.gateWitness.elim (fun h => h) (fun _ => False.elim ?_)

end FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean
end HautevilleHouse