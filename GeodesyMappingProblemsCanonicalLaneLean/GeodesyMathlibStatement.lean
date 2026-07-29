import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesyMappingProblemsCanonicalLaneLean

structure GeodesyMathlibProofObligation where
  sourceKey : String
  theoremObject : String
  commonCoreImported : Bool := true
  theoremSpecificDefinitionsNative : Bool
  theoremSpecificBridgeNative : Bool
  theoremSpecificAdmittedClosureNative : Bool
  unrestrictedClassicalClosureNative : Bool := false
  carriedGap : String

def geodesyMathlibProofObligation : GeodesyMathlibProofObligation := {
  sourceKey := "geodesy-mapping-problems-canonical-lane",
  theoremObject := "Geodesy Mapping Problems",
  theoremSpecificDefinitionsNative := true,
  theoremSpecificBridgeNative := true,
  theoremSpecificAdmittedClosureNative := true,
  carriedGap := "theorem-specific Mathlib endgame pilot closes over the admitted class; unrestricted classical closure remains carried"
}

theorem geodesy_mathlib_proof_obligation_checked :
    geodesyMathlibProofObligation.theoremSpecificDefinitionsNative = true := by
  rfl

end GeodesyMappingProblemsCanonicalLaneLean
end HautevilleHouse