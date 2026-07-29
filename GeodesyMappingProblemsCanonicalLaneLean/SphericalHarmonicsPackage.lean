import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace GeodesyMappingProblemsCanonicalLaneLean

structure SphericalHarmonicsPackage where
  harmonicBasis : Type u
  orthonormality : Prop
  completeness : Prop
  laplacianEigenfunctions : Prop

data HarmonicsClosed (H : SphericalHarmonicsPackage) : Prop :=
| closed (h : H.orthonormality ∧ H.completeness ∧ H.laplacianEigenfunctions)

end GeodesyMappingProblemsCanonicalLaneLean
end HautevilleHouse