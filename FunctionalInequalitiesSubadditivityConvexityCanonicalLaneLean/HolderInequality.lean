import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean

structure HolderInequalityPackage where
  measureSpace : Type u
  integrableFunctions : Type v
  conjugateExponents : Real × Real
  holderInequality : Prop

structure HolderInequalityEvidence (H : HolderInequalityPackage) where
  measureSpaceClosed : H.measureSpace
  integrableFunctionsClosed : H.integrableFunctions
  conjugateExponentsClosed : H.conjugateExponents.1 > 1 ∧ H.conjugateExponents.2 > 1 ∧ (1 / H.conjugateExponents.1 + 1 / H.conjugateExponents.2 = 1)
  holderInequalityClosed : H.holderInequality

def HolderInequalityClosed (H : HolderInequalityPackage) : Prop :=
  H.measureSpace ∧ H.integrableFunctions ∧ (H.conjugateExponents.1 > 1 ∧ H.conjugateExponents.2 > 1 ∧ (1 / H.conjugateExponents.1 + 1 / H.conjugateExponents.2 = 1)) ∧ H.holderInequality

theorem holder_inequality_closed_from_evidence (H : HolderInequalityPackage) (E : HolderInequalityEvidence H) :
    HolderInequalityClosed H := by
  exact And.intro E.measureSpaceClosed
    (And.intro E.integrableFunctionsClosed
      (And.intro E.conjugateExponentsClosed E.holderInequalityClosed))

end FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean
end HautevilleHouse