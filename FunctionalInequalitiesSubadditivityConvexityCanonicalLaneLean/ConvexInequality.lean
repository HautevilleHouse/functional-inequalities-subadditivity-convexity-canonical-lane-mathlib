import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean

structure ConvexInequality (X : FunctionalSpace) where
  φ : ConvexFunctional X
  ψ : ConvexFunctional X
  inequalityHolds : ∀ x : X.carrier, φ.f x ≤ ψ.f x
  sharpness : ∃ x : X.carrier, φ.f x = ψ.f x
  applications : List String

structure ConvexInequalityEvidence {X : FunctionalSpace} (I : ConvexInequality X) where
  inequalityClosed : I.inequalityHolds
  sharpnessClosed : I.sharpness

def ConvexInequalityClosed {X : FunctionalSpace} (I : ConvexInequality X) : Prop :=
  I.inequalityHolds ∧ I.sharpness

theorem convex_inequality_closed_from_evidence {X : FunctionalSpace} (I : ConvexInequality X)
    (E : ConvexInequalityEvidence I) : ConvexInequalityClosed I := by
  exact And.intro E.inequalityClosed E.sharpnessClosed

end FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean
end HautevilleHouse