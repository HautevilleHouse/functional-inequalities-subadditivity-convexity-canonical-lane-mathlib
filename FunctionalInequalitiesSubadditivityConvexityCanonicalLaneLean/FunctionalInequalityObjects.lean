import HautevilleHouse.FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean

structure NormedSpaceObject where
  carrier : Type
  norm : carrier → ℝ
  norm_nonneg : ∀ x : carrier, norm x ≥ 0
  norm_eq_zero_iff : ∀ x : carrier, norm x = 0 ↔ x = 0
  triangle_inequality : ∀ x y : carrier, norm (x + y) ≤ norm x + norm y
  norm_scalar : ∀ (a : ℝ) (x : carrier), norm (a • x) = |a| * norm x

structure ConvexFunctionObject where
  space : NormedSpaceObject
  f : space.carrier → ℝ
  convexity : ∀ x y : space.carrier, ∀ t : ℝ, t ≥ 0 → t ≤ 1 → f (t • x + (1 - t) • y) ≤ t * f x + (1 - t) * f y

structure SubadditiveFunctionalObject where
  space : NormedSpaceObject
  phi : space.carrier → ℝ
  subadditivity : ∀ x y : space.carrier, phi (x + y) ≤ phi x + phi y
  homogeneity : ∀ (λ : ℝ) (x : space.carrier), phi (λ • x) = |λ| * phi x

structure InequalityInstance where
  name : String
  statement : Prop
  known : Bool

end FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean
end HautevilleHouse