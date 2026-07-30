import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMicrogliaLemmaCanonicalLaneLean

structure MicrogliaStateDynamicsPackage where
  restingState : Prop
  activatedState : Prop
  transitionRate : Prop
  cytokineProduction : Prop
  phagocytosisRate : Prop
  ramifiedMorphology : Prop
  ameboidMorphology : Prop
  surveillanceMotility : Prop
  synapticContact : Prop
  inflammatoryCascade : Prop

structure MicrogliaStateDynamicsEvidence (M : MicrogliaStateDynamicsPackage) where
  restingStateClosed : M.restingState
  activatedStateClosed : M.activatedState
  transitionRateClosed : M.transitionRate
  cytokineProductionClosed : M.cytokineProduction
  phagocytosisRateClosed : M.phagocytosisRate
  ramifiedMorphologyClosed : M.ramifiedMorphology
  ameboidMorphologyClosed : M.ameboidMorphology
  surveillanceMotilityClosed : M.surveillanceMotility
  synapticContactClosed : M.synapticContact
  inflammatoryCascadeClosed : M.inflammatoryCascade

def MicrogliaStateDynamicsClosed (M : MicrogliaStateDynamicsPackage) : Prop :=
  M.restingState ∧ M.activatedState ∧ M.transitionRate ∧
  M.cytokineProduction ∧ M.phagocytosisRate ∧
  M.ramifiedMorphology ∧ M.ameboidMorphology ∧
  M.surveillanceMotility ∧ M.synapticContact ∧
  M.inflammatoryCascade

theorem microglia_state_dynamics_closed_from_evidence (M : MicrogliaStateDynamicsPackage)
    (E : MicrogliaStateDynamicsEvidence M) : MicrogliaStateDynamicsClosed M := by
  refine And.intro E.restingStateClosed (And.intro E.activatedStateClosed
    (And.intro E.transitionRateClosed (And.intro E.cytokineProductionClosed
      (And.intro E.phagocytosisRateClosed (And.intro E.ramifiedMorphologyClosed
        (And.intro E.ameboidMorphologyClosed (And.intro E.surveillanceMotilityClosed
          (And.intro E.synapticContactClosed E.inflammatoryCascadeClosed))))))))

end NeuroscienceMicrogliaLemmaCanonicalLaneLean
end HautevilleHouse