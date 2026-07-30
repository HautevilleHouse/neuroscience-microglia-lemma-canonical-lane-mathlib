import NeuroscienceMicrogliaLemmaCanonicalLaneLean.MicrogliaAdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMicrogliaLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  microgliaWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end NeuroscienceMicrogliaLemmaCanonicalLaneLean
end HautevilleHouse