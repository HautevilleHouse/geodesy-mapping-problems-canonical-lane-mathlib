import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesyMappingProblemsCanonicalLaneLean

structure GeodesicMappingEquations where
  surface : Type u
  metric : Type v
  geodesicEquation : Prop
  exponentialMapDefined : Prop
  jacobiFields : Prop
  conjugateLocus : Prop

structure GeodesicMappingEquationsEvidence (E : GeodesicMappingEquations) where
  geodesicEquationClosed : E.geodesicEquation
  exponentialMapDefinedClosed : E.exponentialMapDefined
  jacobiFieldsClosed : E.jacobiFields
  conjugateLocusClosed : E.conjugateLocus

def GeodesicMappingEquationsClosed (E : GeodesicMappingEquations) : Prop :=
  E.geodesicEquation ∧ E.exponentialMapDefined ∧ E.jacobiFields ∧ E.conjugateLocus

theorem geodesic_mapping_equations_closed_from_evidence (E : GeodesicMappingEquations) (Ev : GeodesicMappingEquationsEvidence E) : GeodesicMappingEquationsClosed E := by
  exact And.intro Ev.geodesicEquationClosed (And.intro Ev.exponentialMapDefinedClosed (And.intro Ev.jacobiFieldsClosed Ev.conjugateLocusClosed))

end GeodesyMappingProblemsCanonicalLaneLean
end HautevilleHouse