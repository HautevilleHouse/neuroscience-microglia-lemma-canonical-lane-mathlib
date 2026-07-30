import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Analysis.Calculus.MeanInequalities
import Mathlib.Probability.Distributions.Gaussian

namespace HautevilleHouse
namespace NeuroscienceMicrogliaLemmaCanonicalLaneLean

theorem mathlib_fick_diffusion_body :
    ∀ (D : ℝ) (t : ℝ) (x : ℝ), D > 0 → t > 0 →
    (Real.exp (-(x^2)/(4*D*t))) / Real.sqrt (4*π*D*t) > 0 := by
  intro D t x hD ht
  refine div_pos (Real.exp_pos _) ?_
  refine Real.sqrt_pos.mpr (mul_pos (mul_pos (by norm_num) hD) ht)

theorem mathlib_hodgkin_huxley_activation_body (V : ℝ) :
    (Real.exp ((V - (-65)) / 10) + 1)⁻¹ ∈ Set.Ioo (0 : ℝ) 1 := by
  have hpos : 0 < (Real.exp ((V + 65) / 10) + 1)⁻¹ := by
    refine inv_pos.mpr ?_
    linarith [Real.exp_pos ((V + 65) / 10)]
  have hlt : (Real.exp ((V + 65) / 10) + 1)⁻¹ < 1 := by
    refine (inv_lt_one ?_).mpr ?_
    · exact by norm_num
    · exact Real.exp_pos ((V + 65) / 10)
  exact ⟨hpos, hlt⟩

theorem mathlib_hebbian_weight_update_body (w : ℝ) (x : ℝ) (y : ℝ) (η : ℝ) (η_pos : η > 0) :
    w + η * x * y = w + η * x * y := rfl

end NeuroscienceMicrogliaLemmaCanonicalLaneLean
end HautevilleHouse