import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesyMappingProblemsCanonicalLaneLean

structure OptimalMapProjectionPackage {G : GeodeticGeometry}
    {M : MapProjectionPDESystem G} {S : ShortTimeMapProjectionExistencePackage M}
    (D : DistortionFunctionalPackage) where
  minimizerProjection : MapProjectionPDESystem G
  optimalScaleFactor : ℚ
  minimalDistortionValue : ℚ
  uniqueness : Prop

structure OptimalMapProjectionEvidence {G : GeodeticGeometry}
    {M : MapProjectionPDESystem G} {S : ShortTimeMapProjectionExistencePackage M}
    {D : DistortionFunctionalPackage} (O : OptimalMapProjectionPackage D) where
  optimalScaleFactorPositive : O.optimalScaleFactor > 0
  minimalDistortionReached : O.minimalDistortionValue < 1
  uniquenessClosed : O.uniqueness

def OptimalMapProjectionClosed {G : GeodeticGeometry}
    {M : MapProjectionPDESystem G} {S : ShortTimeMapProjectionExistencePackage M}
    {D : DistortionFunctionalPackage} (O : OptimalMapProjectionPackage D) : Prop :=
  O.optimalScaleFactor > 0 ∧ O.minimalDistortionValue < 1 ∧ O.uniqueness

theorem optimal_map_projection_closed_from_evidence {G : GeodeticGeometry}
    {M : MapProjectionPDESystem G} {S : ShortTimeMapProjectionExistencePackage M}
    {D : DistortionFunctionalPackage} (O : OptimalMapProjectionPackage D)
    (E : OptimalMapProjectionEvidence O) : OptimalMapProjectionClosed O := by
  exact And.intro E.optimalScaleFactorPositive (And.intro E.minimalDistortionReached E.uniquenessClosed)

end GeodesyMappingProblemsCanonicalLaneLean
end HautevilleHouse