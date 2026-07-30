import canonicalLaneMathlib.AdmissibleClass

/-!
# Functional Inequalities Package
-/

namespace HautevilleHouse
namespace FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean

structure FunctionalInequalitiesPackage where
  domain : Type u
  measure : Type v
  poincareInequality : Prop
  sobolevInequality : Prop
  logarithmicSobolevInequality : Prop
  constants : ℝ × ℝ × ℝ

structure FunctionalInequalitiesEvidence (F : FunctionalInequalitiesPackage) where
  poincareInequalityClosed : F.poincareInequality
  sobolevInequalityClosed : F.sobolevInequality
  logarithmicSobolevInequalityClosed : F.logarithmicSobolevInequality

def FunctionalInequalitiesClosed (F : FunctionalInequalitiesPackage) : Prop :=
  F.poincareInequality ∧ F.sobolevInequality ∧ F.logarithmicSobolevInequality

theorem functional_inequalities_closed_from_evidence (F : FunctionalInequalitiesPackage) (E : FunctionalInequalitiesEvidence F) :
    FunctionalInequalitiesClosed F := by
  exact And.intro E.poincareInequalityClosed (And.intro E.sobolevInequalityClosed E.logarithmicSobolevInequalityClosed)

end FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean
end HautevilleHouse
