import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean.ConvexityBridge

namespace HautevilleHouse
namespace FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean

structure ConvexFunctional where
  f : ℝ → ℝ
  convex : ∀ x y : ℝ, ∀ t : ℝ, t ≥ 0 → t ≤ 1 → f (t*x + (1-t)*y) ≤ t*f x + (1-t)*f y
  proper : Prop
  lowerSemicontinuous : Prop

def LegendreFenchelTransform (f : ConvexFunctional) : (ℝ → ℝ) :=
  λ p => sup (λ x : ℝ => p*x - f.f x) (Set.univ : Set ℝ)

structure LegendreTransformPackage where
  original : ConvexFunctional
  transformDefined : Prop
  convexityPreserved : Prop
  involutionCondition : Prop
  evidence : transformDefined ∧ convexityPreserved ∧ involutionCondition

def LegendreTransformPackageClosed (P : LegendreTransformPackage) : Prop :=
  P.transformDefined ∧ P.convexityPreserved ∧ P.involutionCondition

theorem legendre_transform_closed_from_evidence (P : LegendreTransformPackage) : LegendreTransformPackageClosed P :=
  P.evidence

end FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean
end HautevilleHouse