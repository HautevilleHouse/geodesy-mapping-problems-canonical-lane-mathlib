import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesyMappingProblemsCanonicalLaneLean

structure MapProjectionPackage where
  projectionType : String
  centralMeridian : ℝ
  standardParallels : List ℝ
  scaleFactor : ℝ
  falseEasting : ℝ
  falseNorthing : ℝ
  projectionDefined : Prop
  distortionLimits : Prop
  projectionDefinedTerm : projectionDefined
  distortionLimitsTerm : distortionLimits

structure MapProjectionEvidence (M : MapProjectionPackage) where
  projectionDefinedClosed : M.projectionDefined
  distortionLimitsClosed : M.distortionLimits

def MapProjectionClosed (M : MapProjectionPackage) : Prop :=
  M.projectionDefined ∧ M.distortionLimits

theorem map_projection_closed_from_evidence
    (M : MapProjectionPackage)
    (E : MapProjectionEvidence M) : MapProjectionClosed M := by
  exact And.intro E.projectionDefinedClosed E.distortionLimitsClosed

end GeodesyMappingProblemsCanonicalLaneLean
end HautevilleHouse