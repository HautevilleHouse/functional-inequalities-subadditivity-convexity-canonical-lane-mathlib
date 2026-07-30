import HautevilleHouse.FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean

structure ConvexityEvidence {X : NormedSpaceObject} (f : ConvexFunctionObject X) where
  convexityClosed : f.convexity

def ConvexityClosed {X : NormedSpaceObject} (f : ConvexFunctionObject X) : Prop :=
  f.convexity

theorem convexity_closed_from_evidence {X : NormedSpaceObject} (f : ConvexFunctionObject X)
    (e : ConvexityEvidence f) : ConvexityClosed f := e.convexityClosed

structure SubadditivityEvidence {X : NormedSpaceObject} (phi : SubadditiveFunctionalObject X) where
  subadditivityClosed : phi.subadditivity
  homogeneityClosed : phi.homogeneity

def SubadditivityClosed {X : NormedSpaceObject} (phi : SubadditiveFunctionalObject X) : Prop :=
  phi.subadditivity ∧ phi.homogeneity

theorem subadditivity_closed_from_evidence {X : NormedSpaceObject} (phi : SubadditiveFunctionalObject X)
    (e : SubadditivityEvidence phi) : SubadditivityClosed phi :=
  And.intro e.subadditivityClosed e.homogeneityClosed

end FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean
end HautevilleHouse