import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesyMappingProblemsCanonicalLaneLean

structure GeodesicBVPEvidence where
  dirichletProblemSolved : Prop
  neumannProblemSolved : Prop
  boundaryRegularity : Prop
  existenceOfMinimizers : Prop

def BVPClosed (E : GeodesicBVPEvidence) : Prop :=
  E.dirichletProblemSolved ∧ E.neumannProblemSolved ∧ E.boundaryRegularity ∧ E.existenceOfMinimizers

theorem bvp_closed (E : GeodesicBVPEvidence) : BVPClosed E :=
  And.intro E.dirichletProblemSolved (And.intro E.neumannProblemSolved (And.intro E.boundaryRegularity E.existenceOfMinimizers))

end GeodesyMappingProblemsCanonicalLaneLean
end HautevilleHouse