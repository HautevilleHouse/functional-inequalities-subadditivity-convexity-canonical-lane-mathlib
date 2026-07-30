import canonicalLaneMathlib.AdmissibleClass

/-!
# Convex Duality Package
-/

namespace HautevilleHouse
namespace FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean

structure ConvexDualityPackage where
  domain : Type u
  functional : domain → ℝ
  convex : Prop
  lowerSemicontinuous : Prop
  dualFunctional : Type v → ℝ
  convexConjugate : Prop
  biconjugateRecovers : Prop

structure ConvexDualityEvidence (C : ConvexDualityPackage) where
  convexClosed : C.convex
  lowerSemicontinuousClosed : C.lowerSemicontinuous
  convexConjugateClosed : C.convexConjugate
  biconjugateRecoversClosed : C.biconjugateRecovers

def ConvexDualityClosed (C : ConvexDualityPackage) : Prop :=
  C.convex ∧ C.lowerSemicontinuous ∧ C.convexConjugate ∧ C.biconjugateRecovers

theorem convex_duality_closed_from_evidence (C : ConvexDualityPackage) (E : ConvexDualityEvidence C) :
    ConvexDualityClosed C := by
  exact And.intro E.convexClosed (And.intro E.lowerSemicontinuousClosed (And.intro E.convexConjugateClosed E.biconjugateRecoversClosed))

end FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean
end HautevilleHouse
