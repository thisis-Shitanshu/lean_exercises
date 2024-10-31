import Mathlib

open Nat

/-
  We define a function recursively for all positive integers n by
  f(1) = 1, f(2) = 5, and
  for n > 2, f(n + 1) = f(n) + 2 * f(n - 1).

  Show that f(n) = 2^n + (-1)^n,
  using the second principle of mathematical induction.
-/

def f : ℕ → ℤ
  | 0 => 0     -- Add this case to handle 0
  | 1 => 1     -- First base case f(1) = 1
  | 2 => 5     -- Second base case f(2) = 5
  | (n + 1) => f n + 2 * f (n - 1)   -- For n > 2

theorem f_formula (n : ℕ) (h : n ≥ 1) : f n = 2^n + (-1)^n := by
  -- Use strong induction with proper base cases
  induction' n using Nat.strong_induction_on with n ih

  -- Split into cases based on n
  cases n with
  | zero => -- n = 0 case
    contradiction -- impossible since n ≥ 1

  | succ n' =>
    cases n' with
    | zero => -- n = 1
      simp [f]

    | succ n'' =>
      cases n'' with
      | zero => -- n = 2
        simp [f]

      | succ k => -- n ≥ 3
        -- Apply definition of f
        simp [f]

        -- Use inductive hypotheses for previous terms
        have h1 : k + 2 ≥ 1 := by linarith
        have h2 : k + 1 ≥ 1 := by linarith
        have h3 : k + 2 < k + 3 := by linarith
        have h4 : k + 1 < k + 3 := by linarith

        rw [ih (k + 2) h3 h1]
        rw [ih (k + 1) h4 h2]

        -- Algebraic manipulation
        -- For the power of -1, we need to handle it differently
        have neg1_power : ∀ m : ℕ, (-1)^(m + 2) = (-1)^m := by
          intro m
          rw [pow_add]
          simp

        -- Apply the power properties
        have h5 : k + 3 = (k + 1) + 2 := by ring
        rw [h5]
        rw [neg1_power (k + 1)]

        -- Now we can combine terms
        ring
