import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean

structure ConvexityClosurePackage where
  set : Type u
  convexCombination : Prop
  convexHullDefined : Prop
  closureUnderConvexCombinations : Prop
  closedConvexSet : Prop

structure ConvexityClosureEvidence (C : ConvexityClosurePackage) where
  convexCombinationClosed : C.convexCombination
  convexHullDefinedClosed : C.convexHullDefined
  closureUnderConvexCombinationsClosed : C.closureUnderConvexCombinations
  closedConvexSetClosed : C.closedConvexSet

def ConvexityClosureClosed (C : ConvexityClosurePackage) : Prop :=
  C.convexCombination ∧ C.convexHullDefined ∧ C.closureUnderConvexCombinations ∧ C.closedConvexSet

theorem convexity_closure_closed_from_evidence (C : ConvexityClosurePackage) (E : ConvexityClosureEvidence C) :
    ConvexityClosureClosed C := by
  exact And.intro E.convexCombinationClosed
    (And.intro E.convexHullDefinedClosed
      (And.intro E.closureUnderConvexCombinationsClosed E.closedConvexSetClosed))

end FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean
end HautevilleHouse