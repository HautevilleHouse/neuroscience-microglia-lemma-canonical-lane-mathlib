import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMicrogliaLemmaCanonicalLaneLean

structure TREM2DependentPackage where
  lipidSensor : Type u
  phagocyticTrigger : Type v
  metabolicSupport : Prop
  amyloidClearance : Prop
  neuroprotection : Prop

structure TREM2DependentEvidence (T : TREM2DependentPackage) where
  amyloidClearanceClosed : T.amyloidClearance
  metabolicSupportClosed : T.metabolicSupport
  neuroprotectionClosed : T.neuroprotection

def TREM2DependentClosed (T : TREM2DependentPackage) : Prop :=
  T.amyloidClearance ∧ T.metabolicSupport ∧ T.neuroprotection

theorem trem2_dependent_closed_from_evidence (T : TREM2DependentPackage)
    (E : TREM2DependentEvidence T) : TREM2DependentClosed T := by
  exact And.intro E.amyloidClearanceClosed
    (And.intro E.metabolicSupportClosed E.neuroprotectionClosed)

end NeuroscienceMicrogliaLemmaCanonicalLaneLean
end HautevilleHouse