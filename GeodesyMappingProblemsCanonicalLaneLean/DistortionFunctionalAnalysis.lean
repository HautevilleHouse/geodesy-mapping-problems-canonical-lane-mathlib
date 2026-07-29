import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesyMappingProblemsCanonicalLaneLean

structure DistortionFunctionalPackage {G : GeodeticGeometry}
    {M : MapProjectionPDESystem G} where
  distortionFunctionalDefined : Prop
  monotonicityCondition : Prop
  lowerBoundEstablished : Prop
  minimizerExists : Prop

structure DistortionFunctionalEvidence {G : GeodeticGeometry}
    {M : MapProjectionPDESystem G} {S : ShortTimeMapProjectionExistencePackage M}
    (D : DistortionFunctionalPackage) where
  distortionFunctionalDefinedClosed : D.distortionFunctionalDefined
  monotonicityConditionClosed : D.monotonicityCondition
  lowerBoundEstablishedClosed : D.lowerBoundEstablished
  minimizerExistsClosed : D.minimizerExists

def DistortionFunctionalClosed {G : GeodeticGeometry}
    {M : MapProjectionPDESystem G} {S : ShortTimeMapProjectionExistencePackage M}
    (D : DistortionFunctionalPackage) : Prop := D.distortionFunctionalDefined ∧ D.monotonicityCondition ∧ D.lowerBoundEstablished ∧ D.minimizerExists

theorem distortion_functional_closed_from_evidence {G : GeodeticGeometry}
    {M : MapProjectionPDESystem G} {S : ShortTimeMapProjectionExistencePackage M}
    (D : DistortionFunctionalPackage) (E : DistortionFunctionalEvidence D) : DistortionFunctionalClosed D := by
  exact And.intro E.distortionFunctionalDefinedClosed
    (And.intro E.monotonicityConditionClosed
      (And.intro E.lowerBoundEstablishedClosed E.minimizerExistsClosed))

end GeodesyMappingProblemsCanonicalLaneLean
end HautevilleHouse