import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesyMappingProblemsCanonicalLaneLean

structure GeodeticReferenceSurface where
  semiMajorAxis : ℕ
  flattening : ℚ
  surfaceType : String

structure EllipsoidalCoordinates where
  latitude : ℚ
  longitude : ℚ
  height : ℚ

structure GeodeticGeometry where
  referenceSurface : GeodeticReferenceSurface
  coordinates : EllipsoidalCoordinates
  localCurvature : ℚ
  metricTensor : ℚ → ℚ → ℚ

structure GeodeticGeometryEvidence (G : GeodeticGeometry) where
  surfaceDefined : G.referenceSurface.semiMajorAxis > 0
  flatteningValid : G.referenceSurface.flattening > 0 ∧ G.referenceSurface.flattening < 1
  coordinatesInRange : G.coordinates.latitude ≥ -90 ∧ G.coordinates.latitude ≤ 90 ∧ G.coordinates.longitude ≥ -180 ∧ G.coordinates.longitude ≤ 180
  metricTensorPositiveDefinite : G.metricTensor 0 0 > 0 ∧ G.metricTensor 1 1 > 0

def GeodeticGeometryClosed (G : GeodeticGeometry) : Prop :=
  G.referenceSurface.semiMajorAxis > 0 ∧
  (G.referenceSurface.flattening > 0 ∧ G.referenceSurface.flattening < 1) ∧
  (G.coordinates.latitude ≥ -90 ∧ G.coordinates.latitude ≤ 90 ∧ G.coordinates.longitude ≥ -180 ∧ G.coordinates.longitude ≤ 180) ∧
  (G.metricTensor 0 0 > 0 ∧ G.metricTensor 1 1 > 0)

theorem geodetic_geometry_closed_from_evidence (G : GeodeticGeometry) (E : GeodeticGeometryEvidence G) :
    GeodeticGeometryClosed G := by
  exact And.intro E.surfaceDefined (And.intro E.flatteningValid (And.intro E.coordinatesInRange E.metricTensorPositiveDefinite))

end GeodesyMappingProblemsCanonicalLaneLean
end HautevilleHouse