import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMicrogliaLemmaCanonicalLaneLean

structure NeuroimmuneSignalingPackage where
  p2y12ReceptorExpression : Prop
  cx3cr1Signaling : Prop
  trem2Activation : Prop
  cd200Engagement : Prop
  atpRelease : Prop
  purinergicCascade : Prop
  tlrActivation : Prop
  nlrP3Inflammasome : Prop
  complementCascade : Prop
  interferonResponse : Prop

structure NeuroimmuneSignalingEvidence (N : NeuroimmuneSignalingPackage) where
  p2y12ReceptorExpressionClosed : N.p2y12ReceptorExpression
  cx3cr1SignalingClosed : N.cx3cr1Signaling
  trem2ActivationClosed : N.trem2Activation
  cd200EngagementClosed : N.cd200Engagement
  atpReleaseClosed : N.atpRelease
  purinergicCascadeClosed : N.purinergicCascade
  tlrActivationClosed : N.tlrActivation
  nlrP3InflammasomeClosed : N.nlrP3Inflammasome
  complementCascadeClosed : N.complementCascade
  interferonResponseClosed : N.interferonResponse

def NeuroimmuneSignalingClosed (N : NeuroimmuneSignalingPackage) : Prop :=
  N.p2y12ReceptorExpression ∧ N.cx3cr1Signaling ∧ N.trem2Activation ∧
  N.cd200Engagement ∧ N.atpRelease ∧ N.purinergicCascade ∧
  N.tlrActivation ∧ N.nlrP3Inflammasome ∧ N.complementCascade ∧
  N.interferonResponse

theorem neuroimmune_signaling_closed_from_evidence (N : NeuroimmuneSignalingPackage)
    (E : NeuroimmuneSignalingEvidence N) : NeuroimmuneSignalingClosed N := by
  refine And.intro E.p2y12ReceptorExpressionClosed (And.intro E.cx3cr1SignalingClosed
    (And.intro E.trem2ActivationClosed (And.intro E.cd200EngagementClosed
      (And.intro E.atpReleaseClosed (And.intro E.purinergicCascadeClosed
        (And.intro E.tlrActivationClosed (And.intro E.nlrP3InflammasomeClosed
          (And.intro E.complementCascadeClosed E.interferonResponseClosed))))))))

end NeuroscienceMicrogliaLemmaCanonicalLaneLean
end HautevilleHouse