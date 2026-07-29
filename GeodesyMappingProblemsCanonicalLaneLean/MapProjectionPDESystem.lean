import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesyMappingProblemsCanonicalLaneLean

structure MapProjectionPDESystem (G : GeodeticGeometry) where
  projectionType : String
  scaleFactor : ℚ
  distortionModel : ℚ → ℚ → ℚ
  boundaryCondition : ℚ → ℚ → Prop

structure MapProjectionPDEEvidence {G : GeodeticGeometry} (M : MapProjectionPDESystem G) where
  scaleFactorPositive : M.scaleFactor > 0
  boundarySatisfied : ∀ (x : ℚ) (y : ℚ), M.boundaryCondition x y

def MapProjectionPDEClosed {G : GeodeticGeometry} (M : MapProjectionPDESystem G) : Prop :=
  M.scaleFactor > 0 ∧ (∀ (x : ℚ) (y : ℚ), M.boundaryCondition x y)

theorem map_projection_pde_closed_from_evidence {G : GeodeticGeometry} (M : MapProjectionPDESystem G)
    (E : MapProjectionPDEEvidence M) : MapProjectionPDEClosed M := by
  exact And.intro E.scaleFactorPositive E.boundarySatisfied

end GeodesyMappingProblemsCanonicalLaneLean
end HautevilleHouse