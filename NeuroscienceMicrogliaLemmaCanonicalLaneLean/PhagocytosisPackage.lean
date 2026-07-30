import NeuroscienceMicrogliaLemmaCanonicalLaneLean.CytokineSignalingPackage

namespace HautevilleHouse
namespace NeuroscienceMicrogliaLemmaCanonicalLaneLean

structure PhagocytosisPackage {C : CytokineSignalingPackage} where
  engulfedSynapses : Nat
  debrisCleared : Prop
  immuneResponseTriggered : Prop

structure PhagocytosisEvidence {C : CytokineSignalingPackage} (P : PhagocytosisPackage C) where
  engulfedSynapsesPositive : P.engulfedSynapses > 0
  debrisClearedClosed : P.debrisCleared
  immuneResponseTriggeredClosed : P.immuneResponseTriggered

def PhagocytosisClosed {C : CytokineSignalingPackage} (P : PhagocytosisPackage C) : Prop :=
  P.engulfedSynapses > 0 ∧ P.debrisCleared ∧ P.immuneResponseTriggered

theorem phagocytosis_closed_from_evidence
    {C : CytokineSignalingPackage} (P : PhagocytosisPackage C)
    (E : PhagocytosisEvidence P) : PhagocytosisClosed P := by
  exact And.intro E.engulfedSynapsesPositive
    (And.intro E.debrisClearedClosed E.immuneResponseTriggeredClosed)

end NeuroscienceMicrogliaLemmaCanonicalLaneLean
end HautevilleHouse