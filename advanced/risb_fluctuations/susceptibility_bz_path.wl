(* ::Package:: *)

(* ============================================================*)
(* RISB Gaussian fluctuation theory: linear (static) susceptibilities *)
(* chi_spin(q), chi_charge(q) on a 2D square lattice *)

(* ============================================================*)
(* Global constants and saddle-point parameters *)
(* ============================================================*)
NUM = 17;
Num = 12;
dim = 2;
(*Equlibrium solutions at: t=-0.2, n=0.8*)
const = 0.61;
U = 2.;
bd = 0.3523078125102258;
bp = 0.5252420444369049;
be = 0.5693160763194206;
r = 0.9881149952;
blam = -2.8008647352776803;
bLam = 0.8194119833;
mu = -0.06968681049037836;

rd = r;
bpuu1 = bp; bpdd1 = bp;
be1 = be; bd1 = bd;
bLamuu = bLam; bLamdd = bLam;

nu = 0.001;

(* ============================================================*)
(* Density matrix variations (k-independent) *)
(* ============================================================*)

Denp1 = ConstantArray[0, {Num, dim, dim}];
Denp1[[3, 1, 1]] = 2 bpuu1;
Denp1[[11, 1, 1]] = 2 bd1;
Denp1[[5, 1, 2]] = bpuu1;
Denp1[[6, 1, 2]] = -I bpuu1;
Denp1[[7, 1, 2]] = bpdd1;
Denp1[[8, 1, 2]] = I bpdd1;
Denp1[[5, 2, 1]] = bpuu1;
Denp1[[6, 2, 1]] = I bpuu1;
Denp1[[7, 2, 1]] = bpdd1;
Denp1[[8, 2, 1]] = -I bpdd1;
Denp1[[9, 2, 2]] = 2 bpdd1;
Denp1[[11, 2, 2]] = 2 bd1;

Denh1 = ConstantArray[0, {Num, dim, dim}];
Denh1[[1, 1, 1]] = 2 be1;
Denh1[[9, 1, 1]] = 2 bpdd1;
Denh1[[5, 1, 2]] = -bpuu1;
Denh1[[6, 1, 2]] = I bpuu1;
Denh1[[7, 1, 2]] = -bpdd1;
Denh1[[8, 1, 2]] = -I bpdd1;
Denh1[[5, 2, 1]] = -bpuu1;
Denh1[[6, 2, 1]] = -I bpuu1;
Denh1[[7, 2, 1]] = -bpdd1;
Denh1[[8, 2, 1]] = I bpdd1;
Denh1[[1, 2, 2]] = 2 be1;
Denh1[[3, 2, 2]] = 2 bpuu1;

(* ============================================================*)
(* LR variations *)
(* ============================================================*)

LR0 = ConstantArray[0, {dim, dim}];
LR0[[1, 1]] = (1 - be1^2 - bpdd1^2)^(-1/2);
LR0[[2, 2]] = (1 - be1^2 - bpuu1^2)^(-1/2);

LR1 = ConstantArray[0, {Num, dim, dim}];
Do[LR1[[i, a, b]] =
   1/2 (1 - be1^2 - bpdd1^2)^(-3/2) Denh1[[i, a, b]], {i, 1, Num}, {a,
    1, dim}, {b, 1, dim}];

LR2 = ConstantArray[0, {Num, Num, dim, dim}];
Do[LR2[[i, j, 1, b]] =
   3/8 (1 - be1^2 - bpdd1^2)^(-5/
       2) (Denh1[[i, 1, 1]] Denh1[[j, 1, b]] +
      Denh1[[i, 1, 2]] Denh1[[j, 2, b]]), {i, 1, Num}, {j, 1,
   Num}, {b, 1, dim}];
Do[LR2[[i, j, 2, b]] =
   3/8 (1 - be1^2 - bpdd1^2)^(-5/
       2) (Denh1[[i, 2, 1]] Denh1[[j, 1, b]] +
      Denh1[[i, 2, 2]] Denh1[[j, 2, b]]), {i, 1, Num}, {j, 1,
   Num}, {b, 1, dim}];

(* ============================================================*)
(* RR variations *)
(* ============================================================*)

RR0 = ConstantArray[0, {dim, dim}];
RR0[[1, 1]] = (1 - bpuu1^2 - bd1^2)^(-1/2);
RR0[[2, 2]] = (1 - bpdd1^2 - bd1^2)^(-1/2);

