import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesyMappingProblemsCanonicalLaneLean

structure GeodeticReferenceSurfacePackage where
  ellipsoidSemiMajorAxis : ℝ
  ellipsoidFlattening : ℝ
  referenceEllipsoidDefined : Prop
  geoidUndulation : ℝ
  referenceFrameOrientation : Prop
  referenceEllipsoidDefinedTerm : referenceEllipsoidDefined
  referenceFrameOrientationTerm : referenceFrameOrientation

structure GeodeticReferenceSurfaceEvidence (G : GeodeticReferenceSurfacePackage) where
  referenceEllipsoidDefinedClosed : G.referenceEllipsoidDefined
  referenceFrameOrientationClosed : G.referenceFrameOrientation

def GeodeticReferenceSurfaceClosed (G : GeodeticReferenceSurfacePackage) : Prop :=
  G.referenceEllipsoidDefined ∧ G.referenceFrameOrientation

theorem geodetic_reference_surface_closed_from_evidence
    (G : GeodeticReferenceSurfacePackage)
    (E : GeodeticReferenceSurfaceEvidence G) : GeodeticReferenceSurfaceClosed G := by
  exact And.intro E.referenceEllipsoidDefinedClosed E.referenceFrameOrientationClosed

end GeodesyMappingProblemsCanonicalLaneLean
end HautevilleHouse