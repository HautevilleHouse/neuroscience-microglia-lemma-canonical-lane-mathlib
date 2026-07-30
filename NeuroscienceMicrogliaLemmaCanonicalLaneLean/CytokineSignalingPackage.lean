import NeuroscienceMicrogliaLemmaCanonicalLaneLean.ComplementSignalingGate

namespace HautevilleHouse
namespace NeuroscienceMicrogliaLemmaCanonicalLaneLean

structure CytokineSignalingPackage where
  tnfAlphaReleased : Prop
  il10Released : Prop
  neuroinflammationState : Prop

structure CytokineSignalingEvidence (C : CytokineSignalingPackage) where
  tnfAlphaReleasedClosed : C.tnfAlphaReleased
  il10ReleasedClosed : C.il10Released
  neuroinflammationStateClosed : C.neuroinflammationState

def CytokineSignalingClosed (C : CytokineSignalingPackage) : Prop :=
  C.tnfAlphaReleased ∧ C.il10Released ∧ C.neuroinflammationState

theorem cytokine_signaling_closed_from_evidence
    (C : CytokineSignalingPackage) (E : CytokineSignalingEvidence C) :
    CytokineSignalingClosed C := by
  exact And.intro E.tnfAlphaReleasedClosed
    (And.intro E.il10ReleasedClosed E.neuroinflammationStateClosed)

end NeuroscienceMicrogliaLemmaCanonicalLaneLean
end HautevilleHouse