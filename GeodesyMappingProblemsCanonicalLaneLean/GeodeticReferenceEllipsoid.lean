import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesyMappingProblemsCanonicalLaneLean

structure GeodeticReferenceEllipsoid where
  semiMajorAxis : ℝ
  flattening : ℝ
  semiMinorAxis : ℝ
  eccentricitySquared : ℝ
  referenceFrame : String
  derivedParamsConsistent : Prop

def GeodeticReferenceEllipsoidClosed (E : GeodeticReferenceEllipsoid) : Prop :=
  E.derivedParamsConsistent

end GeodesyMappingProblemsCanonicalLaneLean
end HautevilleHouse
