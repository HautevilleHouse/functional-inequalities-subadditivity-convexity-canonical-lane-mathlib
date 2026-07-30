import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean

structure BrunnMinkowskiInequalityPackage where
  space : Type u
  measure : Set space → ℝ
  addition : Set space → Set space → Set space
  convexBody : Set space
  brunnMinkowskiInequality : measure (addition convexBody convexBody) ^ (1 / dim) ≥ measure convexBody ^ (1 / dim) + measure convexBody ^ (1 / dim)
  dim : ℕ
  dimPositive : dim > 0

structure BrunnMinkowskiInequalityEvidence (B : BrunnMinkowskiInequalityPackage) where
  brunnMinkowskiInequalityClosed : B.brunnMinkowskiInequality
  dimPositiveClosed : B.dimPositive

def BrunnMinkowskiInequalityClosed (B : BrunnMinkowskiInequalityPackage) : Prop :=
  B.brunnMinkowskiInequality ∧ B.dimPositive

theorem brunn_minkowski_inequality_closed_from_evidence (B : BrunnMinkowskiInequalityPackage) (E : BrunnMinkowskiInequalityEvidence B) : BrunnMinkowskiInequalityClosed B := by
  exact And.intro E.brunnMinkowskiInequalityClosed E.dimPositiveClosed

end FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean
end HautevilleHouse