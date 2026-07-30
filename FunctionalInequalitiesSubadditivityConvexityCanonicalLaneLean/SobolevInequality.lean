import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean

structure SobolevData (X : FunctionalSpace) where
  p : ℝ
  q : ℝ
  n : ℕ
  inequality : ∀ f : X.carrier, ∥f∥_{L^q} ≤ C * ∥∇f∥_{L^p}
  constantOptimal : Prop
  dimensionRestriction : n > 1

structure SobolevEvidence {X : FunctionalSpace} (S : SobolevData X) where
  inequalityClosed : S.inequality
  constantOptimalClosed : S.constantOptimal

def SobolevClosed {X : FunctionalSpace} (S : SobolevData X) : Prop :=
  S.inequality ∧ S.constantOptimal

theorem sobolev_closed_from_evidence {X : FunctionalSpace} (S : SobolevData X) (E : SobolevEvidence S) :
    SobolevClosed S := by
  exact And.intro E.inequalityClosed E.constantOptimalClosed

end FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean
end HautevilleHouse