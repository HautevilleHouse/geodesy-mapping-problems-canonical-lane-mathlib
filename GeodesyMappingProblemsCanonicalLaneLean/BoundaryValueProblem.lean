import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesyMappingProblemsCanonicalLaneLean

structure BoundaryValueProblem where
  domain : Type u
  boundaryCondition : Type v
  solutionOperator : Type w
  problemWellPosed : Prop
  solutionExistence : Prop
  solutionUniqueness : Prop
  solutionStability : Prop

def BoundaryValueProblemClosed (B : BoundaryValueProblem) : Prop :=
  B.problemWellPosed ∧ B.solutionExistence ∧ B.solutionUniqueness ∧ B.solutionStability

end GeodesyMappingProblemsCanonicalLaneLean
end HautevilleHouse
