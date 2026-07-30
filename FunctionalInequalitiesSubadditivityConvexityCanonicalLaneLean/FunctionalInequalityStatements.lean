import HautevilleHouse.FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean.FunctionalInequalityObjects
import HautevilleHouse.FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean

def knownInequalities : List InequalityInstance :=
  [ { name := "Triangle inequality", statement := ∀ (X : NormedSpaceObject) (x y : X.carrier), X.triangle_inequality x y, known := true },
    { name := "Jensen's inequality", statement := ∀ (X : NormedSpaceObject) (f : ConvexFunctionObject X) (x y : X.carrier) (t : ℝ), t ≥ 0 → t ≤ 1 → f.f (t • x + (1 - t) • y) ≤ t * f.f x + (1 - t) * f.f y, known := true },
    { name := "Minkowski inequality", statement := ∀ (X : NormedSpaceObject) (x y : X.carrier), X.triangle_inequality x y, known := true },
    { name := "Cauchy-Schwarz inequality", statement := ∀ (X : NormedSpaceObject) (x y : X.carrier), |(inner x y)| ≤ X.norm x * X.norm y, known := false },
    { name := "Young's inequality", statement := ∀ (a b : ℝ) (p q : ℝ), p > 1 → (1/p + 1/q = 1) → a*b ≤ a^p/p + b^q/q, known := true },
    { name := "Holder's inequality", statement := ∀ (X : NormedSpaceObject) (f g : X.carrier) (p q : ℝ), p > 1 → (1/p + 1/q = 1) → |(inner f g)| ≤ X.norm f * X.norm g, known := false }
  ]

theorem known_inequalities_nonempty : knownInequalities ≠ [] :=
  by
    have h : knownInequalities = _ := rfl
    simp

end FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean
end HautevilleHouse