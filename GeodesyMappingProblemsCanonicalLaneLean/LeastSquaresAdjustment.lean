import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesyMappingProblemsCanonicalLaneLean

structure LeastSquaresAdjustment where
  observationEquations : Type u
  designMatrix : Type v
  weightMatrix : Type w
  normalEquationsFormed : Prop
  parameterEstimatesUnbiased : Prop
  varianceComponentEstimated : Prop

structure LeastSquaresAdjustmentEvidence (L : LeastSquaresAdjustment) where
  normalEquationsFormedClosed : L.normalEquationsFormed
  parameterEstimatesUnbiasedClosed : L.parameterEstimatesUnbiased
  varianceComponentEstimatedClosed : L.varianceComponentEstimated

def LeastSquaresAdjustmentClosed (L : LeastSquaresAdjustment) : Prop :=
  L.normalEquationsFormed ∧ L.parameterEstimatesUnbiased ∧ L.varianceComponentEstimated

theorem least_squares_adjustment_closed_from_evidence (L : LeastSquaresAdjustment)
    (E : LeastSquaresAdjustmentEvidence L) : LeastSquaresAdjustmentClosed L := by
  exact And.intro E.normalEquationsFormedClosed
    (And.intro E.parameterEstimatesUnbiasedClosed E.varianceComponentEstimatedClosed)

end GeodesyMappingProblemsCanonicalLaneLean
end HautevilleHouse
