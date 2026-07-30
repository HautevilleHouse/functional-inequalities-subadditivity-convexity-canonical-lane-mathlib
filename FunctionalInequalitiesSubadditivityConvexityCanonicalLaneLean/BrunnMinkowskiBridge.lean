import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean

structure BrunnMinkowskiInequality where
  spaceDim : ℕ
  convexBodyA : Set (ℝ ^ spaceDim)
  convexBodyB : Set (ℝ ^ spaceDim)
  volumeAdditive : Prop
  BrunnMinkowskiInequalityHolds : Prop

structure BrunnMinkowskiEvidence (B : BrunnMinkowskiInequality) where
  convexBodyAClosed : B.convexBodyA ≠ ∅
  convexBodyBClosed : B.convexBodyB ≠ ∅
  volumeAdditiveClosed : B.volumeAdditive
  BrunnMinkowskiInequalityHoldsClosed : B.BrunnMinkowskiInequalityHolds

def BrunnMinkowskiClosed (B : BrunnMinkowskiInequality) : Prop :=
  B.convexBodyA ≠ ∅ ∧ B.convexBodyB ≠ ∅ ∧ B.volumeAdditive ∧ B.BrunnMinkowskiInequalityHolds

theorem brunn_minkowski_closed_from_evidence (B : BrunnMinkowskiInequality) (E : BrunnMinkowskiEvidence B) :
    BrunnMinkowskiClosed B := by
  exact And.intro E.convexBodyAClosed (And.intro E.convexBodyBClosed (And.intro E.volumeAdditiveClosed E.BrunnMinkowskiInequalityHoldsClosed))

end FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean
end HautevilleHouse
