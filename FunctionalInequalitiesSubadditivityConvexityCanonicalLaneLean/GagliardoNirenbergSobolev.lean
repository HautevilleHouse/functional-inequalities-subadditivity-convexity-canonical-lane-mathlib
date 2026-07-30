import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean

structure GagliardoNirenbergSobolevInequality where
  domain : ℝⁿ
  p : ℝ≥1
  q : ℝ≥1
  r : ℝ≥1
  α : ℝ
  interpolationInequality : Prop
  constantsOptimal : Prop

structure GagliardoNirenbergSobolevEvidence (G : GagliardoNirenbergSobolevInequality) where
  interpolationInequalityClosed : G.interpolationInequality
  constantsOptimalClosed : G.constantsOptimal

def GagliardoNirenbergSobolevClosed (G : GagliardoNirenbergSobolevInequality) : Prop :=
  G.interpolationInequality ∧ G.constantsOptimal

theorem gagliardo_nirenberg_sobolev_closed_from_evidence (G : GagliardoNirenbergSobolevInequality) (E : GagliardoNirenbergSobolevEvidence G) :
    GagliardoNirenbergSobolevClosed G := by
  exact And.intro E.interpolationInequalityClosed E.constantsOptimalClosed

end FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean
end HautevilleHouse
