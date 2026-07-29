import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesyMappingProblemsCanonicalLaneLean

structure CoordinateTransformationPackage where
  sourceCrs : String
  targetCrs : String
  transformationParameters : List ℝ
  accuracyEstimate : ℝ
  transformationDefined : Prop
  accuracyEstimated : Prop
  transformationDefinedTerm : transformationDefined
  accuracyEstimatedTerm : accuracyEstimated

structure CoordinateTransformationEvidence (C : CoordinateTransformationPackage) where
  transformationDefinedClosed : C.transformationDefined
  accuracyEstimatedClosed : C.accuracyEstimated

def CoordinateTransformationClosed (C : CoordinateTransformationPackage) : Prop :=
  C.transformationDefined ∧ C.accuracyEstimated

theorem coordinate_transformation_closed_from_evidence
    (C : CoordinateTransformationPackage)
    (E : CoordinateTransformationEvidence C) : CoordinateTransformationClosed C := by
  exact And.intro E.transformationDefinedClosed E.accuracyEstimatedClosed

end GeodesyMappingProblemsCanonicalLaneLean
end HautevilleHouse