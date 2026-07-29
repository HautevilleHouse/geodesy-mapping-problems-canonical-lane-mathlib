import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesyMappingProblemsCanonicalLaneLean

structure CoordinateSystems where
  geographicCoordinates : Prop
  projectionFormulas : Prop
  datumTransformations : Prop
  distortionMeasures : Prop

structure CoordinateSystemsEvidence (C : CoordinateSystems) where
  geographicCoordinatesClosed : C.geographicCoordinates
  projectionFormulasClosed : C.projectionFormulas
  datumTransformationsClosed : C.datumTransformations
  distortionMeasuresClosed : C.distortionMeasures

def CoordinateSystemsClosed (C : CoordinateSystems) : Prop :=
  C.geographicCoordinates ∧ C.projectionFormulas ∧ C.datumTransformations ∧ C.distortionMeasures

theorem coordinate_systems_closed_from_evidence (C : CoordinateSystems) (Ev : CoordinateSystemsEvidence C) : CoordinateSystemsClosed C := by
  exact And.intro Ev.geographicCoordinatesClosed (And.intro Ev.projectionFormulasClosed (And.intro Ev.datumTransformationsClosed Ev.distortionMeasuresClosed))

end GeodesyMappingProblemsCanonicalLaneLean
end HautevilleHouse