RR1 = ConstantArray[0, {Num, dim, dim}];
Do[RR1[[i, a, b]] =
   1/2 (1 - bpuu1^2 - bd1^2)^(-3/2) Denp1[[i, a, b]], {i, 1, Num}, {a,
    1, dim}, {b, 1, dim}];

RR2 = ConstantArray[0, {Num, Num, dim, dim}];
Do[RR2[[i, j, 1, b]] =
   3/8 (1 - bpuu1^2 - bd1^2)^(-5/
       2) (Denp1[[i, 1, 1]] Denp1[[j, 1, b]] +
      Denp1[[i, 1, 2]] Denp1[[j, 2, b]]), {i, 1, Num}, {j, 1,
   Num}, {b, 1, dim}];
Do[RR2[[i, j, 2, b]] =
   3/8 (1 - bpdd1^2 - bd1^2)^(-5/
       2) (Denp1[[i, 2, 1]] Denp1[[j, 1, b]] +
      Denp1[[i, 2, 2]] Denp1[[j, 2, b]]), {i, 1, Num}, {j, 1,
   Num}, {b, 1, dim}];

(* ============================================================*)
(* MR variations *)
(* ============================================================*)

MR0 = ConstantArray[0, {dim, dim}];
MR0[[1, 1]] = bpuu1 be1 + bd1 bpdd1;
MR0[[2, 2]] = bpdd1 be1 + bd1 bpuu1;

MR1 = ConstantArray[0, {Num, dim, dim}];
MR1[[1, 1, 1]] = bpuu1; MR1[[2, 1, 1]] = I bpuu1;
MR1[[3, 1, 1]] = be1; MR1[[4, 1, 1]] = -I be1;
MR1[[9, 1, 1]] = bd1; MR1[[10, 1, 1]] = I bd1;
MR1[[11, 1, 1]] = bpdd1; MR1[[12, 1, 1]] = -I bpdd1;
MR1[[5, 1, 2]] = be1; MR1[[6, 1, 2]] = -I be1;
MR1[[7, 1, 2]] = -bd1; MR1[[8, 1, 2]] = -I bd1;
MR1[[5, 2, 1]] = -bd1; MR1[[6, 2, 1]] = -I bd1;
MR1[[7, 2, 1]] = be1; MR1[[8, 2, 1]] = -I be1;
MR1[[1, 2, 2]] = bpdd1; MR1[[2, 2, 2]] = I bpdd1;
MR1[[3, 2, 2]] = bd1; MR1[[4, 2, 2]] = I bd1;
MR1[[9, 2, 2]] = be1; MR1[[10, 2, 2]] = -I be1;
MR1[[11, 2, 2]] = bpuu1; MR1[[12, 2, 2]] = -I bpuu1;

MR2 = ConstantArray[0, {Num, Num, dim, dim}];
MR2[[3, 1, 1, 1]] = 1.; MR2[[3, 2, 1, 1]] = I;
MR2[[4, 1, 1, 1]] = -I; MR2[[4, 2, 1, 1]] = 1.;
MR2[[11, 9, 1, 1]] = 1.; MR2[[11, 10, 1, 1]] = I;
MR2[[12, 9, 1, 1]] = -I; MR2[[12, 10, 1, 1]] = 1.;
MR2[[5, 1, 1, 2]] = 1.; MR2[[5, 2, 1, 2]] = I;
MR2[[6, 1, 1, 2]] = -I; MR2[[6, 2, 1, 2]] = 1.;
MR2[[11, 7, 1, 2]] = -1.; MR2[[11, 8, 1, 2]] = -I;
MR2[[12, 7, 1, 2]] = I; MR2[[12, 8, 1, 2]] = -1.;
MR2[[7, 1, 2, 1]] = 1.; MR2[[7, 2, 2, 1]] = I;
MR2[[8, 1, 2, 1]] = -I; MR2[[8, 2, 2, 1]] = 1.;
MR2[[11, 5, 2, 1]] = -1.; MR2[[11, 6, 2, 1]] = -I;
MR2[[12, 5, 2, 1]] = I; MR2[[12, 6, 2, 1]] = -1.;
MR2[[9, 1, 2, 2]] = 1.; MR2[[9, 2, 2, 2]] = I;
MR2[[10, 1, 2, 2]] = -I; MR2[[10, 2, 2, 2]] = 1.;
MR2[[11, 3, 2, 2]] = 1.; MR2[[11, 4, 2, 2]] = I;
MR2[[12, 3, 2, 2]] = -I; MR2[[12, 4, 2, 2]] = 1.;

