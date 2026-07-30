import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean

structure YoungConvolutionInequalityPackage where
  group : Type u
  convolution : (group → ℝ) → (group → ℝ) → group → ℝ
  lpNorm : (group → ℝ) → ℝ → ℝ
  p : ℝ
  q : ℝ
  r : ℝ
  conjugateCondition : 1/r = 1/p + 1/q - 1
  youngInequality : ∀ f g : group → ℝ, lpNorm (convolution f g) r ≤ lpNorm f p * lpNorm g q

structure YoungConvolutionInequalityEvidence (Y : YoungConvolutionInequalityPackage) where
  conjugateConditionClosed : Y.conjugateCondition
  youngInequalityClosed : Y.youngInequality

def YoungConvolutionInequalityClosed (Y : YoungConvolutionInequalityPackage) : Prop :=
  Y.conjugateCondition ∧ Y.youngInequality

theorem young_convolution_inequality_closed_from_evidence (Y : YoungConvolutionInequalityPackage) (E : YoungConvolutionInequalityEvidence Y) : YoungConvolutionInequalityClosed Y := by
  exact And.intro E.conjugateConditionClosed E.youngInequalityClosed

end FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean
end HautevilleHouse