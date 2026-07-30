import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean

structure ConvexFunctionalPackage where
  domain : Type u
  codomain : Type v
  function : domain → codomain
  convexSet : Set domain
  convexityDef : Prop
  subadditivityDef : Prop
  convexFunctionalProperty : ∀ x y ∈ convexSet, ∀ t : ℝ, t ≥ 0 ∧ t ≤ 1 → function (t • x + (1 - t) • y) ≤ t • function x + (1 - t) • function y

structure ConvexFunctionalEvidence (C : ConvexFunctionalPackage) where
  convexSetClosed : C.convexSet = Set.univ
  convexityDefClosed : C.convexityDef
  subadditivityDefClosed : C.subadditivityDef
  convexFunctionalPropertyClosed : C.convexFunctionalProperty

def ConvexFunctionalClosed (C : ConvexFunctionalPackage) : Prop :=
  C.convexityDef ∧ C.subadditivityDef ∧ C.convexFunctionalProperty

theorem convex_functional_closed_from_evidence (C : ConvexFunctionalPackage) (E : ConvexFunctionalEvidence C) : ConvexFunctionalClosed C := by
  exact And.intro E.convexityDefClosed (And.intro E.subadditivityDefClosed E.convexFunctionalPropertyClosed)

end FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean
end HautevilleHouse