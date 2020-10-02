-- The code from the first lecture

variables P Q R : Prop

#check P ∧ Q

#check P → Q

#check P ∨ Q

#check ¬ P

#check P ↔ Q

theorem I : P → P :=
begin
  assume h,
  exact h
end

theorem C : (P → Q) → (Q → R) → (P → R) :=
begin
  assume f,
  assume g,
  assume p,
  apply g,
  apply f,
  exact p,
end

theorem swap : (P → Q → R) → (Q → P → R) :=
begin
  assume f,
  assume q,
  assume p,
  apply f,
  exact p,
  exact q,
end
