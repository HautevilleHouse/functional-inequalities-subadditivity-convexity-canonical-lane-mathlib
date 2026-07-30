import canonicalLaneMathlib.AdmissibleClass

/-!
# Convex Analytic Foundation
-/

namespace HautevilleHouse
namespace FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean

structure ConvexAnalyticFoundation where
  convexity : ConvexDualityPackage
  convexityEvidence : ConvexDualityEvidence convexity
  subadditivity : SubadditivityPackage
  subadditivityEvidence : SubadditivityEvidence subadditivity
  inequalities : FunctionalInequalitiesPackage
  inequalitiesEvidence : FunctionalInequalitiesEvidence inequalities

def ConvexAnalyticFoundationClosed (A : ConvexAnalyticFoundation) : Prop :=
  ConvexDualityClosed A.convexity ∧ SubadditivityClosed A.subadditivity ∧ FunctionalInequalitiesClosed A.inequalities

theorem convex_analytic_foundation_closed_from_evidence (A : ConvexAnalyticFoundation) :
    ConvexAnalyticFoundationClosed A := by
  exact And.intro (convex_duality_closed_from_evidence A.convexity A.convexityEvidence)
    (And.intro (subadditivity_closed_from_evidence A.subadditivity A.subadditivityEvidence)
      (functional_inequalities_closed_from_evidence A.inequalities A.inequalitiesEvidence))

end FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean
end HautevilleHouse
