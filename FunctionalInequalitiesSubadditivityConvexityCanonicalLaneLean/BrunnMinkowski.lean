import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean

structure BrunnMinkowskiSystem (X : FunctionalSpace) where
  measure : Set X.carrier → ℝ
  isLebesgue : Prop
  dimension : ℕ
  inequality : ∀ A B : Set X.carrier, measurable A → measurable B →
    (measure (A + B))^(1/dimension) ≥ (measure A)^(1/dimension) + (measure B)^(1/dimension)
  additionDefined : A + B := {a + b | a ∈ A, b ∈ B}

structure BrunnMinkowskiEvidence {X : FunctionalSpace} (B : BrunnMinkowskiSystem X) where
  measureClosed : B.isLebesgue
  inequalityClosed : B.inequality

def BrunnMinkowskiClosed {X : FunctionalSpace} (B : BrunnMinkowskiSystem X) : Prop :=
  B.isLebesgue ∧ B.inequality

theorem brunn_minkowski_closed_from_evidence {X : FunctionalSpace} (B : BrunnMinkowskiSystem X)
    (E : BrunnMinkowskiEvidence B) : BrunnMinkowskiClosed B := by
  exact And.intro E.measureClosed E.inequalityClosed

end FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean
end HautevilleHouse