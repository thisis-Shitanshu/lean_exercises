import Mathlib
import Mathlib.Data.Nat.Choose.Basic

open Nat

/-
  Let n and k be non-negative integers with k ≤ n. Then
  (i) binom n 0 = binom n n = 1
  (ii) binom n k = binom n (n - k)
-/

theorem binomial_properties (n k : ℕ) (h : k ≤ n) :
  (choose n 0 = 1) ∧ (choose n n = 1) ∧ (choose n k = choose n (n - k)) := by
  constructor
  · -- Prove choose n 0 = 1
    exact choose_zero_right n
  constructor
  · -- Prove choose n n = 1
    exact choose_self n
  · -- Prove choose n k = choose n (n - k)
    rw [eq_comm]
    exact @choose_symm n k h
