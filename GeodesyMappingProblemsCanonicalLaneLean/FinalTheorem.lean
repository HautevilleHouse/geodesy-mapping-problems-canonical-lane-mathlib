import canonicalLaneMathlib.AdmissibleClass
import GeodesyMappingProblemsCanonicalLaneLean.BridgeLemmas
import GeodesyMappingProblemsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace GeodesyMappingProblemsCanonicalLaneLean

def ConstrainedGeodesyMappingClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_geodesy_mapping_endgame (A : AdmissibleClass) :
    ConstrainedGeodesyMappingClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end GeodesyMappingProblemsCanonicalLaneLean
end HautevilleHouse