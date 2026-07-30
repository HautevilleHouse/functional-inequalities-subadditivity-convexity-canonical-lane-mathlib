import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean

structure YoungFunction where
  carrier : Type u
  convex : Prop
  subadditive : Prop
  doublingConstant : ℝ
  growthCondition : ℕ → Prop

structure YoungFunctionEvidence (Y : YoungFunction) where
  convexClosed : Y.convex
  subadditiveClosed : Y.subadditive
  doublingConstantFinite : Y.doublingConstant > 0
  growthConditionClosed : ∀ n : ℕ, Y.growthCondition n

def YoungFunctionClosed (Y : YoungFunction) : Prop :=
  Y.convex ∧ Y.subadditive ∧ Y.doublingConstant > 0 ∧ (∀ n : ℕ, Y.growthCondition n)

theorem young_function_closed_from_evidence (Y : YoungFunction) (E : YoungFunctionEvidence Y) :
    YoungFunctionClosed Y := by
  exact And.intro E.convexClosed (And.intro E.subadditiveClosed (And.intro E.doublingConstantFinite E.growthConditionClosed))

end FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean
end HautevilleHouse
