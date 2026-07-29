import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.GeodesyMappingProblemsCanonicalLaneLean.GeodeticReferenceEllipsoid

namespace HautevilleHouse
namespace GeodesyMappingProblemsCanonicalLaneLean

structure GeodeticDatumTransformation (E1 E2 : GeodeticReferenceEllipsoid) where
  translationVector : ℝ × ℝ × ℝ
  rotationVector : ℝ × ℝ × ℝ
  scaleFactor : ℝ
  transformationParametersConsistent : Prop
  errorEstimate : ℝ

def GeodeticDatumTransformationClosed {E1 E2 : GeodeticReferenceEllipsoid} (T : GeodeticDatumTransformation E1 E2) : Prop :=
  T.transformationParametersConsistent

end GeodesyMappingProblemsCanonicalLaneLean
end HautevilleHouse
