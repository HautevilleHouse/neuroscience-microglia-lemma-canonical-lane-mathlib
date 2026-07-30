import NeuroscienceMicrogliaLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMicrogliaLemmaCanonicalLaneLean

structure HodgkinHuxleyModel where
  membranePotential : ℝ
  sodiumChannel : ℝ
  potassiumChannel : ℝ
  leakChannel : ℝ

structure MicrogliaActivationPathway where
  purinergicSignaling : Prop
  chemokineBinding : Prop
  tlrActivation : Prop
  intracellularCascade : Prop

structure HebbianPlasticityRule where
  synapseStrength : ℝ
  calciumInflux : ℝ
  longTermPotentiation : Prop
  longTermDepression : Prop

structure NeurotransmitterDiffusion where
  diffusionCoefficient : ℝ
  clearanceRate : ℝ
  synapticCleft : ℝ

structure CytokineSignaling where
  il1β : Prop
  tnfα : Prop
  tgfβ : Prop

end NeuroscienceMicrogliaLemmaCanonicalLaneLean
end HautevilleHouse
