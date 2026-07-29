import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace GeodesyMappingProblemsCanonicalLaneLean

structure GeodesicSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  distance : carrier → carrier → ℝ
  metricAxioms : Prop

structure GeodesyAdmittedObject where
  space : GeodesicSpace
  complete : Prop
  simplyConnected : Prop
  sphereTwoModel : Type
  sphereTopology : TopologicalSpace sphereTwoModel
  homeomorphicToSphere : Prop
  conclusion : homeomorphicToSphere

structure GeodesyEndgameState where
  object : GeodesyAdmittedObject

def GeodesyWitnessClosed (O : GeodesyAdmittedObject) : Prop :=
  O.homeomorphicToSphere

end GeodesyMappingProblemsCanonicalLaneLean
end HautevilleHouse