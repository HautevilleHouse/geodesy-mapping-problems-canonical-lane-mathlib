import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesyMappingProblemsCanonicalLaneLean

structure SatelliteOrbitPerturbation where
  centralForceModel : Type u
  perturbationForces : List (String × ℝ)
  orbitIntegrationMethod : String
  accuracyRequirement : ℝ
  modelValidated : Prop

def SatelliteOrbitPerturbationClosed (S : SatelliteOrbitPerturbation) : Prop :=
  S.modelValidated

end GeodesyMappingProblemsCanonicalLaneLean
end HautevilleHouse
