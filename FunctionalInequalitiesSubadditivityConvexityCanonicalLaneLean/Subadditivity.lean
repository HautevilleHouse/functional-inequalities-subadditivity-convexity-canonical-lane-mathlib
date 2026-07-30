import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean

structure SubadditivitySystem (X : FunctionalSpace) where
  p : ℕ → ℝ
  subadditive : ∀ m n : ℕ, p (m + n) ≤ p m + p n
  growthControl : ∃ C : ℝ, ∀ n : ℕ, p n ≤ C * n
  convexMajorant : ∃ φ : ConvexFunctional X, ∀ n : ℕ, p n ≤ φ.f (someElement)
  someElement : X.carrier

structure SubadditivityEvidence {X : FunctionalSpace} (S : SubadditivitySystem X) where
  subadditiveClosed : S.subadditive
  growthControlClosed : S.growthControl
  convexMajorantClosed : S.convexMajorant

def SubadditivityClosed {X : FunctionalSpace} (S : SubadditivitySystem X) : Prop :=
  S.subadditive ∧ S.growthControl ∧ S.convexMajorant

theorem subadditivity_closed_from_evidence {X : FunctionalSpace} (S : SubadditivitySystem X)
    (E : SubadditivityEvidence S) : SubadditivityClosed S := by
  exact And.intro E.subadditiveClosed (And.intro E.growthControlClosed E.convexMajorantClosed)

end FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean
end HautevilleHouse