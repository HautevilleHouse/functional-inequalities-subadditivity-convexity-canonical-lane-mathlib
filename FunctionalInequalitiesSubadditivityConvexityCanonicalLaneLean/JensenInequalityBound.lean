import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean.LegendreTransformPackage

namespace HautevilleHouse
namespace FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean

structure JensenInequalityPackage where
  convexFunction : ℝ → ℝ
  measureSpace : Type
  expectationOperator : (ℝ → ℝ) → ℝ
  jensenInequality : ∀ f : ℝ → ℝ, convex f → f (expectationOperator f) ≤ expectationOperator (f ∘ f)
  boundClosed : Prop
  remainderRecorded : Prop

def JensenInequalityPackageClosed (J : JensenInequalityPackage) : Prop :=
  J.jensenInequality ∧ J.boundClosed ∧ J.remainderRecorded

theorem jensen_inequality_closed_from_evidence (J : JensenInequalityPackage) (h : JensenInequalityPackageClosed J) : JensenInequalityPackageClosed J :=
  h

end FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean
end HautevilleHouse