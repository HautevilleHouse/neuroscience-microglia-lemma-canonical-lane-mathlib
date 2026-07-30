import NeuroscienceMicrogliaLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace NeuroscienceMicrogliaLemmaCanonicalLaneLean

def ConstrainedMicrogliaClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_microglia_endgame (A : AdmissibleClass) :
    ConstrainedMicrogliaClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceMicrogliaLemmaCanonicalLaneLean
end HautevilleHouse
