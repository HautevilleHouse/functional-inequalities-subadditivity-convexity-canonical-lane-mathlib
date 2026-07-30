import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean

structure SubadditiveFunctional (X : Type u) where
  domain : Set X
  codomain : Type v
  functional : X -> codomain
  subadditivity : forall x y : X, functional (x + y) ≤ functional x + functional y
  wellDefined : Prop

structure SubadditiveInequalityPackage where
  functional : SubadditiveFunctional ℕ ℝ
  inequalityClosed : Prop
  remainderCarried : Prop

def SubadditiveInequalityPackageClosed (P : SubadditiveInequalityPackage) : Prop :=
  P.inequalityClosed ∧ P.remainderCarried

end FunctionalInequalitiesSubadditivityConvexityCanonicalLaneLean
end HautevilleHouse