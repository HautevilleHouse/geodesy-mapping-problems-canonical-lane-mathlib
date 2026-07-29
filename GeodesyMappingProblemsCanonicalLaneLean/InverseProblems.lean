import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesyMappingProblemsCanonicalLaneLean

structure InverseProblems where
  parameterEstimation : Prop
  regularization : Prop
  uniqueness : Prop
  stability : Prop

structure InverseProblemsEvidence (I : InverseProblems) where
  parameterEstimationClosed : I.parameterEstimation
  regularizationClosed : I.regularization
  uniquenessClosed : I.uniqueness
  stabilityClosed : I.stability

def InverseProblemsClosed (I : InverseProblems) : Prop :=
  I.parameterEstimation ∧ I.regularization ∧ I.uniqueness ∧ I.stability

theorem inverse_problems_closed_from_evidence (I : InverseProblems) (Ev : InverseProblemsEvidence I) : InverseProblemsClosed I := by
  exact And.intro Ev.parameterEstimationClosed (And.intro Ev.regularizationClosed (And.intro Ev.uniquenessClosed Ev.stabilityClosed))

end GeodesyMappingProblemsCanonicalLaneLean
end HautevilleHouse