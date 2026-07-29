import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesyMappingProblemsCanonicalLaneLean

structure TriangulationSurveyNetwork where
  stations : Type u
  baselineLengths : Type v
  angleMeasurements : Type w
  networkRedundancy : Prop
  adjustmentSolved : Prop
  errorPropagationControlled : Prop

structure TriangulationSurveyEvidence (N : TriangulationSurveyNetwork) where
  networkRedundancyClosed : N.networkRedundancy
  adjustmentSolvedClosed : N.adjustmentSolved
  errorPropagationControlledClosed : N.errorPropagationControlled

def TriangulationSurveyClosed (N : TriangulationSurveyNetwork) : Prop :=
  N.networkRedundancy ∧ N.adjustmentSolved ∧ N.errorPropagationControlled

theorem triangulation_survey_closed_from_evidence (N : TriangulationSurveyNetwork)
    (E : TriangulationSurveyEvidence N) : TriangulationSurveyClosed N := by
  exact And.intro E.networkRedundancyClosed
    (And.intro E.adjustmentSolvedClosed E.errorPropagationControlledClosed)

end GeodesyMappingProblemsCanonicalLaneLean
end HautevilleHouse
