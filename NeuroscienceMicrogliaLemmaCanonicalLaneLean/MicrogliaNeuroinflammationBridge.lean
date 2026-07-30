import NeuroscienceMicrogliaLemmaCanonicalLaneLean.MicrogliaResponseDynamics

namespace HautevilleHouse
namespace NeuroscienceMicrogliaLemmaCanonicalLaneLean

structure NeuroinflammationPackage where
  microglialActivation : Prop
  cytokineRelease : Prop
  reactiveOxygenSpecies : Prop
  bloodBrainBarrierIntegrity : Prop

structure NeuroinflammationEvidence (N : NeuroinflammationPackage) where
  microglialActivationClosed : N.microglialActivation
  cytokineReleaseClosed : N.cytokineRelease
  reactiveOxygenSpeciesClosed : N.reactiveOxygenSpecies
  bloodBrainBarrierIntegrityClosed : N.bloodBrainBarrierIntegrity

def NeuroinflammationClosed (N : NeuroinflammationPackage) : Prop :=
  N.microglialActivation ∧ N.cytokineRelease ∧ N.reactiveOxygenSpecies ∧ N.bloodBrainBarrierIntegrity

theorem neuroinflammation_closed_from_evidence (N : NeuroinflammationPackage)
    (E : NeuroinflammationEvidence N) : NeuroinflammationClosed N := by
  exact And.intro E.microglialActivationClosed
    (And.intro E.cytokineReleaseClosed
      (And.intro E.reactiveOxygenSpeciesClosed E.bloodBrainBarrierIntegrityClosed))

end NeuroscienceMicrogliaLemmaCanonicalLaneLean
end HautevilleHouse
