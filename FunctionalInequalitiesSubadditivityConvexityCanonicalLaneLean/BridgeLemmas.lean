import FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  bridgeClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean
end HautevilleHouse