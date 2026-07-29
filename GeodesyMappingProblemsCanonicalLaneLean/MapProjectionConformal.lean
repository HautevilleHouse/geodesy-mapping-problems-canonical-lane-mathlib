import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesyMappingProblemsCanonicalLaneLean

structure MapProjectionConformal where
  sourceSurface : Type u
  targetPlane : Type v
  projectionMap : sourceSurface → targetPlane
  scaleFactorIndependent : Prop
  anglePreservation : Prop
  conformalityCondition : Prop

structure MapProjectionConformalEvidence (P : MapProjectionConformal) where
  scaleFactorIndependentClosed : P.scaleFactorIndependent
  anglePreservationClosed : P.anglePreservation
  conformalityConditionClosed : P.conformalityCondition

def MapProjectionConformalClosed (P : MapProjectionConformal) : Prop :=
  P.scaleFactorIndependent ∧ P.anglePreservation ∧ P.conformalityCondition

theorem map_projection_conformal_closed_from_evidence (P : MapProjectionConformal)
    (E : MapProjectionConformalEvidence P) : MapProjectionConformalClosed P := by
  exact And.intro E.scaleFactorIndependentClosed
    (And.intro E.anglePreservationClosed E.conformalityConditionClosed)

end GeodesyMappingProblemsCanonicalLaneLean
end HautevilleHouse