(* ============================================================*)
(* R matrix and its variations *)
(* ============================================================*)

R0 = MR0 . RR0 . LR0;

R1 = ConstantArray[0, {Num, dim, dim}];
Do[R1[[i, a, \[Alpha]]] =
   Sum[MR0[[\[Alpha], b]] RR0[[b, c]] LR1[[i, c, a]] +
     MR1[[i, \[Alpha], b]] RR0[[b, c]] LR0[[c, a]] +
     MR0[[\[Alpha], b]] RR1[[i, b, c]] LR0[[c, a]], {b, 1, dim}, {c,
     1, dim}], {i, 1, Num}, {a, 1, dim}, {\[Alpha], 1, dim}];

R2 = ConstantArray[0, {Num, Num, dim, dim}];
Do[R2[[i, j, a, \[Alpha]]] =
   Sum[LR1[[i, c, a]] MR1[[j, \[Alpha], b]] RR0[[b, c]] +
     LR1[[i, c, a]] MR0[[\[Alpha], b]] RR1[[j, b, c]] +
     LR0[[c, a]] MR1[[i, \[Alpha], b]] RR1[[j, b, c]] +
     LR1[[j, c, a]] MR1[[i, \[Alpha], b]] RR0[[b, c]] +
     LR1[[j, c, a]] MR0[[\[Alpha], b]] RR1[[i, b, c]] +
     LR0[[c, a]] MR1[[j, \[Alpha], b]] RR1[[i, b, c]] +
     LR2[[i, j, c, a]] MR0[[\[Alpha], b]] RR0[[b, c]] +
     LR0[[c, a]] MR2[[i, j, \[Alpha], b]] RR0[[b, c]] +
     LR0[[c, a]] MR0[[\[Alpha], b]] RR2[[i, j, b, c]] +
     LR2[[j, i, c, a]] MR0[[\[Alpha], b]] RR0[[b, c]] +
     LR0[[c, a]] MR2[[j, i, \[Alpha], b]] RR0[[b, c]] +
     LR0[[c, a]] MR0[[\[Alpha], b]] RR2[[j, i, b, c]], {b, 1,
     dim}, {c, 1, dim}], {i, 1, Num}, {j, 1, Num}, {a, 1,
   dim}, {\[Alpha], 1, dim}];

(* ============================================================*)
(* MRD variations *)
(* ============================================================*)

MRD0 = ConstantArray[0, {dim, dim}];
MRD0[[1, 1]] = bpuu1 be1 + bd1 bpdd1;
MRD0[[2, 2]] = bpdd1 be1 + bd1 bpuu1;

MRD1 = ConstantArray[0, {Num, dim, dim}];
MRD1[[1, 1, 1]] = bpuu1; MRD1[[2, 1, 1]] = -I bpuu1;
MRD1[[3, 1, 1]] = be1; MRD1[[4, 1, 1]] = I be1;
MRD1[[9, 1, 1]] = bd1; MRD1[[10, 1, 1]] = -I bd1;
MRD1[[11, 1, 1]] = bpdd1; MRD1[[12, 1, 1]] = I bpdd1;
MRD1[[5, 2, 1]] = be1; MRD1[[6, 2, 1]] = I be1;
MRD1[[7, 2, 1]] = -bd1; MRD1[[8, 2, 1]] = I bd1;
MRD1[[5, 1, 2]] = -bd1; MRD1[[6, 1, 2]] = I bd1;
MRD1[[7, 1, 2]] = be1; MRD1[[8, 1, 2]] = I be1;
MRD1[[1, 2, 2]] = bpdd1; MRD1[[2, 2, 2]] = -I bpdd1;
MRD1[[3, 2, 2]] = bd1; MRD1[[4, 2, 2]] = -I bd1;
MRD1[[9, 2, 2]] = be1; MRD1[[10, 2, 2]] = I be1;
MRD1[[11, 2, 2]] = bpuu1; MRD1[[12, 2, 2]] = I bpuu1;

