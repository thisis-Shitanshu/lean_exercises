import Mathlib
import Mathlib.Algebra.GeomSum

open Finset BigOperators

/-
  If a and r are real numbers and r ≠ 1, then
  ∑_{j=0}^{n}
  a * r^i = (a * r^(n+1) - a) / (r-1).
-/

example {a r : ℝ} (n : ℕ) (h : r ≠ 1) :
  ∑ i ∈ range (n+1), a * r^i = (a * r^(n+1) - a) / (r-1) := by
  -- Factor out a from the sum
  have h1 : ∑ i in range (n+1), a * r^i = a * ∑ i in range (n+1), r^i := by
    rw [mul_sum]

  -- Use geometric sum formula for ∑ r^i
  have h2 : ∑ i in range (n+1), r^i = (r^(n+1) - 1)/(r - 1) := by
    exact geom_sum_eq h (n + 1)

  -- Substitute the geometric sum formula
  rw [h1, h2]

  -- Simplify the right side
  field_simp

  -- Basic algebra to get to the desired form
  ring
