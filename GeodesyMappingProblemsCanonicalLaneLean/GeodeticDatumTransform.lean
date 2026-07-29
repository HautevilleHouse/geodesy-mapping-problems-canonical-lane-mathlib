import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesyMappingProblemsCanonicalLaneLean

structure GeodeticDatumTransform where
  sourceDatum : Type u
  targetDatum : Type v
  transformationParameters : Type w
  helmertTransformation : Prop
  residualsMinimized : Prop
  consistencyWithObservations : Prop

structure GeodeticDatumTransformEvidence (D : GeodeticDatumTransform) where
  helmertTransformationClosed : D.helmertTransformation
  residualsMinimizedClosed : D.residualsMinimized
  consistencyWithObservationsClosed : D.consistencyWithObservations

def GeodeticDatumTransformClosed (D : GeodeticDatumTransform) : Prop :=
  D.helmertTransformation ∧ D.residualsMinimized ∧ D.consistencyWithObservations

theorem geodetic_datum_transform_closed_from_evidence (D : GeodeticDatumTransform)
    (E : GeodeticDatumTransformEvidence D) : GeodeticDatumTransformClosed D := by
  exact And.intro E.helmertTransformationClosed
    (And.intro E.residualsMinimizedClosed E.consistencyWithObservationsClosed)

end GeodesyMappingProblemsCanonicalLaneLean
end HautevilleHouse
