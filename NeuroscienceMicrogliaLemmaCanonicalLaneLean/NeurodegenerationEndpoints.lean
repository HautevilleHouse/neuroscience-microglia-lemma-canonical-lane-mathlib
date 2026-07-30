import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMicrogliaLemmaCanonicalLaneLean

structure NeurodegenerationEndpointsPackage where
  amyloidBetaClearance : Prop
  tauPhosphorylation : Prop
  alphaSynucleinAggregation : Prop
  mptpModel : Prop
  sod1Mutation : Prop
  huntingtinAggregate : Prop
  tdp43Pathology : Prop
  neuronalApoptosis : Prop
  synapticLoss : Prop
  demyelination : Prop

structure NeurodegenerationEndpointsEvidence (N : NeurodegenerationEndpointsPackage) where
  amyloidBetaClearanceClosed : N.amyloidBetaClearance
  tauPhosphorylationClosed : N.tauPhosphorylation
  alphaSynucleinAggregationClosed : N.alphaSynucleinAggregation
  mptpModelClosed : N.mptpModel
  sod1MutationClosed : N.sod1Mutation
  huntingtinAggregateClosed : N.huntingtinAggregate
  tdp43PathologyClosed : N.tdp43Pathology
  neuronalApoptosisClosed : N.neuronalApoptosis
  synapticLossClosed : N.synapticLoss
  demyelinationClosed : N.demyelination

def NeurodegenerationEndpointsClosed (N : NeurodegenerationEndpointsPackage) : Prop :=
  N.amyloidBetaClearance ∧ N.tauPhosphorylation ∧ N.alphaSynucleinAggregation ∧
  N.mptpModel ∧ N.sod1Mutation ∧ N.huntingtinAggregate ∧
  N.tdp43Pathology ∧ N.neuronalApoptosis ∧ N.synapticLoss ∧
  N.demyelination

theorem neurodegeneration_endpoints_closed_from_evidence
    (N : NeurodegenerationEndpointsPackage)
    (E : NeurodegenerationEndpointsEvidence N) : NeurodegenerationEndpointsClosed N := by
  refine And.intro E.amyloidBetaClearanceClosed (And.intro E.tauPhosphorylationClosed
    (And.intro E.alphaSynucleinAggregationClosed (And.intro E.mptpModelClosed
      (And.intro E.sod1MutationClosed (And.intro E.huntingtinAggregateClosed
        (And.intro E.tdp43PathologyClosed (And.intro E.neuronalApoptosisClosed
          (And.intro E.synapticLossClosed E.demyelinationClosed))))))))

end NeuroscienceMicrogliaLemmaCanonicalLaneLean
end HautevilleHouse