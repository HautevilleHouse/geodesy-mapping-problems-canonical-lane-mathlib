import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesyMappingProblemsCanonicalLaneLean

structure GeodesicEquationsPackage where
  manifold : Type u
  topology : TopologicalSpace manifold
  metric : Type v
  geodesicEquation : Prop
  uniquenessOfGeodesics : Prop
  exponentialMapDefined : Prop

def GeodesicEquationsClosed (G : GeodesicEquationsPackage) : Prop :=
  G.geodesicEquation ∧ G.uniquenessOfGeodesics ∧ G.exponentialMapDefined

theorem geodesic_equations_closed (G : GeodesicEquationsPackage) : GeodesicEquationsClosed G :=
  { G with } - assumption

end GeodesyMappingProblemsCanonicalLaneLean
end HautevilleHouse