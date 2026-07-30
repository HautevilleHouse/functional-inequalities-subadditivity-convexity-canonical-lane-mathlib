import FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean

structure SubadditivityPackage where
  carrierType : Type u
  addition : carrierType → carrierType → carrierType
  subadditiveFunction : carrierType → ℝ
  subadditivityProperty : ∀ x y, subadditiveFunction (addition x y) ≤ subadditiveFunction x + subadditiveFunction y

def SubadditivityClosed (P : SubadditivityPackage) : Prop :=
  P.subadditivityProperty

theorem subadditivity_identity (P : SubadditivityPackage) : SubadditivityClosed P :=
  P.subadditivityProperty

end FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean
end HautevilleHouse