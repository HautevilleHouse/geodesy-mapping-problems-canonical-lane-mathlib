import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesyMappingProblemsCanonicalLaneLean

structure AdmissibleClass where
  object : GeodesyAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  GeodesyWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end GeodesyMappingProblemsCanonicalLaneLean
end HautevilleHouse
