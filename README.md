# Lean Exercises Project

This repository contains a collection of exercises written in **Lean**, a theorem prover and functional programming language. These exercises focus on various mathematical proofs and techniques, covering topics like geometric series, binomial coefficients, and recursive functions.

## Project Structure

The project is structured as follows:

- **`Main.lean`**: The main entry point for running the Lean project.
- **`Exercises/`**: Contains individual `.lean` files for each exercise.
  - **`Exercise1.lean`**: Contains a proof of the sum of the first \( n \) terms of a geometric series.
  - **`Exercise2.lean`**: Deals with binomial coefficients and their properties.
  - **`Exercise3.lean`**: Defines a recursive function and proves its properties using mathematical induction.
- **`.lake/`**: Contains build-related files managed by Lake, Lean's build system.
- **`lakefile.lean`**: The build configuration for the project.
- **`lean-toolchain`**: Specifies the Lean version used in this project (Lean 4).

## How to Run

1. **Clone the repository:**

   ```bash
   git clone <repository-url>
   cd lean_exercises
   ```

2. **Install dependencies:**

   This project uses **Lake** to manage dependencies and builds. To ensure you have everything needed, install the mathlib dependency using:

   ```bash
   lake exe cache get
   ```

3. **Build the project:**

   To compile the Lean files, run:

   ```bash
   lake build
   ```

4. **Run the project:**

   After building, run the main executable:

   ```bash
   lake run
   ```

## Exercises Breakdown

### Exercise 1: Geometric Series Sum

**File**: `Exercise1.lean`

If $a$ and $r$ are real numbers and $r \neq 1$, then
(1.1)
$$
\sum_{j=0}^{n} a r^{j}=a+a r+a r^{2}+\cdots+a r^{n}=\frac{a r^{n+1}-a}{r-1} .
$$

### Exercise 2: Binomial Coefficients

**File**: `Exercise2.lean`

In this exercise, you will work with binomial coefficients, including proving properties like:

$$
\binom{n}{0} = 1 \quad \binom{n}{k} = \binom{n}{n-k}
$$

**Please solve this coding question**:

Q. Let $n$ and $k$ be non-negative integers with $k \leqslant n$. Then

(i ) $\binom{n}{0}=\binom{n}{n}=1$

(ii) $\binom{n}{k}=\binom{n}{n-k}$

### Exercise 3: Recursive Function

**File**: `Exercise3.lean`

This exercise defines a recursive function and uses mathematical induction to prove its properties:

$$
f(n) = 2^n + (-1)^n
$$

**Please solve this coding question**:

Q. We define a function recursively for all positive integers $n$ by 

$f(1)=1$, $f(2)=5$, and 

for $n>2, f(n+1)=f(n)+2 f(n-1)$. 

Show that $f(n)=$ $2^{n}+(-1)^{n}$, using the second principle of mathematical induction.

## Requirements

- **Lean 4**: Ensure that you have Lean 4 installed. You can install it via `elan`, the Lean version manager.
- **VS Code**: It's recommended to use **Visual Studio Code** with the Lean extension for a better development experience.