import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesyMappingProblemsCanonicalLaneLean

structure ShortTimeMapProjectionExistencePackage {G : GeodeticGeometry}
    (M : MapProjectionPDESystem G) where
  initialConditionRegular : Prop
  localExistenceInterval : Prop
  uniquenessOnOverlap : Prop
  smoothDependence : Prop

structure ShortTimeMapProjectionExistenceEvidence {G : GeodeticGeometry}
    {M : MapProjectionPDESystem G} (S : ShortTimeMapProjectionExistencePackage M) where
  initialConditionRegularClosed : S.initialConditionRegular
  localExistenceIntervalClosed : S.localExistenceInterval
  uniquenessOnOverlapClosed : S.uniquenessOnOverlap
  smoothDependenceClosed : S.smoothDependence

def ShortTimeMapProjectionExistenceClosed {G : GeodeticGeometry}
    {M : MapProjectionPDESystem G} (S : ShortTimeMapProjectionExistencePackage M) : Prop :=
  S.initialConditionRegular ∧ S.localExistenceInterval ∧ S.uniquenessOnOverlap ∧ S.smoothDependence

theorem short_time_map_projection_existence_closed_from_evidence {G : GeodeticGeometry}
    {M : MapProjectionPDESystem G} (S : ShortTimeMapProjectionExistencePackage M)
    (E : ShortTimeMapProjectionExistenceEvidence S) : ShortTimeMapProjectionExistenceClosed S := by
  exact And.intro E.initialConditionRegularClosed
    (And.intro E.localExistenceIntervalClosed
      (And.intro E.uniquenessOnOverlapClosed E.smoothDependenceClosed))

end GeodesyMappingProblemsCanonicalLaneLean
end HautevilleHouse