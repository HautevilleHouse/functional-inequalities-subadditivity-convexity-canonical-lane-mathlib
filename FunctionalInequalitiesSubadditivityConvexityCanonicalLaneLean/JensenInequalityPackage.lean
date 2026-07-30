import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean

structure JensenInequalityPackage where
  domain : Type u
  codomain : Type v
  phi : domain → codomain
  phiIsConvex : Prop
  measure : Set domain → ℝ
  integral : (domain → codomain) → codomain
  jensenInequality : integral phi ≤ phi (integral id)

structure JensenInequalityEvidence (J : JensenInequalityPackage) where
  phiIsConvexClosed : J.phiIsConvex
  jensenInequalityClosed : J.jensenInequality

def JensenInequalityClosed (J : JensenInequalityPackage) : Prop :=
  J.phiIsConvex ∧ J.jensenInequality

theorem jensen_inequality_closed_from_evidence (J : JensenInequalityPackage) (E : JensenInequalityEvidence J) : JensenInequalityClosed J := by
  exact And.intro E.phiIsConvexClosed E.jensenInequalityClosed

end FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean
end HautevilleHouse