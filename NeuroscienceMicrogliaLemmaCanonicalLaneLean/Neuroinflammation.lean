import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMicrogliaLemmaCanonicalLaneLean

structure NeuroinflammationPackage where
  inflammatoryTrigger : Type u
  cytokineCascade : Type v
  chronicActivation : Prop
  neuronalDamage : Prop
  resolutionPhase : Prop

structure NeuroinflammationEvidence (N : NeuroinflammationPackage) where
  chronicActivationClosed : N.chronicActivation
  neuronalDamageClosed : N.neuronalDamage
  resolutionPhaseClosed : N.resolutionPhase

def NeuroinflammationClosed (N : NeuroinflammationPackage) : Prop :=
  N.chronicActivation ∧ N.neuronalDamage ∧ N.resolutionPhase

theorem neuroinflammation_closed_from_evidence (N : NeuroinflammationPackage)
    (E : NeuroinflammationEvidence N) : NeuroinflammationClosed N := by
  exact And.intro E.chronicActivationClosed
    (And.intro E.neuronalDamageClosed E.resolutionPhaseClosed)

end NeuroscienceMicrogliaLemmaCanonicalLaneLean
end HautevilleHouse