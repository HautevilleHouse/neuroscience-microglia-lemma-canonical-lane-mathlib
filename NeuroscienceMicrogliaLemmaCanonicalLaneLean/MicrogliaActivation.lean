import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMicrogliaLemmaCanonicalLaneLean

structure MicrogliaActivationPackage where
  activationStimulus : Type u
  restingState : Type v
  morphologicalTransition : Prop
  cytokineSecretion : Prop
  phagocytosisUpregulated : Prop

structure MicrogliaActivationEvidence (M : MicrogliaActivationPackage) where
  morphologicalTransitionClosed : M.morphologicalTransition
  cytokineSecretionClosed : M.cytokineSecretion
  phagocytosisUpregulatedClosed : M.phagocytosisUpregulated

def MicrogliaActivationClosed (M : MicrogliaActivationPackage) : Prop :=
  M.morphologicalTransition ∧ M.cytokineSecretion ∧ M.phagocytosisUpregulated

theorem microglia_activation_closed_from_evidence (M : MicrogliaActivationPackage)
    (E : MicrogliaActivationEvidence M) : MicrogliaActivationClosed M := by
  exact And.intro E.morphologicalTransitionClosed
    (And.intro E.cytokineSecretionClosed E.phagocytosisUpregulatedClosed)

end NeuroscienceMicrogliaLemmaCanonicalLaneLean
end HautevilleHouse