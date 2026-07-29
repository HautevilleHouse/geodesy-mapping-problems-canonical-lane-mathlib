import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeodesyMappingProblemsCanonicalLaneLean.GeodeticReferenceEllipsoid

namespace HautevilleHouse
namespace GeodesyMappingProblemsCanonicalLaneLean

structure MapProjectionEquations (E : GeodeticReferenceEllipsoid) where
  forwardMapping : Type u
  inverseMapping : Type v
  scaleDistortion : ℝ → ℝ
  meridianConvergence : ℝ
  projectionPreservesAngles : Prop
  projectionPreservesAreas : Prop

def MapProjectionEquationsClosed {E : GeodeticReferenceEllipsoid} (M : MapProjectionEquations E) : Prop :=
  M.projectionPreservesAngles ∧ M.projectionPreservesAreas

end GeodesyMappingProblemsCanonicalLaneLean
end HautevilleHouse