MRD2 = ConstantArray[0, {Num, Num, dim, dim}];
MRD2[[1, 3, 1, 1]] = 1.; MRD2[[1, 4, 1, 1]] = I;
MRD2[[2, 3, 1, 1]] = -I; MRD2[[2, 4, 1, 1]] = 1.;
MRD2[[9, 11, 1, 1]] = 1.; MRD2[[9, 12, 1, 1]] = I;
MRD2[[10, 11, 1, 1]] = -I; MRD2[[10, 12, 1, 1]] = 1.;
MRD2[[1, 5, 2, 1]] = 1.; MRD2[[1, 6, 2, 1]] = I;
MRD2[[2, 5, 2, 1]] = -I; MRD2[[2, 6, 2, 1]] = 1.;
MRD2[[7, 11, 2, 1]] = -1.; MRD2[[7, 12, 2, 1]] = -I;
MRD2[[8, 11, 2, 1]] = I; MRD2[[8, 12, 2, 1]] = -1.;
MRD2[[1, 7, 1, 2]] = 1.; MRD2[[1, 8, 1, 2]] = I;
MRD2[[2, 7, 1, 2]] = -I; MRD2[[2, 8, 1, 2]] = 1.;
MRD2[[5, 11, 1, 2]] = -1.; MRD2[[5, 12, 1, 2]] = -I;
MRD2[[6, 11, 1, 2]] = I; MRD2[[6, 12, 1, 2]] = -1.;
MRD2[[1, 9, 2, 2]] = 1.; MRD2[[1, 10, 2, 2]] = I;
MRD2[[2, 9, 2, 2]] = -I; MRD2[[2, 10, 2, 2]] = 1.;
MRD2[[3, 11, 2, 2]] = 1.; MRD2[[3, 12, 2, 2]] = I;
MRD2[[4, 11, 2, 2]] = -I; MRD2[[4, 12, 2, 2]] = 1.;

(* ============================================================*)
(* RD matrix and its variations *)
(* ============================================================*)

RD0 = MRD0 . RR0 . LR0;

RD1 = ConstantArray[0, {Num, dim, dim}];
Do[RD1[[i, \[Alpha], a]] =
   Sum[RR1[[i, c, b]] MRD0[[b, \[Alpha]]] LR0[[a, c]] +
     RR0[[c, b]] MRD1[[i, b, \[Alpha]]] LR0[[a, c]] +
     RR0[[c, b]] MRD0[[b, \[Alpha]]] LR1[[i, a, c]], {b, 1, dim}, {c,
     1, dim}], {i, 1, Num}, {\[Alpha], 1, dim}, {a, 1, dim}];

RD2 = ConstantArray[0, {Num, Num, dim, dim}];
Do[RD2[[i, j, \[Alpha], a]] =
   Sum[RR1[[i, c, b]] MRD1[[j, b, \[Alpha]]] LR0[[a, c]] +
     RR1[[i, c, b]] MRD0[[b, \[Alpha]]] LR1[[j, a, c]] +
     RR0[[c, b]] MRD1[[i, b, \[Alpha]]] LR1[[j, a, c]] +
     RR1[[j, c, b]] MRD1[[i, b, \[Alpha]]] LR0[[a, c]] +
     RR1[[j, c, b]] MRD0[[b, \[Alpha]]] LR1[[i, a, c]] +
     RR0[[c, b]] MRD1[[j, b, \[Alpha]]] LR1[[i, a, c]] +
     RR2[[i, j, c, b]] MRD0[[b, \[Alpha]]] LR0[[a, c]] +
     RR0[[c, b]] MRD2[[i, j, b, \[Alpha]]] LR0[[a, c]] +
     RR0[[c, b]] MRD0[[b, \[Alpha]]] LR2[[i, j, a, c]] +
     RR2[[j, i, c, b]] MRD0[[b, \[Alpha]]] LR0[[a, c]] +
     RR0[[c, b]] MRD2[[j, i, b, \[Alpha]]] LR0[[a, c]] +
     RR0[[c, b]] MRD0[[b, \[Alpha]]] LR2[[j, i, a, c]], {b, 1,
     dim}, {c, 1, dim}], {i, 1, Num}, {j, 1, Num}, {\[Alpha], 1,
   dim}, {a, 1, dim}];

(* ============================================================*)
(* k-grid and dispersion *)
(* ============================================================*)

get2Dklist[n_] :=
 Module[{kx, ky, kList = {}}, kx = Range[-Pi, Pi - 2 Pi/n, 2 Pi/n];
  ky = Range[-Pi, Pi - 2 Pi/n, 2 Pi/n];
  Do[AppendTo[kList, {i, j}], {i, kx}, {j, ky}];
  kList]

