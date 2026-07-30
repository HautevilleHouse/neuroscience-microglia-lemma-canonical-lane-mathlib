import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMicrogliaLemmaCanonicalLaneLean

structure NeuroinflammatoryCascadePackage where
  nfkbActivation : Prop
  mapkPathway : Prop
  jakStatSignaling : Prop
  cox2Induction : Prop
  inosExpression : Prop
  tnfAlphaRelease : Prop
  il1BetaRelease : Prop
  il6Release : Prop
  chemokineSecretion : Prop
  reactiveOxygenSpecies : Prop

structure NeuroinflammatoryCascadeEvidence (N : NeuroinflammatoryCascadePackage) where
  nfkbActivationClosed : N.nfkbActivation
  mapkPathwayClosed : N.mapkPathway
  jakStatSignalingClosed : N.jakStatSignaling
  cox2InductionClosed : N.cox2Induction
  inosExpressionClosed : N.inosExpression
  tnfAlphaReleaseClosed : N.tnfAlphaRelease
  il1BetaReleaseClosed : N.il1BetaRelease
  il6ReleaseClosed : N.il6Release
  chemokineSecretionClosed : N.chemokineSecretion
  reactiveOxygenSpeciesClosed : N.reactiveOxygenSpecies

def NeuroinflammatoryCascadeClosed (N : NeuroinflammatoryCascadePackage) : Prop :=
  N.nfkbActivation ∧ N.mapkPathway ∧ N.jakStatSignaling ∧
  N.cox2Induction ∧ N.inosExpression ∧ N.tnfAlphaRelease ∧
  N.il1BetaRelease ∧ N.il6Release ∧ N.chemokineSecretion ∧
  N.reactiveOxygenSpecies

theorem neuroinflammatory_cascade_closed_from_evidence
    (N : NeuroinflammatoryCascadePackage)
    (E : NeuroinflammatoryCascadeEvidence N) : NeuroinflammatoryCascadeClosed N := by
  refine And.intro E.nfkbActivationClosed (And.intro E.mapkPathwayClosed
    (And.intro E.jakStatSignalingClosed (And.intro E.cox2InductionClosed
      (And.intro E.inosExpressionClosed (And.intro E.tnfAlphaReleaseClosed
        (And.intro E.il1BetaReleaseClosed (And.intro E.il6ReleaseClosed
          (And.intro E.chemokineSecretionClosed E.reactiveOxygenSpeciesClosed))))))))

end NeuroscienceMicrogliaLemmaCanonicalLaneLean
end HautevilleHouse