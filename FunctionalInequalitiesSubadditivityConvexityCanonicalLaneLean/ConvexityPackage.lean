import FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean

structure ConvexityPackage where
  vectorSpace : Type u
  convexSet : Set vectorSpace
  convexCombination : vectorSpace → vectorSpace → ℝ → vectorSpace
  convexProperty : ∀ x y ∈ convexSet, ∀ t ∈ Set.Icc (0:ℝ) 1, convexCombination x y t ∈ convexSet

def ConvexityClosed (C : ConvexityPackage) : Prop :=
  C.convexProperty

theorem convexity_identity (C : ConvexityPackage) : ConvexityClosed C :=
  C.convexProperty

end FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean
end HautevilleHouse