import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesyMappingProblemsCanonicalLaneLean

structure GravityAnomalyPackage where
  gravityField : Type u
  anomalyModel : Prop
  upwardContinuation : Prop
  terrainCorrection : Prop
  isostaticCompensation : Prop

def GravityAnomalyClosed (G : GravityAnomalyPackage) : Prop :=
  G.anomalyModel ∧ G.upwardContinuation ∧ G.terrainCorrection ∧ G.isostaticCompensation

end GeodesyMappingProblemsCanonicalLaneLean
end HautevilleHouse