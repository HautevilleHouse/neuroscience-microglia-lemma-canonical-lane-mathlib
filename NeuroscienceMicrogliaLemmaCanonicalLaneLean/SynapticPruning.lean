import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMicrogliaLemmaCanonicalLaneLean

structure SynapticPruningPackage where
  synapseTarget : Type u
  complementSignal : Type v
  pruningMechanism : Prop
  activityDependence : Prop
  circuitRefinement : Prop

structure SynapticPruningEvidence (S : SynapticPruningPackage) where
  pruningMechanismClosed : S.pruningMechanism
  activityDependenceClosed : S.activityDependence
  circuitRefinementClosed : S.circuitRefinement

def SynapticPruningClosed (S : SynapticPruningPackage) : Prop :=
  S.pruningMechanism ∧ S.activityDependence ∧ S.circuitRefinement

theorem synaptic_pruning_closed_from_evidence (S : SynapticPruningPackage)
    (E : SynapticPruningEvidence S) : SynapticPruningClosed S := by
  exact And.intro E.pruningMechanismClosed
    (And.intro E.activityDependenceClosed E.circuitRefinementClosed)

end NeuroscienceMicrogliaLemmaCanonicalLaneLean
end HautevilleHouse