e[k_] := -2 Cos[k[[1]]] - 2 Cos[k[[2]]] -
  4 (-0.2) Cos[k[[1]]] Cos[k[[2]]]
(*e[k_]:=- Cos[k[[1]]]- Cos[k[[2]]]*)

En[ek_, rr_, Lam_] := ek rr^2 + Lam
nF[En_] := 1./(Exp[En*100] + 1)

(* Increase BZ k-grid:100x100=10000 points *)
klist = get2Dklist[100];
Nk = Length[klist];

(* ============================================================*)
(* Build Mtot: assembles the 17x17 fluctuation matrix *)
(* ============================================================*)

BuildMtot[xi1_, xi2_, xi3_, gam0_, gam1_, gam2_, rho1_, rho2_, rho3_,
  rdIn_] := Module[{MV1, MV2, MB, M, Mtot, rd = rdIn},
  (*---MV1:fermionic V1---*)
  MV1 = ConstantArray[0, {Num, Num}];
  Do[MV1[[i, j]] =
    1/2 Sum[
      R1[[i, a, \[Alpha]]] R1[[j, a, \[Alpha]]] rho2 rd rd +
       R1[[i, a, \[Alpha]]] RD1[[j, \[Alpha], a]] rho1 rd r +
       RD1[[i, \[Alpha], a]] R1[[j, a, \[Alpha]]] rho3 r rd +
       r r rho2 RD1[[i, \[Alpha], a]] RD1[[j, \[Alpha], a]], {a, 1,
       dim}, {\[Alpha], 1, dim}], {i, 1, Num}, {j, 1, Num}];
  (*---MV2:fermionic V2---*)
  MV2 = ConstantArray[0, {Num, Num}];
  Do[MV2[[i, j]] =
    1/2 (xi1 rd (R2[[i, j, 1, 1]] + R2[[i, j, 2, 2]]) +
       xi1 r (RD2[[i, j, 1, 1]] + RD2[[i, j, 2, 2]]) +
       xi2 Sum[
         R1[[i, a, \[Alpha]]] RD1[[j, \[Alpha], a]], {a, 1,
          dim}, {\[Alpha], 1, dim}] +
       xi3 Sum[
         R1[[j, a, \[Alpha]]] RD1[[i, \[Alpha], a]], {a, 1,
          dim}, {\[Alpha], 1, dim}]), {i, 1, Num}, {j, 1, Num}];
  (*---MB:bosonic---*)
  MB = ConstantArray[0, {Num, Num}];
  MB[[1, 2]] = nu; MB[[2, 1]] = -nu;
  MB[[3, 4]] = nu; MB[[4, 3]] = -nu;
  MB[[5, 6]] = nu; MB[[6, 5]] = -nu;
  MB[[7, 8]] = nu; MB[[8, 7]] = -nu;
  MB[[9, 10]] = nu; MB[[10, 9]] = -nu;
  MB[[11, 12]] = nu; MB[[12, 11]] = -nu;
  MB[[1, 1]] = MB[[2, 2]] = -blam;
  MB[[11, 11]] =
   MB[[12, 12]] = -bLamuu - bLamdd + U - blam - 2 mu + const*2;
  MB[[3, 3]] = MB[[4, 4]] = -bLamuu - blam - mu + const;
  MB[[5, 5]] = MB[[6, 6]] = -bLamdd - blam - mu + const;
  MB[[7, 7]] = MB[[8, 8]] = -bLamuu - blam - mu + const;
  MB[[9, 9]] = MB[[10, 10]] = -bLamdd - blam - mu + const;
  (*---Assemble 12x12 M---*)
  M = MV1 + MV2 + MB;
  (*---Assemble full 17x17 Mtot---*)

  Mtot = ConstantArray[0, {NUM, NUM}];
  Mtot[[1 ;; Num, 1 ;; Num]] = M;
  (*Fermionic-mode diagonal blocks*)

  Mtot[[13, 13]] = Mtot[[16, 16]] = gam0/2;
  Mtot[[14, 15]] = Mtot[[15, 14]] = gam0/2;
  (*Coupling:bosons<->fermionic modes*)

  Mtot[[3, 13]] = Mtot[[13, 3]] = -bpuu1;
  Mtot[[11, 13]] = Mtot[[13, 11]] = -bd1;
  Mtot[[9, 16]] = Mtot[[16, 9]] = -bpdd1;
  Mtot[[11, 16]] = Mtot[[16, 11]] = -bd1;
  Mtot[[5, 14]] = Mtot[[14, 5]] = -1/2 bpuu1;
  Mtot[[6, 14]] = Mtot[[14, 6]] = I/2 bpuu1;
  Mtot[[7, 14]] = Mtot[[14, 7]] = -1/2 bpdd1;
  Mtot[[8, 14]] = Mtot[[14, 8]] = -(I/2) bpdd1;
  Mtot[[5, 15]] = Mtot[[15, 5]] = -1/2 bpuu1;
  Mtot[[6, 15]] = Mtot[[15, 6]] = -I/2 bpuu1;
  Mtot[[7, 15]] = Mtot[[15, 7]] = -1/2 bpdd1;
  Mtot[[8, 15]] = Mtot[[15, 8]] = I/2 bpdd1;
  (*Coupling:bosons<->mu mode (index 17)*)

  Mtot[[1, 17]] = Mtot[[17, 1]] = -be1;
  Mtot[[3, 17]] = Mtot[[17, 3]] = -bpuu1;
  Mtot[[9, 17]] = Mtot[[17, 9]] = -bpdd1;
  Mtot[[11, 17]] = Mtot[[17, 11]] = -bd1;
  Mtot
  ]
