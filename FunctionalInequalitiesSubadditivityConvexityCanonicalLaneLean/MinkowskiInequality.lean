import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean

structure MinkowskiInequalityPackage where
  normedSpace : Type u
  normDefined : Prop
  vectorSum : Prop
  pNorm : Real
  minkowskiInequality : Prop

structure MinkowskiInequalityEvidence (M : MinkowskiInequalityPackage) where
  normedSpaceClosed : M.normedSpace
  normDefinedClosed : M.normDefined
  vectorSumClosed : M.vectorSum
  pNormClosed : M.pNorm > 1
  minkowskiInequalityClosed : M.minkowskiInequality

def MinkowskiInequalityClosed (M : MinkowskiInequalityPackage) : Prop :=
  M.normedSpace ∧ M.normDefined ∧ M.vectorSum ∧ (M.pNorm > 1) ∧ M.minkowskiInequality

theorem minkowski_inequality_closed_from_evidence (M : MinkowskiInequalityPackage) (E : MinkowskiInequalityEvidence M) :
    MinkowskiInequalityClosed M := by
  exact And.intro E.normedSpaceClosed
    (And.intro E.normDefinedClosed
      (And.intro E.vectorSumClosed
        (And.intro E.pNormClosed E.minkowskiInequalityClosed)))

end FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean
end HautevilleHouse