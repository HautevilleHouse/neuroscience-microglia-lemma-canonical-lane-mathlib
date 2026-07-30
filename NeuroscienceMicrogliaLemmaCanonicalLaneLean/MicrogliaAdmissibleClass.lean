import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMicrogliaLemmaCanonicalLaneLean

structure MicrogliaNeuronObject where
  neuronId : Nat
  microgliaActivationState : String
  synapticMarker : String
  phagocytosisStatus : Prop

structure MicrogliaAdmittedObject where
  object : MicrogliaNeuronObject
  conclusion : Prop

def microgliaWitnessClosed (O : MicrogliaAdmittedObject) : Prop :=
  O.conclusion

end NeuroscienceMicrogliaLemmaCanonicalLaneLean
end HautevilleHouse