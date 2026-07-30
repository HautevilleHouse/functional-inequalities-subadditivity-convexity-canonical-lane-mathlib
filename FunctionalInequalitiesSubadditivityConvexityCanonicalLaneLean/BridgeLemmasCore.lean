import FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean

theorem bridge_from_subadditivity (A : AdmissibleClass) (S : SubadditivityPackage) : bridgeClosed A := by
  exact A.object.conclusion

theorem gate_from_convexity (A : AdmissibleClass) (C : ConvexityPackage) : gateClosed A := by
  exact A.gateWitness

end FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean
end HautevilleHouse