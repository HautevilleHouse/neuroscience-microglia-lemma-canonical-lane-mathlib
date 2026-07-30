import NeuroscienceMicrogliaLemmaCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceMicrogliaLemmaCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure MicrogliaEndgameState where
  object : NeuroscienceAdmittedObject

def microgliaProjection : Projection MicrogliaEndgameState :=
  { toFun := fun x => x,
    idempotent := by intro x; rfl }

theorem microglia_projection_idempotent (x : MicrogliaEndgameState) :
    microgliaProjection.toFun (microgliaProjection.toFun x) = microgliaProjection.toFun x := by
  exact microgliaProjection.idempotent x

end NeuroscienceMicrogliaLemmaCanonicalLaneLean
end HautevilleHouse
