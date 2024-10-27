import Lake
open Lake DSL

package "lean_exercises" where
  version := v!"0.1.0"

require mathlib from git
  "https://github.com/leanprover-community/mathlib4.git" @ "v4.12.0"

lean_lib «LeanExercises» where
  -- add library configuration options here

@[default_target]
lean_exe "lean_exercises" where
  root := `Main
