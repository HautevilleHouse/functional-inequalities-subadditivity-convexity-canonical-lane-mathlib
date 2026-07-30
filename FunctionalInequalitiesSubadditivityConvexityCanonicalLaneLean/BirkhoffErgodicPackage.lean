import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean

structure BirkhoffErgodicPackage where
  transformation : (ℝ → ℝ) → (ℝ → ℝ)
  ergodicTheorem : Prop
  subadditiveErgodic : Prop
  convergenceResult : Prop

structure BirkhoffErgodicEvidence (B : BirkhoffErgodicPackage) where
  ergodicTheoremClosed : B.ergodicTheorem
  subadditiveErgodicClosed : B.subadditiveErgodic
  convergenceResultClosed : B.convergenceResult

def BirkhoffErgodicClosed (B : BirkhoffErgodicPackage) : Prop :=
  B.ergodicTheorem ∧ B.subadditiveErgodic ∧ B.convergenceResult

theorem birkhoff_ergodic_closed_from_evidence (B : BirkhoffErgodicPackage)
    (E : BirkhoffErgodicEvidence B) : BirkhoffErgodicClosed B := by
  exact And.intro E.ergodicTheoremClosed
    (And.intro E.subadditiveErgodicClosed E.convergenceResultClosed)

end FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean
end HautevilleHouse