(* ============================================================*)
(* ComputeSusceptibilities: full calculation for one q-point *)
(* ============================================================*)

ComputeSusceptibilities[q_] :=
  Module[{xi1, xi2, xi3, gam0, gam1, gam2, rho1, rho2, rho3, ek, ekpq,
     ekmq, Ek, Ekpq, Ekmq, bubble, MtotQ, MiQ, chargeSusc1,
    chargeSusc2, spinSusc,
    rdLocal =
     rd},(*capture rd at definition time*)(*---Initialize
accumulators---*)
   xi1 = xi2 = xi3 = 0.;
   gam0 = gam1 = gam2 = 0.;
   rho1 = rho2 = rho3 = 0.;
   (*---k-space sum---*)
   Do[ek = e[klist[[i]]];
    ekpq = e[klist[[i]] + q];
    ekmq = e[klist[[i]] - q];
    Ek = En[ek, r, bLam];
    Ekpq = En[ekpq, r, bLam];
    Ekmq = En[ekmq, r, bLam];
    bubble = (nF[Ek] - nF[Ekpq])/(I nu + Ek - Ekpq);
    xi1 += nF[Ek] ek/Nk;
    xi2 += nF[Ek] ekpq/Nk;
    xi3 += nF[Ek] ekmq/Nk;
    gam0 += bubble/Nk;
    gam1 += bubble ek/Nk;
    gam2 += bubble ekpq/Nk;
    rho1 += bubble ek^2/Nk;
    rho2 += bubble ek ekpq/Nk;
    rho3 += bubble ekpq^2/Nk, {i, 1, Nk}];
   (*---Build and invert Mtot---*)
   MtotQ =
    BuildMtot[xi1, xi2, xi3, gam0, gam1, gam2, rho1, rho2, rho3,
     rdLocal];
   MiQ = PseudoInverse[MtotQ];
   (*---Susceptibilities---*)
   chargeSusc1 =
    2 bd^2 MiQ[[11, 11]] + 2 be^2 MiQ[[1, 1]] -
     2 be bd MiQ[[1, 11]] - 2 bd be MiQ[[11, 1]];
   chargeSusc2 =
    1/2 (4 bp^2 MiQ[[3, 3]] + 4 bp^2 MiQ[[9, 9]] +
       16 bd^2 MiQ[[11, 11]] + 4 bp^2 MiQ[[3, 9]] +
       4 bp^2 MiQ[[9, 3]] +
       8 bp bd (MiQ[[3, 11]] + MiQ[[11, 3]] + MiQ[[9, 11]] +
          MiQ[[11, 9]]));
   spinSusc =
    2 bp^2 (MiQ[[3, 3]] + MiQ[[9, 9]] - MiQ[[3, 9]] - MiQ[[9, 3]]);
   <|"q" -> q, "ChargeSusc1" -> chargeSusc1,
    "ChargeSusc2" -> chargeSusc2, "SpinSusc" -> spinSusc|>];

