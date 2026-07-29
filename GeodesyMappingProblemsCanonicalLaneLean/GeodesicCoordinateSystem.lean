import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesyMappingProblemsCanonicalLaneLean

structure GeodesicCoordinateSystem where
  surface : Type u
  topology : TopologicalSpace surface
  riemannianMetric : Type v
  geodesicCoordinateChart : Type w
  transitionMaps : Prop
  coordinateSingularities : Prop
  compatibilityConditions : Prop

structure GeodesicCoordinateEvidence (G : GeodesicCoordinateSystem) where
  transitionMapsClosed : G.transitionMaps
  coordinateSingularitiesClosed : G.coordinateSingularities
  compatibilityConditionsClosed : G.compatibilityConditions

def GeodesicCoordinateClosed (G : GeodesicCoordinateSystem) : Prop :=
  G.transitionMaps ∧ G.coordinateSingularities ∧ G.compatibilityConditions

theorem geodesic_coordinate_closed_from_evidence (G : GeodesicCoordinateSystem)
    (E : GeodesicCoordinateEvidence G) : GeodesicCoordinateClosed G := by
  exact And.intro E.transitionMapsClosed
    (And.intro E.coordinateSingularitiesClosed E.compatibilityConditionsClosed)

end GeodesyMappingProblemsCanonicalLaneLean
end HautevilleHouse
