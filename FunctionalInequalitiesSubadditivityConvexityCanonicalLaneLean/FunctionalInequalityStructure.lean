import FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean.SubadditivityPackage
import FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean.ConvexityPackage

namespace HautevilleHouse
namespace FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean

structure FunctionalInequalityStructure (S : SubadditivityPackage) (C : ConvexityPackage) where
  domain : S.carrierType → C.vectorSpace
  inequality : ∀ x y, S.subadditiveFunction (S.addition x y) ≤ C.convexCombination (domain x) (domain y) 0.5

def FunctionalInequalityClosed {S : SubadditivityPackage} {C : ConvexityPackage}
    (F : FunctionalInequalityStructure S C) : Prop :=
  F.inequality

theorem functional_inequality_identity {S : SubadditivityPackage} {C : ConvexityPackage}
    (F : FunctionalInequalityStructure S C) : FunctionalInequalityClosed F :=
  F.inequality

end FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean
end HautevilleHouse