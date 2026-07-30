import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMicrogliaLemmaCanonicalLaneLean

structure SynapticPlasticityRegulationPackage where
  longTermPotentiation : Prop
  longTermDepression : Prop
  spineRemodeling : Prop
  synapticTagging : Prop
  bdnfRelease : Prop
  arcExpression : Prop
  gliotransmission : Prop
  ephapticCoupling : Prop
  metaplasticity : Prop
  homeostaticScaling : Prop

structure SynapticPlasticityRegulationEvidence (S : SynapticPlasticityRegulationPackage) where
  longTermPotentiationClosed : S.longTermPotentiation
  longTermDepressionClosed : S.longTermDepression
  spineRemodelingClosed : S.spineRemodeling
  synapticTaggingClosed : S.synapticTagging
  bdnfReleaseClosed : S.bdnfRelease
  arcExpressionClosed : S.arcExpression
  gliotransmissionClosed : S.gliotransmission
  ephapticCouplingClosed : S.ephapticCoupling
  metaplasticityClosed : S.metaplasticity
  homeostaticScalingClosed : S.homeostaticScaling

def SynapticPlasticityRegulationClosed (S : SynapticPlasticityRegulationPackage) : Prop :=
  S.longTermPotentiation ∧ S.longTermDepression ∧ S.spineRemodeling ∧
  S.synapticTagging ∧ S.bdnfRelease ∧ S.arcExpression ∧
  S.gliotransmission ∧ S.ephapticCoupling ∧ S.metaplasticity ∧
  S.homeostaticScaling

theorem synaptic_plasticity_regulation_closed_from_evidence
    (S : SynapticPlasticityRegulationPackage)
    (E : SynapticPlasticityRegulationEvidence S) : SynapticPlasticityRegulationClosed S := by
  refine And.intro E.longTermPotentiationClosed (And.intro E.longTermDepressionClosed
    (And.intro E.spineRemodelingClosed (And.intro E.synapticTaggingClosed
      (And.intro E.bdnfReleaseClosed (And.intro E.arcExpressionClosed
        (And.intro E.gliotransmissionClosed (And.intro E.ephapticCouplingClosed
          (And.intro E.metaplasticityClosed E.homeostaticScalingClosed))))))))

end NeuroscienceMicrogliaLemmaCanonicalLaneLean
end HautevilleHouse