import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean

structure FunctionalSpace where
  carrier : Type u
  norm : carrier → ℝ
  isBanach : Prop
  isReflexive : Prop
  latticeStructure : Prop
  smoothDual : Prop

structure FunctionalSpaceEvidence (X : FunctionalSpace) where
  normComplete : X.isBanach
  reflexivityHeld : X.isReflexive
  latticeProperty : X.latticeStructure
  smoothDualHeld : X.smoothDual

def FunctionalSpaceClosed (X : FunctionalSpace) : Prop :=
  X.isBanach ∧ X.isReflexive ∧ X.latticeStructure ∧ X.smoothDual

theorem functional_space_closed_from_evidence (X : FunctionalSpace) (E : FunctionalSpaceEvidence X) :
    FunctionalSpaceClosed X := by
  exact And.intro E.normComplete (And.intro E.reflexivityHeld (And.intro E.latticeProperty E.smoothDualHeld))

end FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean
end HautevilleHouse