(* ============================================================*)
(* Distribute all globals to parallel kernels *)
(* ============================================================*)

DistributeDefinitions[NUM, Num, dim, nu, r, rd, bLam, blam, bLamuu,
  bLamdd, U, be1, bd1, bpuu1, bpdd1, bp, be, bd, klist, Nk, R1, R2,
  RD1, RD2, e, En, nF, BuildMtot, ComputeSusceptibilities];

(* ============================================================*)
(* High-symmetry BZ path: Gamma->X->M->Gamma *)
(* Square lattice: Gamma=(0,0), X=(Pi,0), M=(Pi,Pi) *)
(* ============================================================*)

Npath = 50;(*points per segment,150 total*)
\[CapitalGamma]pt = {0, 0};
Xpt = {Pi, 0};
Mpt = {Pi, Pi};

segGX = Table[\[CapitalGamma]pt + t (Xpt - \[CapitalGamma]pt), {t, 0.,
     1. - 1./Npath, 1./Npath}];
segXM = Table[Xpt + t (Mpt - Xpt), {t, 0., 1. - 1./Npath, 1./Npath}];
segMG = Table[
   Mpt + t (\[CapitalGamma]pt - Mpt), {t, 0., 1. - 1./Npath,
    1./Npath}];

qPath = Join[segGX, segXM, segMG];

(* Cumulative arc-length coordinate for the x-axis *)

arcLength[seg_] :=
  Accumulate[
   Prepend[
    Table[Norm[seg[[i + 1]] - seg[[i]]], {i, 1, Length[seg] - 1}],
    0.]];

kcoordGX = arcLength[segGX];
kcoordXM = arcLength[segXM] + Last[kcoordGX];
kcoordMG = arcLength[segMG] + Last[kcoordXM];
kcoord = Join[kcoordGX, kcoordXM, kcoordMG];

(*High-symmetry tick positions*)
tickG1 = kcoord[[1]];
tickX = kcoord[[Npath]];
tickM = kcoord[[2 Npath]];
tickG2 = kcoord[[-1]];

(* ============================================================*)
(* Run the calculation over the full BZ path *)
(* ============================================================*)

results = ParallelMap[ComputeSusceptibilities, qPath];

chargeSusc1 = Re@results[[All, "ChargeSusc1"]];
chargeSusc2 = Re@results[[All, "ChargeSusc2"]];
spinSusc = Re@results[[All, "SpinSusc"]];

(* ============================================================*)
(* Plot *)
(* ============================================================*)

(*Drop the first point (Gamma={0,0}) which diverges*)

kcoordPlot = kcoord[[2 ;;]];
chargeSusc1P = chargeSusc1[[2 ;;]];
spinSuscP = spinSusc[[2 ;;]];

ListLinePlot[{Transpose[{kcoordPlot, spinSuscP/4}],
  Transpose[{kcoordPlot, chargeSusc1P}]},
 PlotLegends ->
  Placed[
   LineLegend[{Directive[Blue, Thick],
     Directive[Black,
      Thick]}, {"\!\(\*SubscriptBox[\(\[Chi]\), \(s\)]\)(q)",
     "\!\(\*SubscriptBox[\(\[Chi]\), \(c\)]\)(q)"},
    LegendMarkerSize -> 30], {0.25, 0.82}],
 Ticks -> {{{tickG1, "\[CapitalGamma]"}, {tickX, "X"}, {tickM,
     "M"}, {tickG2, "\[CapitalGamma]"}}, Automatic},
 GridLines -> {{tickX, tickM}, None},
 GridLinesStyle -> Directive[Gray, Thin], Frame -> True,
 FrameTicks -> {{Automatic,
    None}, {{{tickG1, "\[CapitalGamma]"}, {tickX, "X"}, {tickM,
      "M"}, {tickG2, "\[CapitalGamma]"}}, None}},
 FrameLabel -> {None, "Static susceptibility"},
 PlotStyle -> {Directive[Blue, Thick], Directive[Black, Thick]},
 ScalingFunctions -> {None, "Log"},
 PlotRange -> {{0, 10.6}, {0.1, 20}}, ImageSize -> 500,
 Background -> White,
 BaseStyle -> {FontFamily -> "Times", FontSize -> 16},
 Epilog -> {Inset[Style["U/t = 0.0", 20, Black],
    Scaled[{0.85, 0.9}]]}]
