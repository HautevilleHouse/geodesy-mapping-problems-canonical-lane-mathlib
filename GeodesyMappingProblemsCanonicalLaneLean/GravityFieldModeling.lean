import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesyMappingProblemsCanonicalLaneLean

structure GravityFieldModeling where
  earthModel : Type u
  potentialFunction : Type v
  sphericalHarmonics : Type w
  stokesCoefficients : Prop
  boundaryValueProblem : Prop
  solutionUniqueness : Prop

structure GravityFieldModelingEvidence (G : GravityFieldModeling) where
  stokesCoefficientsClosed : G.stokesCoefficients
  boundaryValueProblemClosed : G.boundaryValueProblem
  solutionUniquenessClosed : G.solutionUniqueness

def GravityFieldModelingClosed (G : GravityFieldModeling) : Prop :=
  G.stokesCoefficients ∧ G.boundaryValueProblem ∧ G.solutionUniqueness

theorem gravity_field_modeling_closed_from_evidence (G : GravityFieldModeling)
    (E : GravityFieldModelingEvidence G) : GravityFieldModelingClosed G := by
  exact And.intro E.stokesCoefficientsClosed
    (And.intro E.boundaryValueProblemClosed E.solutionUniquenessClosed)

end GeodesyMappingProblemsCanonicalLaneLean
end HautevilleHouse
