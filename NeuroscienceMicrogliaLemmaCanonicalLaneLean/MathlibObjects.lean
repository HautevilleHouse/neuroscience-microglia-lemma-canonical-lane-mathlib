import NeuroscienceMicrogliaLemmaCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace NeuroscienceMicrogliaLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure NeuroscienceSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure NeuroscienceAdmittedObject where
  space : NeuroscienceSpace
  microgliaActivation : Prop
  synapticPruning : Prop
  neuroinflammatorySignal : Prop
  conclusion : microgliaActivation ∧ synapticPruning ∧ neuroinflammatorySignal

structure NeuroscienceEndgameState where
  object : NeuroscienceAdmittedObject

def NeuroscienceWitnessClosed (O : NeuroscienceAdmittedObject) : Prop :=
  O.microgliaActivation ∧ O.synapticPruning ∧ O.neuroinflammatorySignal

end NeuroscienceMicrogliaLemmaCanonicalLaneLean
end HautevilleHouse
