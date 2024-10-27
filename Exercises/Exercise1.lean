import Mathlib

open Finset BigOperators

/-
  If a and r are real numbers and r ≠ 1, then
  ∑_{j=0}^{n}
  a * r^i = (a * r^(n+1) - a) / (r-1).
-/

example {a r : ℝ} (n : ℕ) (h : r ≠ 1) :
  ∑ i ∈ range (n+1),
  a * r^i = (a * r^(n+1) - a) / (r-1) := by
  sorry
