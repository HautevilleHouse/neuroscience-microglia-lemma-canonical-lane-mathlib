import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMicrogliaLemmaCanonicalLaneLean

structure CSF1RSignalingPackage where
  receptorActivation : Type u
  survivalSignal : Type v
  proliferationRegulation : Prop
  differentiationControl : Prop
  homeostaticMaintenance : Prop

structure CSF1RSignalingEvidence (C : CSF1RSignalingPackage) where
  survivalSignalClosed : C.survivalSignal
  proliferationRegulationClosed : C.proliferationRegulation
  homeostaticMaintenanceClosed : C.homeostaticMaintenance

def CSF1RSignalingClosed (C : CSF1RSignalingPackage) : Prop :=
  C.survivalSignal ∧ C.proliferationRegulation ∧ C.homeostaticMaintenance

theorem csf1r_signaling_closed_from_evidence (C : CSF1RSignalingPackage)
    (E : CSF1RSignalingEvidence C) : CSF1RSignalingClosed C := by
  exact And.intro E.survivalSignalClosed
    (And.intro E.proliferationRegulationClosed E.homeostaticMaintenanceClosed)

end NeuroscienceMicrogliaLemmaCanonicalLaneLean
end HautevilleHouse