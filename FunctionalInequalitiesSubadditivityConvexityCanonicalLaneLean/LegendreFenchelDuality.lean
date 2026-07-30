import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean

structure LegendreFenchelTransform (X : Type u) [NormedAddCommGroup X] [Dual X] where
  f : X → ℝ
  fConvex : Prop
  fLsc : Prop
  fProper : Prop
  fStarDefined : (Dual X → ℝ) := λ x* => sup (λ x => (inner x* x) - f x)
  biconjugateEquals : fStarDefined.star = f

structure LegendreFenchelEvidence (X : Type u) [NormedAddCommGroup X] [Dual X] (L : LegendreFenchelTransform X) where
  fConvexClosed : L.fConvex
  fLscClosed : L.fLsc
  fProperClosed : L.fProper
  biconjugateEqualsClosed : L.biconjugateEquals

def LegendreFenchelClosed (X : Type u) [NormedAddCommGroup X] [Dual X] (L : LegendreFenchelTransform X) : Prop :=
  L.fConvex ∧ L.fLsc ∧ L.fProper ∧ L.biconjugateEquals

theorem legendre_fenchel_closed_from_evidence (X : Type u) [NormedAddCommGroup X] [Dual X] (L : LegendreFenchelTransform X) (E : LegendreFenchelEvidence X L) :
    LegendreFenchelClosed X L := by
  exact And.intro E.fConvexClosed (And.intro E.fLscClosed (And.intro E.fProperClosed E.biconjugateEqualsClosed))

end FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean
end HautevilleHouse
