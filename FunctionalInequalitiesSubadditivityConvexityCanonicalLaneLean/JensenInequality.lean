import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean

structure JensenInequalityPackage where
  convexFunction : Type u
  domainConvex : Prop
  measureSpace : Type v
  probabilityMeasure : Prop
  integralDefined : Prop
  jensenInequality : Prop

structure JensenInequalityEvidence (J : JensenInequalityPackage) where
  convexFunctionClosed : J.convexFunction
  domainConvexClosed : J.domainConvex
  measureSpaceClosed : J.measureSpace
  probabilityMeasureClosed : J.probabilityMeasure
  integralDefinedClosed : J.integralDefined
  jensenInequalityClosed : J.jensenInequality

def JensenInequalityClosed (J : JensenInequalityPackage) : Prop :=
  J.convexFunction ∧ J.domainConvex ∧ J.measureSpace ∧ J.probabilityMeasure ∧ J.integralDefined ∧ J.jensenInequality

theorem jensen_inequality_closed_from_evidence (J : JensenInequalityPackage) (E : JensenInequalityEvidence J) :
    JensenInequalityClosed J := by
  exact And.intro E.convexFunctionClosed
    (And.intro E.domainConvexClosed
      (And.intro E.measureSpaceClosed
        (And.intro E.probabilityMeasureClosed
          (And.intro E.integralDefinedClosed E.jensenInequalityClosed))))

end FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean
end HautevilleHouse