import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean

structure ConvexFunctional (X : FunctionalSpace) where
  domain : Set X.carrier
  f : X.carrier → ℝ
  isConvex : ∀ x y ∈ domain, ∀ t : ℝ, t ≥ 0 ∧ t ≤ 1 → f (t • x + (1 - t) • y) ≤ t * f x + (1 - t) * f y
  isLowerSemicontinuous : ∀ x : X.carrier, Filter.Tendsto (λ y : X.carrier => f y) (nhds x) (𝓝 (f x)) ≥ f x
  isProper : ∃ x : X.carrier, x ∈ domain ∧ f x < ∞

structure ConvexFunctionalEvidence {X : FunctionalSpace} (φ : ConvexFunctional X) where
  convexCondition : φ.isConvex
  lscCondition : φ.isLowerSemicontinuous
  properCondition : φ.isProper

def ConvexFunctionalClosed {X : FunctionalSpace} (φ : ConvexFunctional X) : Prop :=
  φ.isConvex ∧ φ.isLowerSemicontinuous ∧ φ.isProper

theorem convex_functional_closed_from_evidence {X : FunctionalSpace} (φ : ConvexFunctional X)
    (E : ConvexFunctionalEvidence φ) : ConvexFunctionalClosed φ := by
  exact And.intro E.convexCondition (And.intro E.lscCondition E.properCondition)

end FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean
end HautevilleHouse