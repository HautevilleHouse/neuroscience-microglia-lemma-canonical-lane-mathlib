import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMicrogliaLemmaCanonicalLaneLean

structure PurinergicSignalingPackage where
  atpRelease : Type u
  p2y12Receptor : Type v
  processExtension : Prop
  chemotaxis : Prop
  synapseSurveillance : Prop

structure PurinergicSignalingEvidence (P : PurinergicSignalingPackage) where
  processExtensionClosed : P.processExtension
  chemotaxisClosed : P.chemotaxis
  synapseSurveillanceClosed : P.synapseSurveillance

def PurinergicSignalingClosed (P : PurinergicSignalingPackage) : Prop :=
  P.processExtension ∧ P.chemotaxis ∧ P.synapseSurveillance

theorem purinergic_signaling_closed_from_evidence (P : PurinergicSignalingPackage)
    (E : PurinergicSignalingEvidence P) : PurinergicSignalingClosed P := by
  exact And.intro E.processExtensionClosed
    (And.intro E.chemotaxisClosed E.synapseSurveillanceClosed)

end NeuroscienceMicrogliaLemmaCanonicalLaneLean
end HautevilleHouse