import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesyMappingProblemsCanonicalLaneLean

structure GeoidHeightModel where
  latitudeGrid : List ℝ
  longitudeGrid : List ℝ
  heightValues : List ℝ
  interpolationMethod : String
  accuracyEstimate : ℝ
  coverageConsistent : Prop

def GeoidHeightModelClosed (G : GeoidHeightModel) : Prop :=
  G.coverageConsistent

end GeodesyMappingProblemsCanonicalLaneLean
end HautevilleHouse
