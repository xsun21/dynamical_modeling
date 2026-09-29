(* Content-type: application/vnd.wolfram.mathematica *)

(*** Wolfram Notebook File ***)
(* http://www.wolfram.com/nb *)

(* CreatedBy='Mathematica 13.0' *)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       158,          7]
NotebookDataLength[     96715,       2746]
NotebookOptionsPosition[     95594,       2720]
NotebookOutlinePosition[     96019,       2737]
CellTagsIndexPosition[     95976,       2734]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 RowBox[{"ClearAll", "[", "\"\<Global`*\>\"", "]"}]], "Input",
 CellChangeTimes->{{3.999599914803172*^9, 3.999599938305369*^9}, {
  3.999599982514463*^9, 3.9995999845463467`*^9}},
 CellLabel->
  "In[1161]:=",ExpressionUUID->"78f43534-486e-4f8c-b234-abf41a1de27f"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "===", "===", "===", "===", "===", "===", "===", "===", "===", "===", "===",
     "===", "===", "===", "===", "===", "===", "===", "===", "==="}], "*)"}], 
  "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{
   "Expand", " ", "Lagrangian", " ", "To", " ", "Quadratic", " ", "Order", 
    " ", "In", " ", "Order"}], " ", "*)"}], "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{
   "===", "===", "===", "===", "===", "===", "===", "===", "===", "===", "===",
     "===", "===", "===", "===", "===", "===", "===", "===", "==="}], "*)"}], 
  "\n", 
  RowBox[{
   RowBox[{
    RowBox[{"Num", "=", "12"}], ";"}], "\n", 
   RowBox[{
    RowBox[{"dim", "=", "2"}], ";"}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"rd", "=", "r"}], ";"}], "\n", 
   RowBox[{
    RowBox[{"bpuu1", "=", "p"}], ";", 
    RowBox[{"bpdd1", "=", "p"}], ";"}], "\n", 
   RowBox[{
    RowBox[{"be1", "=", "e"}], ";", 
    RowBox[{"bd1", "=", "d"}], ";"}], "\n", 
   RowBox[{
    RowBox[{"bLamuu", "=", "\[CapitalLambda]"}], ";", 
    RowBox[{"bLamdd", "=", "\[CapitalLambda]"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"blam", "=", "\[Lambda]"}], ";"}], "\n", 
   RowBox[{
    RowBox[{"nu", "=", "\[Nu]"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"mu", "=", "\[Mu]"}], ";"}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
    "===", "===", "===", "===", "===", "===", "===", "===", "===", "===", "===",
      "===", "===", "===", "===", "===", "===", "===", "===", "==="}], "*)"}],
    "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{"Density", " ", "matrix", " ", "variations", " ", 
     RowBox[{"(", 
      RowBox[{"k", "-", "independent"}], ")"}]}], "*)"}], 
   "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
    "===", "===", "===", "===", "===", "===", "===", "===", "===", "===", "===",
      "===", "===", "===", "===", "===", "===", "===", "===", "==="}], "*)"}],
    "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"Denp1", "=", 
     RowBox[{"ConstantArray", "[", 
      RowBox[{"0", ",", 
       RowBox[{"{", 
        RowBox[{"Num", ",", "dim", ",", "dim"}], "}"}]}], "]"}]}], ";"}], 
   "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"Denp1", "[", 
      RowBox[{"[", 
       RowBox[{"3", ",", "1", ",", "1"}], "]"}], "]"}], "=", 
     RowBox[{"2", " ", "bpuu1"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"Denp1", "[", 
      RowBox[{"[", 
       RowBox[{"11", ",", "1", ",", "1"}], "]"}], "]"}], "=", 
     RowBox[{"2", " ", "bd1"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"Denp1", "[", 
      RowBox[{"[", 
       RowBox[{"5", ",", "1", ",", "2"}], "]"}], "]"}], "=", "bpuu1"}], ";"}],
    "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"Denp1", "[", 
      RowBox[{"[", 
       RowBox[{"6", ",", "1", ",", "2"}], "]"}], "]"}], "=", 
     RowBox[{
      RowBox[{"-", "I"}], " ", "bpuu1"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"Denp1", "[", 
      RowBox[{"[", 
       RowBox[{"7", ",", "1", ",", "2"}], "]"}], "]"}], "=", "bpdd1"}], ";"}],
    "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"Denp1", "[", 
      RowBox[{"[", 
       RowBox[{"8", ",", "1", ",", "2"}], "]"}], "]"}], "=", 
     RowBox[{"I", " ", "bpdd1"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"Denp1", "[", 
      RowBox[{"[", 
       RowBox[{"5", ",", "2", ",", "1"}], "]"}], "]"}], "=", "bpuu1"}], ";"}],
    "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"Denp1", "[", 
      RowBox[{"[", 
       RowBox[{"6", ",", "2", ",", "1"}], "]"}], "]"}], "=", 
     RowBox[{"I", " ", "bpuu1"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"Denp1", "[", 
      RowBox[{"[", 
       RowBox[{"7", ",", "2", ",", "1"}], "]"}], "]"}], "=", "bpdd1"}], ";"}],
    "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"Denp1", "[", 
      RowBox[{"[", 
       RowBox[{"8", ",", "2", ",", "1"}], "]"}], "]"}], "=", 
     RowBox[{
      RowBox[{"-", "I"}], " ", "bpdd1"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"Denp1", "[", 
      RowBox[{"[", 
       RowBox[{"9", ",", "2", ",", "2"}], "]"}], "]"}], "=", 
     RowBox[{"2", " ", "bpdd1"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"Denp1", "[", 
      RowBox[{"[", 
       RowBox[{"11", ",", "2", ",", "2"}], "]"}], "]"}], "=", 
     RowBox[{"2", " ", "bd1"}]}], ";"}], "\n", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"Denh1", "=", 
     RowBox[{"ConstantArray", "[", 
      RowBox[{"0", ",", 
       RowBox[{"{", 
        RowBox[{"Num", ",", "dim", ",", "dim"}], "}"}]}], "]"}]}], ";"}], 
   "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"Denh1", "[", 
      RowBox[{"[", 
       RowBox[{"1", ",", "1", ",", "1"}], "]"}], "]"}], "=", 
     RowBox[{"2", " ", "be1"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"Denh1", "[", 
      RowBox[{"[", 
       RowBox[{"9", ",", "1", ",", "1"}], "]"}], "]"}], "=", 
     RowBox[{"2", " ", "bpdd1"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"Denh1", "[", 
      RowBox[{"[", 
       RowBox[{"5", ",", "1", ",", "2"}], "]"}], "]"}], "=", 
     RowBox[{"-", "bpuu1"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"Denh1", "[", 
      RowBox[{"[", 
       RowBox[{"6", ",", "1", ",", "2"}], "]"}], "]"}], "=", 
     RowBox[{"I", " ", "bpuu1"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"Denh1", "[", 
      RowBox[{"[", 
       RowBox[{"7", ",", "1", ",", "2"}], "]"}], "]"}], "=", 
     RowBox[{"-", "bpdd1"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"Denh1", "[", 
      RowBox[{"[", 
       RowBox[{"8", ",", "1", ",", "2"}], "]"}], "]"}], "=", 
     RowBox[{
      RowBox[{"-", "I"}], " ", "bpdd1"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"Denh1", "[", 
      RowBox[{"[", 
       RowBox[{"5", ",", "2", ",", "1"}], "]"}], "]"}], "=", 
     RowBox[{"-", "bpuu1"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"Denh1", "[", 
      RowBox[{"[", 
       RowBox[{"6", ",", "2", ",", "1"}], "]"}], "]"}], "=", 
     RowBox[{
      RowBox[{"-", "I"}], " ", "bpuu1"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"Denh1", "[", 
      RowBox[{"[", 
       RowBox[{"7", ",", "2", ",", "1"}], "]"}], "]"}], "=", 
     RowBox[{"-", "bpdd1"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"Denh1", "[", 
      RowBox[{"[", 
       RowBox[{"8", ",", "2", ",", "1"}], "]"}], "]"}], "=", 
     RowBox[{"I", " ", "bpdd1"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"Denh1", "[", 
      RowBox[{"[", 
       RowBox[{"1", ",", "2", ",", "2"}], "]"}], "]"}], "=", 
     RowBox[{"2", " ", "be1"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"Denh1", "[", 
      RowBox[{"[", 
       RowBox[{"3", ",", "2", ",", "2"}], "]"}], "]"}], "=", 
     RowBox[{"2", " ", "bpuu1"}]}], ";"}], "\[IndentingNewLine]", "\n", 
   RowBox[{"(*", " ", 
    RowBox[{
    "===", "===", "===", "===", "===", "===", "===", "===", "===", "===", "===",
      "===", "===", "===", "===", "===", "===", "===", "===", "==="}], "*)"}],
    "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{"LR", " ", "variations"}], "*)"}], "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
    "===", "===", "===", "===", "===", "===", "===", "===", "===", "===", "===",
      "===", "===", "===", "===", "===", "===", "===", "===", "==="}], "*)"}],
    "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"LR0", "=", 
     RowBox[{"ConstantArray", "[", 
      RowBox[{"0", ",", 
       RowBox[{"{", 
        RowBox[{"dim", ",", "dim"}], "}"}]}], "]"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"LR0", "[", 
      RowBox[{"[", 
       RowBox[{"1", ",", "1"}], "]"}], "]"}], "=", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"1", "-", 
        RowBox[{"be1", "^", "2"}], "-", 
        RowBox[{"bpdd1", "^", "2"}]}], ")"}], "^", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", "1"}], "/", "2"}], ")"}]}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"LR0", "[", 
      RowBox[{"[", 
       RowBox[{"2", ",", "2"}], "]"}], "]"}], "=", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"1", "-", 
        RowBox[{"be1", "^", "2"}], "-", 
        RowBox[{"bpuu1", "^", "2"}]}], ")"}], "^", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", "1"}], "/", "2"}], ")"}]}]}], ";"}], "\n", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"LR1", "=", 
     RowBox[{"ConstantArray", "[", 
      RowBox[{"0", ",", 
       RowBox[{"{", 
        RowBox[{"Num", ",", "dim", ",", "dim"}], "}"}]}], "]"}]}], ";"}], 
   "\n", 
   RowBox[{
    RowBox[{"Do", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"LR1", "[", 
        RowBox[{"[", 
         RowBox[{"i", ",", "a", ",", "b"}], "]"}], "]"}], "=", 
       RowBox[{
        RowBox[{"1", "/", "2"}], " ", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"1", "-", 
           RowBox[{"be1", "^", "2"}], "-", 
           RowBox[{"bpdd1", "^", "2"}]}], ")"}], "^", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "3"}], "/", "2"}], ")"}]}], " ", 
        RowBox[{"Denh1", "[", 
         RowBox[{"[", 
          RowBox[{"i", ",", "a", ",", "b"}], "]"}], "]"}]}]}], ",", 
      RowBox[{"{", 
       RowBox[{"i", ",", "1", ",", "Num"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"a", ",", "1", ",", "dim"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"b", ",", "1", ",", "dim"}], "}"}]}], "]"}], ";"}], "\n", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"LR2", "=", 
     RowBox[{"ConstantArray", "[", 
      RowBox[{"0", ",", 
       RowBox[{"{", 
        RowBox[{"Num", ",", "Num", ",", "dim", ",", "dim"}], "}"}]}], "]"}]}],
     ";"}], "\n", 
   RowBox[{
    RowBox[{"Do", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"LR2", "[", 
        RowBox[{"[", 
         RowBox[{"i", ",", "j", ",", "1", ",", "b"}], "]"}], "]"}], "=", 
       RowBox[{
        RowBox[{"3", "/", "8"}], " ", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"1", "-", 
           RowBox[{"be1", "^", "2"}], "-", 
           RowBox[{"bpdd1", "^", "2"}]}], ")"}], "^", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "5"}], "/", "2"}], ")"}]}], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"Denh1", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", "1", ",", "1"}], "]"}], "]"}], " ", 
           RowBox[{"Denh1", "[", 
            RowBox[{"[", 
             RowBox[{"j", ",", "1", ",", "b"}], "]"}], "]"}]}], "+", 
          RowBox[{
           RowBox[{"Denh1", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", "1", ",", "2"}], "]"}], "]"}], " ", 
           RowBox[{"Denh1", "[", 
            RowBox[{"[", 
             RowBox[{"j", ",", "2", ",", "b"}], "]"}], "]"}]}]}], ")"}]}]}], 
      ",", 
      RowBox[{"{", 
       RowBox[{"i", ",", "1", ",", "Num"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"j", ",", "1", ",", "Num"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"b", ",", "1", ",", "dim"}], "}"}]}], "]"}], ";"}], "\n", 
   RowBox[{
    RowBox[{"Do", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"LR2", "[", 
        RowBox[{"[", 
         RowBox[{"i", ",", "j", ",", "2", ",", "b"}], "]"}], "]"}], "=", 
       RowBox[{
        RowBox[{"3", "/", "8"}], " ", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"1", "-", 
           RowBox[{"be1", "^", "2"}], "-", 
           RowBox[{"bpdd1", "^", "2"}]}], ")"}], "^", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "5"}], "/", "2"}], ")"}]}], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"Denh1", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", "2", ",", "1"}], "]"}], "]"}], " ", 
           RowBox[{"Denh1", "[", 
            RowBox[{"[", 
             RowBox[{"j", ",", "1", ",", "b"}], "]"}], "]"}]}], "+", 
          RowBox[{
           RowBox[{"Denh1", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", "2", ",", "2"}], "]"}], "]"}], " ", 
           RowBox[{"Denh1", "[", 
            RowBox[{"[", 
             RowBox[{"j", ",", "2", ",", "b"}], "]"}], "]"}]}]}], ")"}]}]}], 
      ",", 
      RowBox[{"{", 
       RowBox[{"i", ",", "1", ",", "Num"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"j", ",", "1", ",", "Num"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"b", ",", "1", ",", "dim"}], "}"}]}], "]"}], ";"}], 
   "\[IndentingNewLine]", "\n", 
   RowBox[{"(*", " ", 
    RowBox[{
    "===", "===", "===", "===", "===", "===", "===", "===", "===", "===", "===",
      "===", "===", "===", "===", "===", "===", "===", "===", "==="}], "*)"}],
    "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{"RR", " ", "variations"}], "*)"}], "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
    "===", "===", "===", "===", "===", "===", "===", "===", "===", "===", "===",
      "===", "===", "===", "===", "===", "===", "===", "===", "==="}], "*)"}],
    "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"RR0", "=", 
     RowBox[{"ConstantArray", "[", 
      RowBox[{"0", ",", 
       RowBox[{"{", 
        RowBox[{"dim", ",", "dim"}], "}"}]}], "]"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"RR0", "[", 
      RowBox[{"[", 
       RowBox[{"1", ",", "1"}], "]"}], "]"}], "=", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"1", "-", 
        RowBox[{"bpuu1", "^", "2"}], "-", 
        RowBox[{"bd1", "^", "2"}]}], ")"}], "^", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", "1"}], "/", "2"}], ")"}]}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"RR0", "[", 
      RowBox[{"[", 
       RowBox[{"2", ",", "2"}], "]"}], "]"}], "=", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"1", "-", 
        RowBox[{"bpdd1", "^", "2"}], "-", 
        RowBox[{"bd1", "^", "2"}]}], ")"}], "^", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{"-", "1"}], "/", "2"}], ")"}]}]}], ";"}], "\n", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"RR1", "=", 
     RowBox[{"ConstantArray", "[", 
      RowBox[{"0", ",", 
       RowBox[{"{", 
        RowBox[{"Num", ",", "dim", ",", "dim"}], "}"}]}], "]"}]}], ";"}], 
   "\n", 
   RowBox[{
    RowBox[{"Do", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"RR1", "[", 
        RowBox[{"[", 
         RowBox[{"i", ",", "a", ",", "b"}], "]"}], "]"}], "=", 
       RowBox[{
        RowBox[{"1", "/", "2"}], " ", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"1", "-", 
           RowBox[{"bpuu1", "^", "2"}], "-", 
           RowBox[{"bd1", "^", "2"}]}], ")"}], "^", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "3"}], "/", "2"}], ")"}]}], " ", 
        RowBox[{"Denp1", "[", 
         RowBox[{"[", 
          RowBox[{"i", ",", "a", ",", "b"}], "]"}], "]"}]}]}], ",", 
      RowBox[{"{", 
       RowBox[{"i", ",", "1", ",", "Num"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"a", ",", "1", ",", "dim"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"b", ",", "1", ",", "dim"}], "}"}]}], "]"}], ";"}], "\n", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"RR2", "=", 
     RowBox[{"ConstantArray", "[", 
      RowBox[{"0", ",", 
       RowBox[{"{", 
        RowBox[{"Num", ",", "Num", ",", "dim", ",", "dim"}], "}"}]}], "]"}]}],
     ";"}], "\n", 
   RowBox[{
    RowBox[{"Do", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"RR2", "[", 
        RowBox[{"[", 
         RowBox[{"i", ",", "j", ",", "1", ",", "b"}], "]"}], "]"}], "=", 
       RowBox[{
        RowBox[{"3", "/", "8"}], " ", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"1", "-", 
           RowBox[{"bpuu1", "^", "2"}], "-", 
           RowBox[{"bd1", "^", "2"}]}], ")"}], "^", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "5"}], "/", "2"}], ")"}]}], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"Denp1", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", "1", ",", "1"}], "]"}], "]"}], " ", 
           RowBox[{"Denp1", "[", 
            RowBox[{"[", 
             RowBox[{"j", ",", "1", ",", "b"}], "]"}], "]"}]}], "+", 
          RowBox[{
           RowBox[{"Denp1", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", "1", ",", "2"}], "]"}], "]"}], " ", 
           RowBox[{"Denp1", "[", 
            RowBox[{"[", 
             RowBox[{"j", ",", "2", ",", "b"}], "]"}], "]"}]}]}], ")"}]}]}], 
      ",", 
      RowBox[{"{", 
       RowBox[{"i", ",", "1", ",", "Num"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"j", ",", "1", ",", "Num"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"b", ",", "1", ",", "dim"}], "}"}]}], "]"}], ";"}], "\n", 
   RowBox[{
    RowBox[{"Do", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"RR2", "[", 
        RowBox[{"[", 
         RowBox[{"i", ",", "j", ",", "2", ",", "b"}], "]"}], "]"}], "=", 
       RowBox[{
        RowBox[{"3", "/", "8"}], " ", 
        RowBox[{
         RowBox[{"(", 
          RowBox[{"1", "-", 
           RowBox[{"bpdd1", "^", "2"}], "-", 
           RowBox[{"bd1", "^", "2"}]}], ")"}], "^", 
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "5"}], "/", "2"}], ")"}]}], " ", 
        RowBox[{"(", 
         RowBox[{
          RowBox[{
           RowBox[{"Denp1", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", "2", ",", "1"}], "]"}], "]"}], " ", 
           RowBox[{"Denp1", "[", 
            RowBox[{"[", 
             RowBox[{"j", ",", "1", ",", "b"}], "]"}], "]"}]}], "+", 
          RowBox[{
           RowBox[{"Denp1", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", "2", ",", "2"}], "]"}], "]"}], " ", 
           RowBox[{"Denp1", "[", 
            RowBox[{"[", 
             RowBox[{"j", ",", "2", ",", "b"}], "]"}], "]"}]}]}], ")"}]}]}], 
      ",", 
      RowBox[{"{", 
       RowBox[{"i", ",", "1", ",", "Num"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"j", ",", "1", ",", "Num"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"b", ",", "1", ",", "dim"}], "}"}]}], "]"}], ";"}], 
   "\[IndentingNewLine]", "\n", 
   RowBox[{"(*", " ", 
    RowBox[{
    "===", "===", "===", "===", "===", "===", "===", "===", "===", "===", "===",
      "===", "===", "===", "===", "===", "===", "===", "===", "==="}], "*)"}],
    "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{"MR", " ", "variations"}], "*)"}], "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
    "===", "===", "===", "===", "===", "===", "===", "===", "===", "===", "===",
      "===", "===", "===", "===", "===", "===", "===", "===", "==="}], "*)"}],
    "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"MR0", "=", 
     RowBox[{"ConstantArray", "[", 
      RowBox[{"0", ",", 
       RowBox[{"{", 
        RowBox[{"dim", ",", "dim"}], "}"}]}], "]"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MR0", "[", 
      RowBox[{"[", 
       RowBox[{"1", ",", "1"}], "]"}], "]"}], "=", 
     RowBox[{
      RowBox[{"bpuu1", " ", "be1"}], "+", 
      RowBox[{"bd1", " ", "bpdd1"}]}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MR0", "[", 
      RowBox[{"[", 
       RowBox[{"2", ",", "2"}], "]"}], "]"}], "=", 
     RowBox[{
      RowBox[{"bpdd1", " ", "be1"}], "+", 
      RowBox[{"bd1", " ", "bpuu1"}]}]}], ";"}], "\n", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"MR1", "=", 
     RowBox[{"ConstantArray", "[", 
      RowBox[{"0", ",", 
       RowBox[{"{", 
        RowBox[{"Num", ",", "dim", ",", "dim"}], "}"}]}], "]"}]}], ";"}], 
   "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MR1", "[", 
      RowBox[{"[", 
       RowBox[{"1", ",", "1", ",", "1"}], "]"}], "]"}], "=", "bpuu1"}], ";", 
    RowBox[{
     RowBox[{"MR1", "[", 
      RowBox[{"[", 
       RowBox[{"2", ",", "1", ",", "1"}], "]"}], "]"}], "=", 
     RowBox[{"I", " ", "bpuu1"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MR1", "[", 
      RowBox[{"[", 
       RowBox[{"3", ",", "1", ",", "1"}], "]"}], "]"}], "=", "be1"}], ";", 
    RowBox[{
     RowBox[{"MR1", "[", 
      RowBox[{"[", 
       RowBox[{"4", ",", "1", ",", "1"}], "]"}], "]"}], "=", 
     RowBox[{
      RowBox[{"-", "I"}], " ", "be1"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MR1", "[", 
      RowBox[{"[", 
       RowBox[{"9", ",", "1", ",", "1"}], "]"}], "]"}], "=", "bd1"}], ";", 
    RowBox[{
     RowBox[{"MR1", "[", 
      RowBox[{"[", 
       RowBox[{"10", ",", "1", ",", "1"}], "]"}], "]"}], "=", 
     RowBox[{"I", " ", "bd1"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MR1", "[", 
      RowBox[{"[", 
       RowBox[{"11", ",", "1", ",", "1"}], "]"}], "]"}], "=", "bpdd1"}], ";", 
    
    RowBox[{
     RowBox[{"MR1", "[", 
      RowBox[{"[", 
       RowBox[{"12", ",", "1", ",", "1"}], "]"}], "]"}], "=", 
     RowBox[{
      RowBox[{"-", "I"}], " ", "bpdd1"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MR1", "[", 
      RowBox[{"[", 
       RowBox[{"5", ",", "1", ",", "2"}], "]"}], "]"}], "=", "be1"}], ";", 
    RowBox[{
     RowBox[{"MR1", "[", 
      RowBox[{"[", 
       RowBox[{"6", ",", "1", ",", "2"}], "]"}], "]"}], "=", 
     RowBox[{
      RowBox[{"-", "I"}], " ", "be1"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MR1", "[", 
      RowBox[{"[", 
       RowBox[{"7", ",", "1", ",", "2"}], "]"}], "]"}], "=", 
     RowBox[{"-", "bd1"}]}], ";", 
    RowBox[{
     RowBox[{"MR1", "[", 
      RowBox[{"[", 
       RowBox[{"8", ",", "1", ",", "2"}], "]"}], "]"}], "=", 
     RowBox[{
      RowBox[{"-", "I"}], " ", "bd1"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MR1", "[", 
      RowBox[{"[", 
       RowBox[{"5", ",", "2", ",", "1"}], "]"}], "]"}], "=", 
     RowBox[{"-", "bd1"}]}], ";", 
    RowBox[{
     RowBox[{"MR1", "[", 
      RowBox[{"[", 
       RowBox[{"6", ",", "2", ",", "1"}], "]"}], "]"}], "=", 
     RowBox[{
      RowBox[{"-", "I"}], " ", "bd1"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MR1", "[", 
      RowBox[{"[", 
       RowBox[{"7", ",", "2", ",", "1"}], "]"}], "]"}], "=", "be1"}], ";", 
    RowBox[{
     RowBox[{"MR1", "[", 
      RowBox[{"[", 
       RowBox[{"8", ",", "2", ",", "1"}], "]"}], "]"}], "=", 
     RowBox[{
      RowBox[{"-", "I"}], " ", "be1"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MR1", "[", 
      RowBox[{"[", 
       RowBox[{"1", ",", "2", ",", "2"}], "]"}], "]"}], "=", "bpdd1"}], ";", 
    RowBox[{
     RowBox[{"MR1", "[", 
      RowBox[{"[", 
       RowBox[{"2", ",", "2", ",", "2"}], "]"}], "]"}], "=", 
     RowBox[{"I", " ", "bpdd1"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MR1", "[", 
      RowBox[{"[", 
       RowBox[{"3", ",", "2", ",", "2"}], "]"}], "]"}], "=", "bd1"}], ";", 
    RowBox[{
     RowBox[{"MR1", "[", 
      RowBox[{"[", 
       RowBox[{"4", ",", "2", ",", "2"}], "]"}], "]"}], "=", 
     RowBox[{"I", " ", "bd1"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MR1", "[", 
      RowBox[{"[", 
       RowBox[{"9", ",", "2", ",", "2"}], "]"}], "]"}], "=", "be1"}], ";", 
    RowBox[{
     RowBox[{"MR1", "[", 
      RowBox[{"[", 
       RowBox[{"10", ",", "2", ",", "2"}], "]"}], "]"}], "=", 
     RowBox[{
      RowBox[{"-", "I"}], " ", "be1"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MR1", "[", 
      RowBox[{"[", 
       RowBox[{"11", ",", "2", ",", "2"}], "]"}], "]"}], "=", "bpuu1"}], ";", 
    
    RowBox[{
     RowBox[{"MR1", "[", 
      RowBox[{"[", 
       RowBox[{"12", ",", "2", ",", "2"}], "]"}], "]"}], "=", 
     RowBox[{
      RowBox[{"-", "I"}], " ", "bpuu1"}]}], ";"}], "\n", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"MR2", "=", 
     RowBox[{"ConstantArray", "[", 
      RowBox[{"0", ",", 
       RowBox[{"{", 
        RowBox[{"Num", ",", "Num", ",", "dim", ",", "dim"}], "}"}]}], "]"}]}],
     ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MR2", "[", 
      RowBox[{"[", 
       RowBox[{"3", ",", "1", ",", "1", ",", "1"}], "]"}], "]"}], "=", "1."}],
     ";", 
    RowBox[{
     RowBox[{"MR2", "[", 
      RowBox[{"[", 
       RowBox[{"3", ",", "2", ",", "1", ",", "1"}], "]"}], "]"}], "=", "I"}], 
    ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MR2", "[", 
      RowBox[{"[", 
       RowBox[{"4", ",", "1", ",", "1", ",", "1"}], "]"}], "]"}], "=", 
     RowBox[{"-", "I"}]}], ";", 
    RowBox[{
     RowBox[{"MR2", "[", 
      RowBox[{"[", 
       RowBox[{"4", ",", "2", ",", "1", ",", "1"}], "]"}], "]"}], "=", "1."}],
     ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MR2", "[", 
      RowBox[{"[", 
       RowBox[{"11", ",", "9", ",", "1", ",", "1"}], "]"}], "]"}], "=", 
     "1."}], ";", 
    RowBox[{
     RowBox[{"MR2", "[", 
      RowBox[{"[", 
       RowBox[{"11", ",", "10", ",", "1", ",", "1"}], "]"}], "]"}], "=", 
     "I"}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MR2", "[", 
      RowBox[{"[", 
       RowBox[{"12", ",", "9", ",", "1", ",", "1"}], "]"}], "]"}], "=", 
     RowBox[{"-", "I"}]}], ";", 
    RowBox[{
     RowBox[{"MR2", "[", 
      RowBox[{"[", 
       RowBox[{"12", ",", "10", ",", "1", ",", "1"}], "]"}], "]"}], "=", 
     "1."}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MR2", "[", 
      RowBox[{"[", 
       RowBox[{"5", ",", "1", ",", "1", ",", "2"}], "]"}], "]"}], "=", "1."}],
     ";", 
    RowBox[{
     RowBox[{"MR2", "[", 
      RowBox[{"[", 
       RowBox[{"5", ",", "2", ",", "1", ",", "2"}], "]"}], "]"}], "=", "I"}], 
    ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MR2", "[", 
      RowBox[{"[", 
       RowBox[{"6", ",", "1", ",", "1", ",", "2"}], "]"}], "]"}], "=", 
     RowBox[{"-", "I"}]}], ";", 
    RowBox[{
     RowBox[{"MR2", "[", 
      RowBox[{"[", 
       RowBox[{"6", ",", "2", ",", "1", ",", "2"}], "]"}], "]"}], "=", "1."}],
     ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MR2", "[", 
      RowBox[{"[", 
       RowBox[{"11", ",", "7", ",", "1", ",", "2"}], "]"}], "]"}], "=", 
     RowBox[{"-", "1."}]}], ";", 
    RowBox[{
     RowBox[{"MR2", "[", 
      RowBox[{"[", 
       RowBox[{"11", ",", "8", ",", "1", ",", "2"}], "]"}], "]"}], "=", 
     RowBox[{"-", "I"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MR2", "[", 
      RowBox[{"[", 
       RowBox[{"12", ",", "7", ",", "1", ",", "2"}], "]"}], "]"}], "=", "I"}],
     ";", 
    RowBox[{
     RowBox[{"MR2", "[", 
      RowBox[{"[", 
       RowBox[{"12", ",", "8", ",", "1", ",", "2"}], "]"}], "]"}], "=", 
     RowBox[{"-", "1."}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MR2", "[", 
      RowBox[{"[", 
       RowBox[{"7", ",", "1", ",", "2", ",", "1"}], "]"}], "]"}], "=", "1."}],
     ";", 
    RowBox[{
     RowBox[{"MR2", "[", 
      RowBox[{"[", 
       RowBox[{"7", ",", "2", ",", "2", ",", "1"}], "]"}], "]"}], "=", "I"}], 
    ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MR2", "[", 
      RowBox[{"[", 
       RowBox[{"8", ",", "1", ",", "2", ",", "1"}], "]"}], "]"}], "=", 
     RowBox[{"-", "I"}]}], ";", 
    RowBox[{
     RowBox[{"MR2", "[", 
      RowBox[{"[", 
       RowBox[{"8", ",", "2", ",", "2", ",", "1"}], "]"}], "]"}], "=", "1."}],
     ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MR2", "[", 
      RowBox[{"[", 
       RowBox[{"11", ",", "5", ",", "2", ",", "1"}], "]"}], "]"}], "=", 
     RowBox[{"-", "1."}]}], ";", 
    RowBox[{
     RowBox[{"MR2", "[", 
      RowBox[{"[", 
       RowBox[{"11", ",", "6", ",", "2", ",", "1"}], "]"}], "]"}], "=", 
     RowBox[{"-", "I"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MR2", "[", 
      RowBox[{"[", 
       RowBox[{"12", ",", "5", ",", "2", ",", "1"}], "]"}], "]"}], "=", "I"}],
     ";", 
    RowBox[{
     RowBox[{"MR2", "[", 
      RowBox[{"[", 
       RowBox[{"12", ",", "6", ",", "2", ",", "1"}], "]"}], "]"}], "=", 
     RowBox[{"-", "1."}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MR2", "[", 
      RowBox[{"[", 
       RowBox[{"9", ",", "1", ",", "2", ",", "2"}], "]"}], "]"}], "=", "1."}],
     ";", 
    RowBox[{
     RowBox[{"MR2", "[", 
      RowBox[{"[", 
       RowBox[{"9", ",", "2", ",", "2", ",", "2"}], "]"}], "]"}], "=", "I"}], 
    ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MR2", "[", 
      RowBox[{"[", 
       RowBox[{"10", ",", "1", ",", "2", ",", "2"}], "]"}], "]"}], "=", 
     RowBox[{"-", "I"}]}], ";", 
    RowBox[{
     RowBox[{"MR2", "[", 
      RowBox[{"[", 
       RowBox[{"10", ",", "2", ",", "2", ",", "2"}], "]"}], "]"}], "=", 
     "1."}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MR2", "[", 
      RowBox[{"[", 
       RowBox[{"11", ",", "3", ",", "2", ",", "2"}], "]"}], "]"}], "=", 
     "1."}], ";", 
    RowBox[{
     RowBox[{"MR2", "[", 
      RowBox[{"[", 
       RowBox[{"11", ",", "4", ",", "2", ",", "2"}], "]"}], "]"}], "=", "I"}],
     ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MR2", "[", 
      RowBox[{"[", 
       RowBox[{"12", ",", "3", ",", "2", ",", "2"}], "]"}], "]"}], "=", 
     RowBox[{"-", "I"}]}], ";", 
    RowBox[{
     RowBox[{"MR2", "[", 
      RowBox[{"[", 
       RowBox[{"12", ",", "4", ",", "2", ",", "2"}], "]"}], "]"}], "=", 
     "1."}], ";"}], "\[IndentingNewLine]", "\n", 
   RowBox[{"(*", " ", 
    RowBox[{
    "===", "===", "===", "===", "===", "===", "===", "===", "===", "===", "===",
      "===", "===", "===", "===", "===", "===", "===", "===", "==="}], "*)"}],
    "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{"R", " ", "matrix", " ", "and", " ", "its", " ", "variations"}], 
    "*)"}], "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
    "===", "===", "===", "===", "===", "===", "===", "===", "===", "===", "===",
      "===", "===", "===", "===", "===", "===", "===", "===", "==="}], "*)"}],
    "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"R0", "=", 
     RowBox[{"MR0", ".", "RR0", ".", "LR0"}]}], ";"}], "\n", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"R1", "=", 
     RowBox[{"ConstantArray", "[", 
      RowBox[{"0", ",", 
       RowBox[{"{", 
        RowBox[{"Num", ",", "dim", ",", "dim"}], "}"}]}], "]"}]}], ";"}], 
   "\n", 
   RowBox[{
    RowBox[{"Do", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"R1", "[", 
        RowBox[{"[", 
         RowBox[{"i", ",", "a", ",", "\[Alpha]"}], "]"}], "]"}], "=", 
       RowBox[{"Sum", "[", 
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{"MR0", "[", 
            RowBox[{"[", 
             RowBox[{"\[Alpha]", ",", "b"}], "]"}], "]"}], " ", 
           RowBox[{"RR0", "[", 
            RowBox[{"[", 
             RowBox[{"b", ",", "c"}], "]"}], "]"}], " ", 
           RowBox[{"LR1", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", "c", ",", "a"}], "]"}], "]"}]}], "+", 
          RowBox[{
           RowBox[{"MR1", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", "\[Alpha]", ",", "b"}], "]"}], "]"}], " ", 
           RowBox[{"RR0", "[", 
            RowBox[{"[", 
             RowBox[{"b", ",", "c"}], "]"}], "]"}], " ", 
           RowBox[{"LR0", "[", 
            RowBox[{"[", 
             RowBox[{"c", ",", "a"}], "]"}], "]"}]}], "+", 
          RowBox[{
           RowBox[{"MR0", "[", 
            RowBox[{"[", 
             RowBox[{"\[Alpha]", ",", "b"}], "]"}], "]"}], " ", 
           RowBox[{"RR1", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", "b", ",", "c"}], "]"}], "]"}], " ", 
           RowBox[{"LR0", "[", 
            RowBox[{"[", 
             RowBox[{"c", ",", "a"}], "]"}], "]"}]}]}], ",", 
         RowBox[{"{", 
          RowBox[{"b", ",", "1", ",", "dim"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"c", ",", "1", ",", "dim"}], "}"}]}], "]"}]}], ",", 
      RowBox[{"{", 
       RowBox[{"i", ",", "1", ",", "Num"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"a", ",", "1", ",", "dim"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"\[Alpha]", ",", "1", ",", "dim"}], "}"}]}], "]"}], ";"}], 
   "\n", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"R2", "=", 
     RowBox[{"ConstantArray", "[", 
      RowBox[{"0", ",", 
       RowBox[{"{", 
        RowBox[{"Num", ",", "Num", ",", "dim", ",", "dim"}], "}"}]}], "]"}]}],
     ";"}], "\n", 
   RowBox[{
    RowBox[{"Do", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"R2", "[", 
        RowBox[{"[", 
         RowBox[{"i", ",", "j", ",", "a", ",", "\[Alpha]"}], "]"}], "]"}], 
       "=", 
       RowBox[{"2", " ", 
        RowBox[{"Sum", "[", 
         RowBox[{
          RowBox[{
           RowBox[{
            RowBox[{"LR1", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", "c", ",", "a"}], "]"}], "]"}], " ", 
            RowBox[{"MR1", "[", 
             RowBox[{"[", 
              RowBox[{"j", ",", "\[Alpha]", ",", "b"}], "]"}], "]"}], " ", 
            RowBox[{"RR0", "[", 
             RowBox[{"[", 
              RowBox[{"b", ",", "c"}], "]"}], "]"}]}], "+", 
           RowBox[{
            RowBox[{"LR1", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", "c", ",", "a"}], "]"}], "]"}], " ", 
            RowBox[{"MR0", "[", 
             RowBox[{"[", 
              RowBox[{"\[Alpha]", ",", "b"}], "]"}], "]"}], " ", 
            RowBox[{"RR1", "[", 
             RowBox[{"[", 
              RowBox[{"j", ",", "b", ",", "c"}], "]"}], "]"}]}], "+", 
           RowBox[{
            RowBox[{"LR0", "[", 
             RowBox[{"[", 
              RowBox[{"c", ",", "a"}], "]"}], "]"}], " ", 
            RowBox[{"MR1", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", "\[Alpha]", ",", "b"}], "]"}], "]"}], " ", 
            RowBox[{"RR1", "[", 
             RowBox[{"[", 
              RowBox[{"j", ",", "b", ",", "c"}], "]"}], "]"}]}], "+", 
           RowBox[{
            RowBox[{"LR2", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", "j", ",", "c", ",", "a"}], "]"}], "]"}], " ", 
            
            RowBox[{"MR0", "[", 
             RowBox[{"[", 
              RowBox[{"\[Alpha]", ",", "b"}], "]"}], "]"}], " ", 
            RowBox[{"RR0", "[", 
             RowBox[{"[", 
              RowBox[{"b", ",", "c"}], "]"}], "]"}]}], "+", 
           RowBox[{
            RowBox[{"LR0", "[", 
             RowBox[{"[", 
              RowBox[{"c", ",", "a"}], "]"}], "]"}], " ", 
            RowBox[{"MR2", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", "j", ",", "\[Alpha]", ",", "b"}], "]"}], 
             "]"}], " ", 
            RowBox[{"RR0", "[", 
             RowBox[{"[", 
              RowBox[{"b", ",", "c"}], "]"}], "]"}]}], "+", 
           RowBox[{
            RowBox[{"LR0", "[", 
             RowBox[{"[", 
              RowBox[{"c", ",", "a"}], "]"}], "]"}], " ", 
            RowBox[{"MR0", "[", 
             RowBox[{"[", 
              RowBox[{"\[Alpha]", ",", "b"}], "]"}], "]"}], " ", 
            RowBox[{"RR2", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", "j", ",", "b", ",", "c"}], "]"}], "]"}]}]}], 
          ",", 
          RowBox[{"{", 
           RowBox[{"b", ",", "1", ",", "dim"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"c", ",", "1", ",", "dim"}], "}"}]}], "]"}]}]}], ",", 
      RowBox[{"{", 
       RowBox[{"i", ",", "1", ",", "Num"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"j", ",", "1", ",", "Num"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"a", ",", "1", ",", "dim"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"\[Alpha]", ",", "1", ",", "dim"}], "}"}]}], "]"}], ";"}], 
   "\[IndentingNewLine]", "\n", 
   RowBox[{"(*", " ", 
    RowBox[{
    "===", "===", "===", "===", "===", "===", "===", "===", "===", "===", "===",
      "===", "===", "===", "===", "===", "===", "===", "===", "==="}], "*)"}],
    "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{"MRD", " ", "variations"}], "*)"}], "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
    "===", "===", "===", "===", "===", "===", "===", "===", "===", "===", "===",
      "===", "===", "===", "===", "===", "===", "===", "===", "==="}], "*)"}],
    "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"MRD0", "=", 
     RowBox[{"ConstantArray", "[", 
      RowBox[{"0", ",", 
       RowBox[{"{", 
        RowBox[{"dim", ",", "dim"}], "}"}]}], "]"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MRD0", "[", 
      RowBox[{"[", 
       RowBox[{"1", ",", "1"}], "]"}], "]"}], "=", 
     RowBox[{
      RowBox[{"bpuu1", " ", "be1"}], "+", 
      RowBox[{"bd1", " ", "bpdd1"}]}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MRD0", "[", 
      RowBox[{"[", 
       RowBox[{"2", ",", "2"}], "]"}], "]"}], "=", 
     RowBox[{
      RowBox[{"bpdd1", " ", "be1"}], "+", 
      RowBox[{"bd1", " ", "bpuu1"}]}]}], ";"}], "\[IndentingNewLine]", "\n", 
   RowBox[{
    RowBox[{"MRD1", "=", 
     RowBox[{"ConstantArray", "[", 
      RowBox[{"0", ",", 
       RowBox[{"{", 
        RowBox[{"Num", ",", "dim", ",", "dim"}], "}"}]}], "]"}]}], ";"}], 
   "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MRD1", "[", 
      RowBox[{"[", 
       RowBox[{"1", ",", "1", ",", "1"}], "]"}], "]"}], "=", "bpuu1"}], ";", 
    RowBox[{
     RowBox[{"MRD1", "[", 
      RowBox[{"[", 
       RowBox[{"2", ",", "1", ",", "1"}], "]"}], "]"}], "=", 
     RowBox[{
      RowBox[{"-", "I"}], " ", "bpuu1"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MRD1", "[", 
      RowBox[{"[", 
       RowBox[{"3", ",", "1", ",", "1"}], "]"}], "]"}], "=", "be1"}], ";", 
    RowBox[{
     RowBox[{"MRD1", "[", 
      RowBox[{"[", 
       RowBox[{"4", ",", "1", ",", "1"}], "]"}], "]"}], "=", 
     RowBox[{"I", " ", "be1"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MRD1", "[", 
      RowBox[{"[", 
       RowBox[{"9", ",", "1", ",", "1"}], "]"}], "]"}], "=", "bd1"}], ";", 
    RowBox[{
     RowBox[{"MRD1", "[", 
      RowBox[{"[", 
       RowBox[{"10", ",", "1", ",", "1"}], "]"}], "]"}], "=", 
     RowBox[{
      RowBox[{"-", "I"}], " ", "bd1"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MRD1", "[", 
      RowBox[{"[", 
       RowBox[{"11", ",", "1", ",", "1"}], "]"}], "]"}], "=", "bpdd1"}], ";", 
    
    RowBox[{
     RowBox[{"MRD1", "[", 
      RowBox[{"[", 
       RowBox[{"12", ",", "1", ",", "1"}], "]"}], "]"}], "=", 
     RowBox[{"I", " ", "bpdd1"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MRD1", "[", 
      RowBox[{"[", 
       RowBox[{"5", ",", "2", ",", "1"}], "]"}], "]"}], "=", "be1"}], ";", 
    RowBox[{
     RowBox[{"MRD1", "[", 
      RowBox[{"[", 
       RowBox[{"6", ",", "2", ",", "1"}], "]"}], "]"}], "=", 
     RowBox[{"I", " ", "be1"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MRD1", "[", 
      RowBox[{"[", 
       RowBox[{"7", ",", "2", ",", "1"}], "]"}], "]"}], "=", 
     RowBox[{"-", "bd1"}]}], ";", 
    RowBox[{
     RowBox[{"MRD1", "[", 
      RowBox[{"[", 
       RowBox[{"8", ",", "2", ",", "1"}], "]"}], "]"}], "=", 
     RowBox[{"I", " ", "bd1"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MRD1", "[", 
      RowBox[{"[", 
       RowBox[{"5", ",", "1", ",", "2"}], "]"}], "]"}], "=", 
     RowBox[{"-", "bd1"}]}], ";", 
    RowBox[{
     RowBox[{"MRD1", "[", 
      RowBox[{"[", 
       RowBox[{"6", ",", "1", ",", "2"}], "]"}], "]"}], "=", 
     RowBox[{"I", " ", "bd1"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MRD1", "[", 
      RowBox[{"[", 
       RowBox[{"7", ",", "1", ",", "2"}], "]"}], "]"}], "=", "be1"}], ";", 
    RowBox[{
     RowBox[{"MRD1", "[", 
      RowBox[{"[", 
       RowBox[{"8", ",", "1", ",", "2"}], "]"}], "]"}], "=", 
     RowBox[{"I", " ", "be1"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MRD1", "[", 
      RowBox[{"[", 
       RowBox[{"1", ",", "2", ",", "2"}], "]"}], "]"}], "=", "bpdd1"}], ";", 
    RowBox[{
     RowBox[{"MRD1", "[", 
      RowBox[{"[", 
       RowBox[{"2", ",", "2", ",", "2"}], "]"}], "]"}], "=", 
     RowBox[{
      RowBox[{"-", "I"}], " ", "bpdd1"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MRD1", "[", 
      RowBox[{"[", 
       RowBox[{"3", ",", "2", ",", "2"}], "]"}], "]"}], "=", "bd1"}], ";", 
    RowBox[{
     RowBox[{"MRD1", "[", 
      RowBox[{"[", 
       RowBox[{"4", ",", "2", ",", "2"}], "]"}], "]"}], "=", 
     RowBox[{
      RowBox[{"-", "I"}], " ", "bd1"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MRD1", "[", 
      RowBox[{"[", 
       RowBox[{"9", ",", "2", ",", "2"}], "]"}], "]"}], "=", "be1"}], ";", 
    RowBox[{
     RowBox[{"MRD1", "[", 
      RowBox[{"[", 
       RowBox[{"10", ",", "2", ",", "2"}], "]"}], "]"}], "=", 
     RowBox[{"I", " ", "be1"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MRD1", "[", 
      RowBox[{"[", 
       RowBox[{"11", ",", "2", ",", "2"}], "]"}], "]"}], "=", "bpuu1"}], ";", 
    
    RowBox[{
     RowBox[{"MRD1", "[", 
      RowBox[{"[", 
       RowBox[{"12", ",", "2", ",", "2"}], "]"}], "]"}], "=", 
     RowBox[{"I", " ", "bpuu1"}]}], ";"}], "\[IndentingNewLine]", "\n", 
   RowBox[{
    RowBox[{"MRD2", "=", 
     RowBox[{"ConstantArray", "[", 
      RowBox[{"0", ",", 
       RowBox[{"{", 
        RowBox[{"Num", ",", "Num", ",", "dim", ",", "dim"}], "}"}]}], "]"}]}],
     ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MRD2", "[", 
      RowBox[{"[", 
       RowBox[{"1", ",", "3", ",", "1", ",", "1"}], "]"}], "]"}], "=", "1."}],
     ";", 
    RowBox[{
     RowBox[{"MRD2", "[", 
      RowBox[{"[", 
       RowBox[{"1", ",", "4", ",", "1", ",", "1"}], "]"}], "]"}], "=", "I"}], 
    ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MRD2", "[", 
      RowBox[{"[", 
       RowBox[{"2", ",", "3", ",", "1", ",", "1"}], "]"}], "]"}], "=", 
     RowBox[{"-", "I"}]}], ";", 
    RowBox[{
     RowBox[{"MRD2", "[", 
      RowBox[{"[", 
       RowBox[{"2", ",", "4", ",", "1", ",", "1"}], "]"}], "]"}], "=", "1."}],
     ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MRD2", "[", 
      RowBox[{"[", 
       RowBox[{"9", ",", "11", ",", "1", ",", "1"}], "]"}], "]"}], "=", 
     "1."}], ";", 
    RowBox[{
     RowBox[{"MRD2", "[", 
      RowBox[{"[", 
       RowBox[{"9", ",", "12", ",", "1", ",", "1"}], "]"}], "]"}], "=", "I"}],
     ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MRD2", "[", 
      RowBox[{"[", 
       RowBox[{"10", ",", "11", ",", "1", ",", "1"}], "]"}], "]"}], "=", 
     RowBox[{"-", "I"}]}], ";", 
    RowBox[{
     RowBox[{"MRD2", "[", 
      RowBox[{"[", 
       RowBox[{"10", ",", "12", ",", "1", ",", "1"}], "]"}], "]"}], "=", 
     "1."}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MRD2", "[", 
      RowBox[{"[", 
       RowBox[{"1", ",", "5", ",", "2", ",", "1"}], "]"}], "]"}], "=", "1."}],
     ";", 
    RowBox[{
     RowBox[{"MRD2", "[", 
      RowBox[{"[", 
       RowBox[{"1", ",", "6", ",", "2", ",", "1"}], "]"}], "]"}], "=", "I"}], 
    ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MRD2", "[", 
      RowBox[{"[", 
       RowBox[{"2", ",", "5", ",", "2", ",", "1"}], "]"}], "]"}], "=", 
     RowBox[{"-", "I"}]}], ";", 
    RowBox[{
     RowBox[{"MRD2", "[", 
      RowBox[{"[", 
       RowBox[{"2", ",", "6", ",", "2", ",", "1"}], "]"}], "]"}], "=", "1."}],
     ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MRD2", "[", 
      RowBox[{"[", 
       RowBox[{"7", ",", "11", ",", "2", ",", "1"}], "]"}], "]"}], "=", 
     RowBox[{"-", "1."}]}], ";", 
    RowBox[{
     RowBox[{"MRD2", "[", 
      RowBox[{"[", 
       RowBox[{"7", ",", "12", ",", "2", ",", "1"}], "]"}], "]"}], "=", 
     RowBox[{"-", "I"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MRD2", "[", 
      RowBox[{"[", 
       RowBox[{"8", ",", "11", ",", "2", ",", "1"}], "]"}], "]"}], "=", "I"}],
     ";", 
    RowBox[{
     RowBox[{"MRD2", "[", 
      RowBox[{"[", 
       RowBox[{"8", ",", "12", ",", "2", ",", "1"}], "]"}], "]"}], "=", 
     RowBox[{"-", "1."}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MRD2", "[", 
      RowBox[{"[", 
       RowBox[{"1", ",", "7", ",", "1", ",", "2"}], "]"}], "]"}], "=", "1."}],
     ";", 
    RowBox[{
     RowBox[{"MRD2", "[", 
      RowBox[{"[", 
       RowBox[{"1", ",", "8", ",", "1", ",", "2"}], "]"}], "]"}], "=", "I"}], 
    ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MRD2", "[", 
      RowBox[{"[", 
       RowBox[{"2", ",", "7", ",", "1", ",", "2"}], "]"}], "]"}], "=", 
     RowBox[{"-", "I"}]}], ";", 
    RowBox[{
     RowBox[{"MRD2", "[", 
      RowBox[{"[", 
       RowBox[{"2", ",", "8", ",", "1", ",", "2"}], "]"}], "]"}], "=", "1."}],
     ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MRD2", "[", 
      RowBox[{"[", 
       RowBox[{"5", ",", "11", ",", "1", ",", "2"}], "]"}], "]"}], "=", 
     RowBox[{"-", "1."}]}], ";", 
    RowBox[{
     RowBox[{"MRD2", "[", 
      RowBox[{"[", 
       RowBox[{"5", ",", "12", ",", "1", ",", "2"}], "]"}], "]"}], "=", 
     RowBox[{"-", "I"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MRD2", "[", 
      RowBox[{"[", 
       RowBox[{"6", ",", "11", ",", "1", ",", "2"}], "]"}], "]"}], "=", "I"}],
     ";", 
    RowBox[{
     RowBox[{"MRD2", "[", 
      RowBox[{"[", 
       RowBox[{"6", ",", "12", ",", "1", ",", "2"}], "]"}], "]"}], "=", 
     RowBox[{"-", "1."}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MRD2", "[", 
      RowBox[{"[", 
       RowBox[{"1", ",", "9", ",", "2", ",", "2"}], "]"}], "]"}], "=", "1."}],
     ";", 
    RowBox[{
     RowBox[{"MRD2", "[", 
      RowBox[{"[", 
       RowBox[{"1", ",", "10", ",", "2", ",", "2"}], "]"}], "]"}], "=", "I"}],
     ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MRD2", "[", 
      RowBox[{"[", 
       RowBox[{"2", ",", "9", ",", "2", ",", "2"}], "]"}], "]"}], "=", 
     RowBox[{"-", "I"}]}], ";", 
    RowBox[{
     RowBox[{"MRD2", "[", 
      RowBox[{"[", 
       RowBox[{"2", ",", "10", ",", "2", ",", "2"}], "]"}], "]"}], "=", 
     "1."}], ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MRD2", "[", 
      RowBox[{"[", 
       RowBox[{"3", ",", "11", ",", "2", ",", "2"}], "]"}], "]"}], "=", 
     "1."}], ";", 
    RowBox[{
     RowBox[{"MRD2", "[", 
      RowBox[{"[", 
       RowBox[{"3", ",", "12", ",", "2", ",", "2"}], "]"}], "]"}], "=", "I"}],
     ";"}], "\n", 
   RowBox[{
    RowBox[{
     RowBox[{"MRD2", "[", 
      RowBox[{"[", 
       RowBox[{"4", ",", "11", ",", "2", ",", "2"}], "]"}], "]"}], "=", 
     RowBox[{"-", "I"}]}], ";", 
    RowBox[{
     RowBox[{"MRD2", "[", 
      RowBox[{"[", 
       RowBox[{"4", ",", "12", ",", "2", ",", "2"}], "]"}], "]"}], "=", 
     "1."}], ";"}], "\[IndentingNewLine]", "\n", 
   RowBox[{"(*", " ", 
    RowBox[{
    "===", "===", "===", "===", "===", "===", "===", "===", "===", "===", "===",
      "===", "===", "===", "===", "===", "===", "===", "===", "==="}], "*)"}],
    "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{"RD", " ", "matrix", " ", "and", " ", "its", " ", "variations"}], 
    "*)"}], "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
    "===", "===", "===", "===", "===", "===", "===", "===", "===", "===", "===",
      "===", "===", "===", "===", "===", "===", "===", "===", "==="}], "*)"}],
    "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"RD0", "=", 
     RowBox[{"MRD0", ".", "RR0", ".", "LR0"}]}], ";"}], "\[IndentingNewLine]",
    "\n", 
   RowBox[{
    RowBox[{"RD1", "=", 
     RowBox[{"ConstantArray", "[", 
      RowBox[{"0", ",", 
       RowBox[{"{", 
        RowBox[{"Num", ",", "dim", ",", "dim"}], "}"}]}], "]"}]}], ";"}], 
   "\n", 
   RowBox[{
    RowBox[{"Do", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"RD1", "[", 
        RowBox[{"[", 
         RowBox[{"i", ",", "\[Alpha]", ",", "a"}], "]"}], "]"}], "=", 
       RowBox[{"Sum", "[", 
        RowBox[{
         RowBox[{
          RowBox[{
           RowBox[{"RR1", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", "c", ",", "b"}], "]"}], "]"}], " ", 
           RowBox[{"MRD0", "[", 
            RowBox[{"[", 
             RowBox[{"b", ",", "\[Alpha]"}], "]"}], "]"}], " ", 
           RowBox[{"LR0", "[", 
            RowBox[{"[", 
             RowBox[{"a", ",", "c"}], "]"}], "]"}]}], "+", 
          RowBox[{
           RowBox[{"RR0", "[", 
            RowBox[{"[", 
             RowBox[{"c", ",", "b"}], "]"}], "]"}], " ", 
           RowBox[{"MRD1", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", "b", ",", "\[Alpha]"}], "]"}], "]"}], " ", 
           RowBox[{"LR0", "[", 
            RowBox[{"[", 
             RowBox[{"a", ",", "c"}], "]"}], "]"}]}], "+", 
          RowBox[{
           RowBox[{"RR0", "[", 
            RowBox[{"[", 
             RowBox[{"c", ",", "b"}], "]"}], "]"}], " ", 
           RowBox[{"MRD0", "[", 
            RowBox[{"[", 
             RowBox[{"b", ",", "\[Alpha]"}], "]"}], "]"}], " ", 
           RowBox[{"LR1", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", "a", ",", "c"}], "]"}], "]"}]}]}], ",", 
         RowBox[{"{", 
          RowBox[{"b", ",", "1", ",", "dim"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"c", ",", "1", ",", "dim"}], "}"}]}], "]"}]}], ",", 
      RowBox[{"{", 
       RowBox[{"i", ",", "1", ",", "Num"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"\[Alpha]", ",", "1", ",", "dim"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"a", ",", "1", ",", "dim"}], "}"}]}], "]"}], ";"}], 
   "\[IndentingNewLine]", "\n", 
   RowBox[{
    RowBox[{"RD2", "=", 
     RowBox[{"ConstantArray", "[", 
      RowBox[{"0", ",", 
       RowBox[{"{", 
        RowBox[{"Num", ",", "Num", ",", "dim", ",", "dim"}], "}"}]}], "]"}]}],
     ";"}], "\n", 
   RowBox[{
    RowBox[{"Do", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"RD2", "[", 
        RowBox[{"[", 
         RowBox[{"i", ",", "j", ",", "\[Alpha]", ",", "a"}], "]"}], "]"}], 
       "=", 
       RowBox[{"2", " ", 
        RowBox[{"Sum", "[", 
         RowBox[{
          RowBox[{
           RowBox[{
            RowBox[{"RR1", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", "c", ",", "b"}], "]"}], "]"}], " ", 
            RowBox[{"MRD1", "[", 
             RowBox[{"[", 
              RowBox[{"j", ",", "b", ",", "\[Alpha]"}], "]"}], "]"}], " ", 
            RowBox[{"LR0", "[", 
             RowBox[{"[", 
              RowBox[{"a", ",", "c"}], "]"}], "]"}]}], "+", 
           RowBox[{
            RowBox[{"RR1", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", "c", ",", "b"}], "]"}], "]"}], " ", 
            RowBox[{"MRD0", "[", 
             RowBox[{"[", 
              RowBox[{"b", ",", "\[Alpha]"}], "]"}], "]"}], " ", 
            RowBox[{"LR1", "[", 
             RowBox[{"[", 
              RowBox[{"j", ",", "a", ",", "c"}], "]"}], "]"}]}], "+", 
           RowBox[{
            RowBox[{"RR0", "[", 
             RowBox[{"[", 
              RowBox[{"c", ",", "b"}], "]"}], "]"}], " ", 
            RowBox[{"MRD1", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", "b", ",", "\[Alpha]"}], "]"}], "]"}], " ", 
            RowBox[{"LR1", "[", 
             RowBox[{"[", 
              RowBox[{"j", ",", "a", ",", "c"}], "]"}], "]"}]}], "+", 
           RowBox[{
            RowBox[{"RR2", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", "j", ",", "c", ",", "b"}], "]"}], "]"}], " ", 
            
            RowBox[{"MRD0", "[", 
             RowBox[{"[", 
              RowBox[{"b", ",", "\[Alpha]"}], "]"}], "]"}], " ", 
            RowBox[{"LR0", "[", 
             RowBox[{"[", 
              RowBox[{"a", ",", "c"}], "]"}], "]"}]}], "+", 
           RowBox[{
            RowBox[{"RR0", "[", 
             RowBox[{"[", 
              RowBox[{"c", ",", "b"}], "]"}], "]"}], " ", 
            RowBox[{"MRD2", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", "j", ",", "b", ",", "\[Alpha]"}], "]"}], 
             "]"}], " ", 
            RowBox[{"LR0", "[", 
             RowBox[{"[", 
              RowBox[{"a", ",", "c"}], "]"}], "]"}]}], "+", 
           RowBox[{
            RowBox[{"RR0", "[", 
             RowBox[{"[", 
              RowBox[{"c", ",", "b"}], "]"}], "]"}], " ", 
            RowBox[{"MRD0", "[", 
             RowBox[{"[", 
              RowBox[{"b", ",", "\[Alpha]"}], "]"}], "]"}], " ", 
            RowBox[{"LR2", "[", 
             RowBox[{"[", 
              RowBox[{"i", ",", "j", ",", "a", ",", "c"}], "]"}], "]"}]}]}], 
          ",", 
          RowBox[{"{", 
           RowBox[{"b", ",", "1", ",", "dim"}], "}"}], ",", 
          RowBox[{"{", 
           RowBox[{"c", ",", "1", ",", "dim"}], "}"}]}], "]"}]}]}], ",", 
      RowBox[{"{", 
       RowBox[{"i", ",", "1", ",", "Num"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"j", ",", "1", ",", "Num"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"\[Alpha]", ",", "1", ",", "dim"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"a", ",", "1", ",", "dim"}], "}"}]}], "]"}], ";"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
    "===", "===", "===", "===", "===", "===", "===", "===", "===", "===", "===",
      "===", "===", "===", "===", "===", "===", "===", "===", "==="}], "*)"}],
    "\n", 
   RowBox[{"(*", 
    RowBox[{"k", "-", 
     RowBox[{"grid", " ", "and", " ", "dispersion"}]}], "*)"}], 
   "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
    "===", "===", "===", "===", "===", "===", "===", "===", "===", "===", "===",
      "===", "===", "===", "===", "===", "===", "===", "===", "==="}], "*)"}],
    "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"get2Dklist", "[", "n_", "]"}], ":=", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"kx", ",", "ky", ",", 
        RowBox[{"kList", "=", 
         RowBox[{"{", "}"}]}]}], "}"}], ",", 
      RowBox[{
       RowBox[{"kx", "=", 
        RowBox[{"Range", "[", 
         RowBox[{
          RowBox[{"-", "Pi"}], ",", 
          RowBox[{"Pi", "-", 
           RowBox[{"2", " ", 
            RowBox[{"Pi", "/", "n"}]}]}], ",", 
          RowBox[{"2", " ", 
           RowBox[{"Pi", "/", "n"}]}]}], "]"}]}], ";", "\[IndentingNewLine]", 
       
       RowBox[{"ky", "=", 
        RowBox[{"Range", "[", 
         RowBox[{
          RowBox[{"-", "Pi"}], ",", 
          RowBox[{"Pi", "-", 
           RowBox[{"2", " ", 
            RowBox[{"Pi", "/", "n"}]}]}], ",", 
          RowBox[{"2", " ", 
           RowBox[{"Pi", "/", "n"}]}]}], "]"}]}], ";", "\[IndentingNewLine]", 
       
       RowBox[{"Do", "[", 
        RowBox[{
         RowBox[{"AppendTo", "[", 
          RowBox[{"kList", ",", 
           RowBox[{"{", 
            RowBox[{"i", ",", "j"}], "}"}]}], "]"}], ",", 
         RowBox[{"{", 
          RowBox[{"i", ",", "kx"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"j", ",", "ky"}], "}"}]}], "]"}], ";", 
       "\[IndentingNewLine]", "kList"}]}], "]"}]}], "\[IndentingNewLine]", 
   "\n", 
   RowBox[{
    RowBox[{"e", "[", "k_", "]"}], ":=", 
    RowBox[{
     RowBox[{
      RowBox[{"-", "2"}], " ", 
      RowBox[{"Cos", "[", 
       RowBox[{"k", "[", 
        RowBox[{"[", "1", "]"}], "]"}], "]"}]}], "-", 
     RowBox[{"2", " ", 
      RowBox[{"Cos", "[", 
       RowBox[{"k", "[", 
        RowBox[{"[", "2", "]"}], "]"}], "]"}]}], "-", 
     RowBox[{"4", " ", 
      RowBox[{"(", 
       RowBox[{"-", "0."}], ")"}], " ", 
      RowBox[{"Cos", "[", 
       RowBox[{"k", "[", 
        RowBox[{"[", "1", "]"}], "]"}], "]"}], " ", 
      RowBox[{"Cos", "[", 
       RowBox[{"k", "[", 
        RowBox[{"[", "2", "]"}], "]"}], "]"}]}]}]}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"En", "[", 
     RowBox[{"ek_", ",", "rr_", ",", "Lam_"}], "]"}], ":=", 
    RowBox[{
     RowBox[{"ek", " ", 
      RowBox[{"rr", "^", "2"}]}], "+", "Lam"}]}], "\n", 
   RowBox[{
    RowBox[{"nF", "[", "En_", "]"}], ":=", 
    RowBox[{"1.", "/", 
     RowBox[{"(", 
      RowBox[{
       RowBox[{"Exp", "[", 
        RowBox[{"En", "*", "100"}], "]"}], "+", "1"}], ")"}]}]}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{
     RowBox[{
      RowBox[{"BZ", " ", "k"}], "-", 
      RowBox[{"grid", ":", 
       RowBox[{"100", "x100"}]}]}], "=", 
     RowBox[{"10000", " ", "points"}]}], "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"klist", "=", 
     RowBox[{"get2Dklist", "[", "100", "]"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{"Nk", "=", 
     RowBox[{"Length", "[", "klist", "]"}]}], ";"}], "\[IndentingNewLine]", 
   "\n", 
   RowBox[{"(*", " ", 
    RowBox[{
    "===", "===", "===", "===", "===", "===", "===", "===", "===", "===", "===",
      "===", "===", "===", "===", "===", "===", "===", "===", "==="}], "*)"}],
    "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{"BuildM", ":", 
     RowBox[{"assembles", " ", "the", " ", "12", "x12", " ", "matrix"}]}], 
    "*)"}], "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
    "===", "===", "===", "===", "===", "===", "===", "===", "===", "===", "===",
      "===", "===", "===", "===", "===", "===", "===", "===", "==="}], "*)"}],
    "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"BuildM", "[", 
     RowBox[{
     "xi1_", ",", "xi2_", ",", "xi3_", ",", "gam0_", ",", "gam1_", ",", 
      "gam2_", ",", "rho1_", ",", "rho2_", ",", "rho3_", ",", "rdIn_"}], 
     "]"}], ":=", 
    RowBox[{"Module", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"MV1", ",", "MV2", ",", "MB", ",", "M", ",", "Mtot", ",", 
        RowBox[{"rd", "=", "rdIn"}]}], "}"}], ",", "\[IndentingNewLine]", 
      RowBox[{"(*", 
       RowBox[{"--", 
        RowBox[{"-", 
         RowBox[{"MV1", ":", 
          RowBox[{
           RowBox[{"fermionic", " ", 
            RowBox[{"V1", "--"}]}], "-"}]}]}]}], "*)"}], 
      "\[IndentingNewLine]", 
      RowBox[{
       RowBox[{"MV1", "=", 
        RowBox[{"ConstantArray", "[", 
         RowBox[{"0", ",", 
          RowBox[{"{", 
           RowBox[{"Num", ",", "Num"}], "}"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"Do", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"MV1", "[", 
           RowBox[{"[", 
            RowBox[{"i", ",", "j"}], "]"}], "]"}], "=", 
          RowBox[{
           RowBox[{"1", "/", "2"}], " ", 
           RowBox[{"Sum", "[", 
            RowBox[{
             RowBox[{
              RowBox[{
               RowBox[{"R1", "[", 
                RowBox[{"[", 
                 RowBox[{"i", ",", "a", ",", "\[Alpha]"}], "]"}], "]"}], " ", 
               
               RowBox[{"R1", "[", 
                RowBox[{"[", 
                 RowBox[{"j", ",", "a", ",", "\[Alpha]"}], "]"}], "]"}], " ", 
               "rho2", " ", "rd", " ", "rd"}], "+", 
              RowBox[{
               RowBox[{"R1", "[", 
                RowBox[{"[", 
                 RowBox[{"i", ",", "a", ",", "\[Alpha]"}], "]"}], "]"}], " ", 
               
               RowBox[{"RD1", "[", 
                RowBox[{"[", 
                 RowBox[{"j", ",", "\[Alpha]", ",", "a"}], "]"}], "]"}], " ", 
               "rho1", " ", "rd", " ", "r"}], "+", 
              RowBox[{
               RowBox[{"RD1", "[", 
                RowBox[{"[", 
                 RowBox[{"i", ",", "\[Alpha]", ",", "a"}], "]"}], "]"}], " ", 
               
               RowBox[{"R1", "[", 
                RowBox[{"[", 
                 RowBox[{"j", ",", "a", ",", "\[Alpha]"}], "]"}], "]"}], " ", 
               "rho3", " ", "r", " ", "rd"}], "+", 
              RowBox[{"r", " ", "r", " ", "rho2", " ", 
               RowBox[{"RD1", "[", 
                RowBox[{"[", 
                 RowBox[{"i", ",", "\[Alpha]", ",", "a"}], "]"}], "]"}], " ", 
               
               RowBox[{"RD1", "[", 
                RowBox[{"[", 
                 RowBox[{"j", ",", "\[Alpha]", ",", "a"}], "]"}], "]"}]}]}], 
             ",", 
             RowBox[{"{", 
              RowBox[{"a", ",", "1", ",", "dim"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"\[Alpha]", ",", "1", ",", "dim"}], "}"}]}], "]"}]}]}], 
         ",", 
         RowBox[{"{", 
          RowBox[{"i", ",", "1", ",", "Num"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"j", ",", "1", ",", "Num"}], "}"}]}], "]"}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"(*", 
        RowBox[{"--", 
         RowBox[{"-", 
          RowBox[{"MV2", ":", 
           RowBox[{
            RowBox[{"fermionic", " ", 
             RowBox[{"V2", "--"}]}], "-"}]}]}]}], "*)"}], 
       "\[IndentingNewLine]", 
       RowBox[{"MV2", "=", 
        RowBox[{"ConstantArray", "[", 
         RowBox[{"0", ",", 
          RowBox[{"{", 
           RowBox[{"Num", ",", "Num"}], "}"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"Do", "[", 
        RowBox[{
         RowBox[{
          RowBox[{"MV2", "[", 
           RowBox[{"[", 
            RowBox[{"i", ",", "j"}], "]"}], "]"}], "=", 
          RowBox[{
           RowBox[{"1", "/", "2"}], " ", 
           RowBox[{"(", 
            RowBox[{
             RowBox[{"xi1", " ", "rd", " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"R2", "[", 
                 RowBox[{"[", 
                  RowBox[{"i", ",", "j", ",", "1", ",", "1"}], "]"}], "]"}], 
                "+", 
                RowBox[{"R2", "[", 
                 RowBox[{"[", 
                  RowBox[{"i", ",", "j", ",", "2", ",", "2"}], "]"}], "]"}]}],
                ")"}]}], "+", 
             RowBox[{"xi1", " ", "r", " ", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"RD2", "[", 
                 RowBox[{"[", 
                  RowBox[{"i", ",", "j", ",", "1", ",", "1"}], "]"}], "]"}], 
                "+", 
                RowBox[{"RD2", "[", 
                 RowBox[{"[", 
                  RowBox[{"i", ",", "j", ",", "2", ",", "2"}], "]"}], "]"}]}],
                ")"}]}], "+", 
             RowBox[{"xi2", " ", 
              RowBox[{"Sum", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"R1", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", "a", ",", "\[Alpha]"}], "]"}], "]"}], 
                 " ", 
                 RowBox[{"RD1", "[", 
                  RowBox[{"[", 
                   RowBox[{"j", ",", "\[Alpha]", ",", "a"}], "]"}], "]"}]}], 
                ",", 
                RowBox[{"{", 
                 RowBox[{"a", ",", "1", ",", "dim"}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"\[Alpha]", ",", "1", ",", "dim"}], "}"}]}], "]"}]}],
              "+", 
             RowBox[{"xi3", " ", 
              RowBox[{"Sum", "[", 
               RowBox[{
                RowBox[{
                 RowBox[{"R1", "[", 
                  RowBox[{"[", 
                   RowBox[{"j", ",", "a", ",", "\[Alpha]"}], "]"}], "]"}], 
                 " ", 
                 RowBox[{"RD1", "[", 
                  RowBox[{"[", 
                   RowBox[{"i", ",", "\[Alpha]", ",", "a"}], "]"}], "]"}]}], 
                ",", 
                RowBox[{"{", 
                 RowBox[{"a", ",", "1", ",", "dim"}], "}"}], ",", 
                RowBox[{"{", 
                 RowBox[{"\[Alpha]", ",", "1", ",", "dim"}], "}"}]}], 
               "]"}]}]}], ")"}]}]}], ",", 
         RowBox[{"{", 
          RowBox[{"i", ",", "1", ",", "Num"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"j", ",", "1", ",", "Num"}], "}"}]}], "]"}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"(*", 
        RowBox[{"--", 
         RowBox[{"-", 
          RowBox[{"MB", ":", 
           RowBox[{
            RowBox[{"bosonic", "--"}], "-"}]}]}]}], "*)"}], 
       "\[IndentingNewLine]", 
       RowBox[{"MB", "=", 
        RowBox[{"ConstantArray", "[", 
         RowBox[{"0", ",", 
          RowBox[{"{", 
           RowBox[{"Num", ",", "Num"}], "}"}]}], "]"}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"MB", "[", 
         RowBox[{"[", 
          RowBox[{"1", ",", "2"}], "]"}], "]"}], "=", "nu"}], ";", 
       RowBox[{
        RowBox[{"MB", "[", 
         RowBox[{"[", 
          RowBox[{"2", ",", "1"}], "]"}], "]"}], "=", 
        RowBox[{"-", "nu"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"MB", "[", 
         RowBox[{"[", 
          RowBox[{"3", ",", "4"}], "]"}], "]"}], "=", "nu"}], ";", 
       RowBox[{
        RowBox[{"MB", "[", 
         RowBox[{"[", 
          RowBox[{"4", ",", "3"}], "]"}], "]"}], "=", 
        RowBox[{"-", "nu"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"MB", "[", 
         RowBox[{"[", 
          RowBox[{"5", ",", "6"}], "]"}], "]"}], "=", "nu"}], ";", 
       RowBox[{
        RowBox[{"MB", "[", 
         RowBox[{"[", 
          RowBox[{"6", ",", "5"}], "]"}], "]"}], "=", 
        RowBox[{"-", "nu"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"MB", "[", 
         RowBox[{"[", 
          RowBox[{"7", ",", "8"}], "]"}], "]"}], "=", "nu"}], ";", 
       RowBox[{
        RowBox[{"MB", "[", 
         RowBox[{"[", 
          RowBox[{"8", ",", "7"}], "]"}], "]"}], "=", 
        RowBox[{"-", "nu"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"MB", "[", 
         RowBox[{"[", 
          RowBox[{"9", ",", "10"}], "]"}], "]"}], "=", "nu"}], ";", 
       RowBox[{
        RowBox[{"MB", "[", 
         RowBox[{"[", 
          RowBox[{"10", ",", "9"}], "]"}], "]"}], "=", 
        RowBox[{"-", "nu"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"MB", "[", 
         RowBox[{"[", 
          RowBox[{"11", ",", "12"}], "]"}], "]"}], "=", "nu"}], ";", 
       RowBox[{
        RowBox[{"MB", "[", 
         RowBox[{"[", 
          RowBox[{"12", ",", "11"}], "]"}], "]"}], "=", 
        RowBox[{"-", "nu"}]}], ";", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"MB", "[", 
         RowBox[{"[", 
          RowBox[{"1", ",", "1"}], "]"}], "]"}], "=", 
        RowBox[{
         RowBox[{"MB", "[", 
          RowBox[{"[", 
           RowBox[{"2", ",", "2"}], "]"}], "]"}], "=", 
         RowBox[{"-", "blam"}]}]}], ";", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"MB", "[", 
         RowBox[{"[", 
          RowBox[{"11", ",", "11"}], "]"}], "]"}], "=", 
        RowBox[{
         RowBox[{"MB", "[", 
          RowBox[{"[", 
           RowBox[{"12", ",", "12"}], "]"}], "]"}], "=", 
         RowBox[{
          RowBox[{"-", "bLamuu"}], "-", "bLamdd", "+", "U", "-", "blam", "-", 
          
          RowBox[{"2", "mu"}]}]}]}], ";", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"MB", "[", 
         RowBox[{"[", 
          RowBox[{"3", ",", "3"}], "]"}], "]"}], "=", 
        RowBox[{
         RowBox[{"MB", "[", 
          RowBox[{"[", 
           RowBox[{"4", ",", "4"}], "]"}], "]"}], "=", 
         RowBox[{
          RowBox[{"-", "bLamuu"}], "-", "blam", "-", "mu"}]}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"MB", "[", 
         RowBox[{"[", 
          RowBox[{"5", ",", "5"}], "]"}], "]"}], "=", 
        RowBox[{
         RowBox[{"MB", "[", 
          RowBox[{"[", 
           RowBox[{"6", ",", "6"}], "]"}], "]"}], "=", 
         RowBox[{
          RowBox[{"-", "bLamdd"}], "-", "blam", "-", "mu"}]}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"MB", "[", 
         RowBox[{"[", 
          RowBox[{"7", ",", "7"}], "]"}], "]"}], "=", 
        RowBox[{
         RowBox[{"MB", "[", 
          RowBox[{"[", 
           RowBox[{"8", ",", "8"}], "]"}], "]"}], "=", 
         RowBox[{
          RowBox[{"-", "bLamuu"}], "-", "blam", "-", "mu"}]}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"MB", "[", 
         RowBox[{"[", 
          RowBox[{"9", ",", "9"}], "]"}], "]"}], "=", 
        RowBox[{
         RowBox[{"MB", "[", 
          RowBox[{"[", 
           RowBox[{"10", ",", "10"}], "]"}], "]"}], "=", 
         RowBox[{
          RowBox[{"-", "bLamdd"}], "-", "blam", "-", "mu"}]}]}], ";", 
       "\[IndentingNewLine]", 
       RowBox[{"(*", 
        RowBox[{
         RowBox[{
          RowBox[{"--", 
           RowBox[{"-", "Assemble"}]}], " ", "12", "x12", " ", 
          RowBox[{"M", "--"}]}], "-"}], "*)"}], "\[IndentingNewLine]", 
       RowBox[{"M", "=", 
        RowBox[{"MV1", "+", "MV2", "+", "MB"}]}], ";", "\[IndentingNewLine]", 
       "M"}]}], "\[IndentingNewLine]", "]"}]}], 
   "\[IndentingNewLine]"}]}]], "Input",
 CellChangeTimes->{{3.986909098035471*^9, 3.986909098039085*^9}, {
   3.9869091507234507`*^9, 3.986909151326956*^9}, {3.986909218426643*^9, 
   3.98690921894372*^9}, {3.986909341008479*^9, 3.986909341533452*^9}, {
   3.986909574701982*^9, 3.986909575089066*^9}, {3.986909654526115*^9, 
   3.9869096549298677`*^9}, {3.986909825665658*^9, 3.986909858899876*^9}, 
   3.987701093530455*^9, {3.991827694296212*^9, 3.991827735672534*^9}, {
   3.991827981257428*^9, 3.99182800374505*^9}, {3.991828116704224*^9, 
   3.991828133315588*^9}, {3.9921730293660297`*^9, 3.9921730314851522`*^9}, {
   3.992195855352769*^9, 3.992195869664939*^9}, {3.992196202607131*^9, 
   3.9921962300018806`*^9}, {3.9922076638033533`*^9, 
   3.9922077132205563`*^9}, {3.9922077543929577`*^9, 3.99220776279993*^9}, {
   3.992208352361768*^9, 3.9922083644528723`*^9}, {3.992208450831884*^9, 
   3.992208460078495*^9}, {3.9922085182544603`*^9, 3.992208535821368*^9}, {
   3.9922089621216307`*^9, 3.992209002353694*^9}, {3.99220937091096*^9, 
   3.992209383396937*^9}, {3.992209558635112*^9, 3.9922095630489893`*^9}, {
   3.992265566101335*^9, 3.992265570834837*^9}, {3.992265820740912*^9, 
   3.9922658343478403`*^9}, {3.99226622188373*^9, 3.992266249843162*^9}, {
   3.992267072914014*^9, 3.992267099754121*^9}, {3.992267190799347*^9, 
   3.992267205489339*^9}, {3.992267462133683*^9, 3.9922674837444267`*^9}, {
   3.99226755100838*^9, 3.992267556800145*^9}, {3.99236713795016*^9, 
   3.992367167658266*^9}, {3.992367198893441*^9, 3.99236720794785*^9}, 
   3.99236741152363*^9, 3.992367483448791*^9, {3.9923676119797983`*^9, 
   3.992367676594771*^9}, {3.992367732800602*^9, 3.9923677329781027`*^9}, {
   3.992367823604006*^9, 3.992367889080793*^9}, {3.992368147036415*^9, 
   3.992368158377273*^9}, {3.992368650306614*^9, 3.992368675687955*^9}, 
   3.992380924609847*^9, {3.992380995315536*^9, 3.99238101438239*^9}, 
   3.9923810967329807`*^9, {3.992381140233005*^9, 3.992381142233262*^9}, {
   3.992381242776494*^9, 3.992381244771132*^9}, {3.992381518938744*^9, 
   3.992381521255701*^9}, {3.992381603753892*^9, 3.99238160390923*^9}, {
   3.9923819877981033`*^9, 3.992381988299623*^9}, {3.992382117575727*^9, 
   3.99238213105584*^9}, {3.992428397977954*^9, 3.992428419214398*^9}, {
   3.99243270657467*^9, 3.992432707302573*^9}, {3.992433080491997*^9, 
   3.992433097534854*^9}, {3.992433391655921*^9, 3.992433414620927*^9}, {
   3.9924334932145987`*^9, 3.9924335375928917`*^9}, {3.9924336141709967`*^9, 
   3.992433643399414*^9}, {3.992433719837846*^9, 3.992433721049164*^9}, 
   3.9925277089503803`*^9, {3.994096454545022*^9, 3.9940964975154743`*^9}, {
   3.9940968453848124`*^9, 3.994096856319213*^9}, {3.9940968917937*^9, 
   3.9940969478196793`*^9}, {3.994100779003717*^9, 3.9941007804139357`*^9}, {
   3.994256956280163*^9, 3.994257008488559*^9}, {3.994258598895383*^9, 
   3.994258669030469*^9}, {3.994259279010845*^9, 3.99425929058009*^9}, {
   3.994260794013974*^9, 3.994260797543817*^9}, {3.994261838420916*^9, 
   3.994261846483411*^9}, {3.994262116214065*^9, 3.994262117760374*^9}, {
   3.99426236301357*^9, 3.994262366965624*^9}, {3.994262509707322*^9, 
   3.9942625120385017`*^9}, {3.9942627990496807`*^9, 
   3.9942627993498707`*^9}, {3.994262932833819*^9, 3.9942629380531683`*^9}, 
   3.994263085457095*^9, {3.994263167238199*^9, 3.994263188232333*^9}, {
   3.994264150370263*^9, 3.9942641570928583`*^9}, {3.99426465052514*^9, 
   3.994264668791154*^9}, {3.9942649250471497`*^9, 3.9942649291453114`*^9}, {
   3.999557191575431*^9, 3.999557218315135*^9}, {3.9995573598203287`*^9, 
   3.99955741030759*^9}, {3.999557446822543*^9, 3.999557483741557*^9}, {
   3.999557536172914*^9, 3.9995575601741753`*^9}, {3.999557602698765*^9, 
   3.9995576462631598`*^9}, {3.99955781754073*^9, 3.999557848373802*^9}, {
   3.999557883793564*^9, 3.9995579264698763`*^9}, {3.999600006105463*^9, 
   3.9996000253447313`*^9}, {3.999600055468542*^9, 3.999600097114995*^9}, {
   3.999600369261354*^9, 3.999600380002014*^9}},
 CellLabel->
  "In[1162]:=",ExpressionUUID->"ffb2c6c6-10eb-4b7d-bccf-a27c46dba0cd"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"M", "=", 
  RowBox[{"BuildM", "[", 
   RowBox[{
   "\[Xi]1", ",", "\[Xi]2", ",", "\[Xi]3", ",", "\[Gamma]0", ",", "\[Gamma]1",
     ",", "\[Gamma]2", ",", "\[Rho]1", ",", "\[Rho]2", ",", "\[Rho]3", ",", 
    "r"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.99960012120264*^9, 3.999600188596965*^9}},
 CellLabel->
  "In[1296]:=",ExpressionUUID->"f94a7460-64bc-4317-be97-1efc18d6e553"],

Cell[BoxData[
 InterpretationBox[
  TagBox[
   FrameBox[GridBox[{
      {
       ItemBox[
        TagBox[
         RowBox[{"{", 
          RowBox[{
           RowBox[{"{", 
            TemplateBox[{"1"},
             "OutputSizeLimit`Skeleton"], "}"}], ",", 
           TemplateBox[{"10"},
            "OutputSizeLimit`Skeleton"], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{
              RowBox[{
               FractionBox["1", "2"], " ", 
               RowBox[{"(", 
                RowBox[{
                 FractionBox[
                  RowBox[{
                  "4", " ", "\[ImaginaryI]", " ", "e", " ", "p", " ", "r", 
                   " ", "\[Xi]1"}], 
                  RowBox[{
                   SqrtBox[
                    RowBox[{"1", "-", 
                    SuperscriptBox["d", "2"], "-", 
                    SuperscriptBox["p", "2"]}]], " ", 
                   SuperscriptBox[
                    RowBox[{"(", 
                    RowBox[{"1", "-", 
                    SuperscriptBox["e", "2"], "-", 
                    SuperscriptBox["p", "2"]}], ")"}], 
                    RowBox[{"3", "/", "2"}]]}]], "-", 
                 FractionBox[
                  RowBox[{"2", " ", "\[ImaginaryI]", " ", "p", " ", 
                   RowBox[{"(", 
                    TemplateBox[{"1"},
                    "OutputSizeLimit`Skeleton"], ")"}], " ", "\[Xi]2"}], 
                  RowBox[{
                   SqrtBox[
                    RowBox[{"1", "-", 
                    SuperscriptBox["d", "2"], "-", 
                    SuperscriptBox["p", "2"]}]], " ", 
                   SqrtBox[
                    RowBox[{"1", "-", 
                    SuperscriptBox["e", "2"], "-", 
                    SuperscriptBox["p", "2"]}]]}]], "+", 
                 FractionBox[
                  RowBox[{"2", " ", "\[ImaginaryI]", " ", "p", " ", 
                   RowBox[{"(", 
                    RowBox[{
                    FractionBox[
                    RowBox[{"e", " ", 
                    TemplateBox[{"1"},
                    "OutputSizeLimit`Skeleton"]}], 
                    TemplateBox[{"1"},
                    "OutputSizeLimit`Skeleton"]], "+", 
                    FractionBox["p", 
                    TemplateBox[{"1"},
                    "OutputSizeLimit`Skeleton"]]}], ")"}], " ", "\[Xi]3"}], 
                  RowBox[{
                   SqrtBox[
                    RowBox[{"1", "-", 
                    SuperscriptBox["d", "2"], "-", 
                    SuperscriptBox["p", "2"]}]], " ", 
                   SqrtBox[
                    RowBox[{"1", "-", 
                    SuperscriptBox["e", "2"], "-", 
                    SuperscriptBox["p", "2"]}]]}]]}], ")"}]}], "+", 
              RowBox[{
               FractionBox["1", "2"], " ", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"-", 
                  FractionBox[
                   TemplateBox[{"1"},
                    "OutputSizeLimit`Skeleton"], 
                   TemplateBox[{"1"},
                    "OutputSizeLimit`Skeleton"]]}], "+", 
                 TemplateBox[{"1"},
                  "OutputSizeLimit`Skeleton"]}], ")"}]}]}], ",", 
             TemplateBox[{"10"},
              "OutputSizeLimit`Skeleton"], ",", 
             RowBox[{
              TemplateBox[{"8"},
               "OutputSizeLimit`Skeleton"], "+", 
              RowBox[{
               FractionBox["1", "2"], " ", 
               TemplateBox[{"1"},
                "OutputSizeLimit`Skeleton"]}]}]}], "}"}]}], "}"}],
         Short[#, 5]& ],
        BaseStyle->{Deployed -> False},
        StripOnInput->False]},
      {GridBox[{
         {
          PaneBox[
           TagBox[
            TooltipBox[
             StyleBox[
              StyleBox[
               DynamicBox[ToBoxes[
                 FEPrivate`FrontEndResource[
                 "FEStrings", "sizeBriefExplanation"], StandardForm],
                ImageSizeCache->{83., {3., 11.}}],
               StripOnInput->False,
               DynamicUpdating->True,
               LineSpacing->{1, 2},
               LineIndent->0,
               LinebreakAdjustments->{1., 100, 0, 0, 0}], "OSLText",
              StripOnInput->False],
             StyleBox[
              DynamicBox[
               ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeExplanation"], 
                StandardForm]], DynamicUpdating -> True, LineIndent -> 0, 
              LinebreakAdjustments -> {1., 100, 0, 0, 0}, 
              LineSpacing -> {1, 2}, StripOnInput -> False]],
            Annotation[#, 
             Style[
              Dynamic[
               FEPrivate`FrontEndResource["FEStrings", "sizeExplanation"]], 
              DynamicUpdating -> True, LineIndent -> 0, 
              LinebreakAdjustments -> {1., 100, 0, 0, 0}, 
              LineSpacing -> {1, 2}], "Tooltip"]& ],
           Alignment->Center,
           BaselinePosition->Baseline,
           ImageSize->{Automatic, {25, Full}}], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowLess"], 
                StandardForm],
               ImageSizeCache->{72., {1., 11.}}],
              StripOnInput->False,
              DynamicUpdating->True,
              LineSpacing->{1, 2},
              LineIndent->0,
              LinebreakAdjustments->{1., 100, 0, 0, 0}], "OSLControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowLess"], 
                StandardForm]],
              StripOnInput->False,
              DynamicUpdating->True,
              LineSpacing->{1, 2},
              LineIndent->0,
              LinebreakAdjustments->{1., 100, 0, 0, 0}], "OSLControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, {25, Full}}],
           Appearance->None,
           BaselinePosition->Baseline,
           
           ButtonFunction:>OutputSizeLimit`ButtonFunction[
            OutputSizeLimit`Defer, 1296, 18349919253794860511, 5/2],
           Enabled->True,
           Evaluator->Automatic,
           Method->"Queued"], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowMore"], 
                StandardForm],
               ImageSizeCache->{81., {1., 11.}}],
              StripOnInput->False,
              DynamicUpdating->True,
              LineSpacing->{1, 2},
              LineIndent->0,
              LinebreakAdjustments->{1., 100, 0, 0, 0}], "OSLControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowMore"], 
                StandardForm],
               ImageSizeCache->{81., {1., 11.}}],
              StripOnInput->False,
              DynamicUpdating->True,
              LineSpacing->{1, 2},
              LineIndent->0,
              LinebreakAdjustments->{1., 100, 0, 0, 0}], "OSLControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, {25, Full}}],
           Appearance->None,
           BaselinePosition->Baseline,
           ButtonFunction:>OutputSizeLimit`ButtonFunction[
            OutputSizeLimit`Defer, 1296, 18349919253794860511, 5 2],
           Enabled->True,
           Evaluator->Automatic,
           Method->"Queued"], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowAll"], 
                StandardForm],
               ImageSizeCache->{60., {1., 11.}}],
              StripOnInput->False,
              DynamicUpdating->True,
              LineSpacing->{1, 2},
              LineIndent->0,
              LinebreakAdjustments->{1., 100, 0, 0, 0}], "OSLControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeShowAll"], 
                StandardForm]],
              StripOnInput->False,
              DynamicUpdating->True,
              LineSpacing->{1, 2},
              LineIndent->0,
              LinebreakAdjustments->{1., 100, 0, 0, 0}], "OSLControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, {25, Full}}],
           Appearance->None,
           BaselinePosition->Baseline,
           
           ButtonFunction:>OutputSizeLimit`ButtonFunction[
            OutputSizeLimit`Defer, 1296, 18349919253794860511, Infinity],
           Enabled->True,
           Evaluator->Automatic,
           Method->"Queued"], 
          ButtonBox[
           PaneSelectorBox[{False->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeChangeLimit"], 
                StandardForm],
               ImageSizeCache->{107., {1., 12.}}],
              StripOnInput->False,
              DynamicUpdating->True,
              LineSpacing->{1, 2},
              LineIndent->0,
              LinebreakAdjustments->{1., 100, 0, 0, 0}], "OSLControl",
             StripOnInput->False], True->
            StyleBox[
             StyleBox[
              DynamicBox[ToBoxes[
                FEPrivate`FrontEndResource["FEStrings", "sizeChangeLimit"], 
                StandardForm]],
              StripOnInput->False,
              DynamicUpdating->True,
              LineSpacing->{1, 2},
              LineIndent->0,
              LinebreakAdjustments->{1., 100, 0, 0, 0}], "OSLControlActive",
             StripOnInput->False]}, Dynamic[
             CurrentValue["MouseOver"]],
            Alignment->Center,
            FrameMargins->0,
            ImageSize->{Automatic, {25, Full}}],
           Appearance->None,
           BaselinePosition->Baseline,
           ButtonFunction:>FrontEndExecute[{
              FrontEnd`SetOptions[
              FrontEnd`$FrontEnd, 
               FrontEnd`PreferencesSettings -> {"Page" -> "Advanced"}], 
              FrontEnd`FrontEndToken["PreferencesDialog"]}],
           Evaluator->None,
           Method->"Preemptive"]}
        },
        AutoDelete->False,
        FrameStyle->GrayLevel[0.85],
        GridBoxDividers->{"Columns" -> {False, {True}}},
        GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{Automatic}}},
        GridBoxSpacings->{"Columns" -> {{2}}}]}
     },
     DefaultBaseStyle->"Column",
     GridBoxAlignment->{"Columns" -> {{Left}}, "Rows" -> {{Baseline}}},
     GridBoxDividers->{"Columns" -> {{False}}, "Rows" -> {{False}}},
     GridBoxItemSize->{"Columns" -> {{Automatic}}, "Rows" -> {{1.}}},
     GridBoxSpacings->{"Columns" -> {
         Offset[0.27999999999999997`], {
          Offset[0.5599999999999999]}, 
         Offset[0.27999999999999997`]}, "Rows" -> {
         Offset[0.2], 
         Offset[1.2], {
          Offset[0.4]}, 
         Offset[0.2]}}],
    BaseStyle->"OutputSizeLimit",
    FrameMargins->{{12, 12}, {0, 15}},
    FrameStyle->GrayLevel[0.85],
    RoundingRadius->5,
    StripOnInput->False],
   Deploy,
   DefaultBaseStyle->"Deploy"],
  If[18349919253794860511 === $SessionID, 
   Out[1296], Message[
     MessageName[Syntax, "noinfoker"]]; Missing["NotAvailable"]; 
   Null]]], "Output",
 CellChangeTimes->{3.999600600434759*^9},
 CellLabel->
  "Out[1296]=",ExpressionUUID->"ff1d1023-d6ae-4a1c-bae4-910563d861c3"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Export", "[", 
  RowBox[{"\"\<matrix_huge_single_page.pdf\>\"", ",", 
   RowBox[{"Style", "[", 
    RowBox[{
     RowBox[{"MatrixForm", "[", "M", "]"}], ",", 
     RowBox[{"FontSize", "->", "10"}]}], "]"}], ",", 
   RowBox[{"PageSize", "->", 
    RowBox[{"{", 
     RowBox[{"2000", ",", "2000"}], "}"}]}], ",", 
   RowBox[{"ImageMargins", "->", "30"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.9996006123747177`*^9, 3.999600612738831*^9}, 
   3.999600653132299*^9},
 NumberMarks->False,
 CellLabel->
  "In[1297]:=",ExpressionUUID->"89213d7c-d7f2-4e5c-adff-7fc769bb7710"],

Cell[BoxData["\<\"matrix_huge_single_page.pdf\"\>"], "Output",
 CellChangeTimes->{3.999600269559412*^9, 3.999600709360989*^9},
 CellLabel->
  "Out[1297]=",ExpressionUUID->"925edbcc-5ca7-4f78-9cce-4af57808853b"]
}, Open  ]],

Cell[BoxData[
 RowBox[{"SystemOpen", "[", 
  RowBox[{"Directory", "[", "]"}], "]"}]], "Input",
 CellChangeTimes->{{3.9996008169654627`*^9, 3.999600816971129*^9}},
 CellLabel->
  "In[1298]:=",ExpressionUUID->"09679a88-2f52-4f43-97f3-8fa0bcc9533f"],

Cell[BoxData[{
 RowBox[{
  RowBox[{
   RowBox[{
   "fieldOrdering", "=", 
    "\"\<{e^1, e^2, p_{\[UpArrow]\[UpArrow]}^1, p_{\[UpArrow]\[UpArrow]}^2, \
p_{\[UpArrow]\[DownArrow]}^1, p_{\[UpArrow]\[DownArrow]}^2, p_{\[DownArrow]\
\[UpArrow]}^1, p_{\[DownArrow]\[UpArrow]}^2, p_{\[DownArrow]\[DownArrow]}^1, \
p_{\[DownArrow]\[DownArrow]}^2, d^1, d^2}\>\""}], ";"}], 
  "\n"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"paramTable", "=", 
    RowBox[{"Grid", "[", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"\"\<Coefficients\>\"", ",", "\"\<Momentum Sum\>\""}], "}"}],
         ",", 
        RowBox[{"{", 
         RowBox[{"\"\<\[Xi]1\>\"", ",", 
          RowBox[{"HoldForm", "[", 
           RowBox[{
            RowBox[{"1", "/", "Nk"}], " ", 
            RowBox[{"Sum", "[", 
             RowBox[{
              RowBox[{
               RowBox[{
                StyleBox[
                 RowBox[{"n", 
                  StyleBox["F",
                   FontSize->9]}]], "[", 
                StyleBox[
                 RowBox[{"E", 
                  StyleBox["k",
                   FontSize->10]}]], "]"}], " ", 
               StyleBox[
                RowBox[{"e", 
                 StyleBox["k",
                  FontSize->10]}]]}], ",", "k"}], "]"}]}], "]"}]}], "}"}], 
        ",", 
        RowBox[{"{", 
         RowBox[{"\"\<\[Xi]2\>\"", ",", 
          RowBox[{"HoldForm", "[", 
           RowBox[{
            RowBox[{"1", "/", "Nk"}], " ", 
            RowBox[{"Sum", "[", 
             RowBox[{
              RowBox[{
               RowBox[{
                RowBox[{
                 StyleBox[
                  RowBox[{"n", 
                   StyleBox["F",
                    FontSize->9]}]], "[", 
                 StyleBox[
                  RowBox[{"E", 
                   StyleBox["k",
                    FontSize->10]}]], "]"}], " ", 
                StyleBox[
                 RowBox[{"e", 
                  StyleBox["k",
                   FontSize->10]}]]}], 
               StyleBox["+",
                FontSize->10], 
               StyleBox["q",
                FontSize->10]}], ",", "k"}], "]"}]}], "]"}]}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"\"\<\[Xi]3\>\"", ",", 
          RowBox[{"HoldForm", "[", 
           RowBox[{
            RowBox[{"1", "/", "Nk"}], " ", 
            RowBox[{"Sum", "[", 
             RowBox[{
              RowBox[{
               RowBox[{
                RowBox[{
                 StyleBox[
                  RowBox[{"n", 
                   StyleBox["F",
                    FontSize->9]}]], "[", 
                 StyleBox[
                  RowBox[{"E", 
                   StyleBox["k",
                    FontSize->10]}]], "]"}], " ", 
                StyleBox[
                 RowBox[{"e", 
                  StyleBox["k",
                   FontSize->10]}]]}], 
               StyleBox["-",
                FontSize->10], 
               StyleBox["q",
                FontSize->10]}], ",", "k"}], "]"}]}], "]"}]}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"\"\<\[Gamma]0\>\"", ",", 
          RowBox[{"HoldForm", "[", 
           RowBox[{
            RowBox[{"1", "/", "Nk"}], " ", 
            RowBox[{"Sum", "[", 
             RowBox[{"bubble", ",", "k"}], "]"}]}], "]"}]}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"\"\<\[Gamma]1\>\"", ",", 
          RowBox[{"HoldForm", "[", 
           RowBox[{
            RowBox[{"1", "/", "Nk"}], " ", 
            RowBox[{"Sum", "[", 
             RowBox[{
              RowBox[{"bubble", " ", 
               StyleBox[
                RowBox[{"e", 
                 StyleBox["k",
                  FontSize->10]}]]}], ",", "k"}], "]"}]}], "]"}]}], "}"}], 
        ",", 
        RowBox[{"{", 
         RowBox[{"\"\<\[Gamma]2\>\"", ",", 
          RowBox[{"HoldForm", "[", 
           RowBox[{
            RowBox[{"1", "/", "Nk"}], " ", 
            RowBox[{"Sum", "[", 
             RowBox[{
              RowBox[{
               RowBox[{"bubble", " ", 
                StyleBox[
                 RowBox[{"e", 
                  StyleBox["k",
                   FontSize->10]}]]}], 
               StyleBox["+",
                FontSize->10], 
               StyleBox["q",
                FontSize->10]}], ",", "k"}], "]"}]}], "]"}]}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"\"\<\[Rho]1\>\"", ",", 
          RowBox[{"HoldForm", "[", 
           RowBox[{
            RowBox[{"1", "/", "Nk"}], " ", 
            RowBox[{"Sum", "[", 
             RowBox[{
              RowBox[{"bubble", " ", 
               RowBox[{
                StyleBox[
                 RowBox[{"e", 
                  StyleBox["k",
                   FontSize->10]}]], "^", "2"}]}], ",", "k"}], "]"}]}], 
           "]"}]}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"\"\<\[Rho]2\>\"", ",", 
          RowBox[{"HoldForm", "[", 
           RowBox[{
            RowBox[{"1", "/", "Nk"}], " ", 
            RowBox[{"Sum", "[", 
             RowBox[{
              RowBox[{
               RowBox[{"bubble", " ", 
                StyleBox[
                 RowBox[{"e", 
                  StyleBox["k",
                   FontSize->10]}]], " ", 
                StyleBox[
                 RowBox[{"e", 
                  StyleBox["k",
                   FontSize->10]}]]}], 
               StyleBox["+",
                FontSize->10], 
               StyleBox["q",
                FontSize->10]}], ",", "k"}], "]"}]}], "]"}]}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"\"\<\[Rho]3\>\"", ",", 
          RowBox[{"HoldForm", "[", 
           RowBox[{
            RowBox[{"1", "/", "Nk"}], " ", 
            RowBox[{"Sum", "[", 
             RowBox[{
              RowBox[{
               RowBox[{"bubble", " ", 
                StyleBox[
                 RowBox[{"e", 
                  StyleBox["k",
                   FontSize->10]}]]}], 
               StyleBox["+",
                FontSize->10], 
               RowBox[{
                StyleBox["q",
                 FontSize->10], "^", "2"}]}], ",", "k"}], "]"}]}], "]"}]}], 
         "}"}]}], "}"}], ",", 
      RowBox[{"Frame", "->", "All"}], ",", 
      RowBox[{"Alignment", "->", "Left"}], ",", 
      RowBox[{"Background", "->", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"1", "->", "LightGray"}], "}"}]}], "}"}]}]}], "]"}]}], 
   ";"}], "\n"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"doc", "=", 
   RowBox[{"DocumentNotebook", "[", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"TextCell", "[", 
       RowBox[{
       "\"\<Quadratic Expansion of Lagrangian\>\"", ",", "\"\<Title\>\""}], 
       "]"}], ",", 
      RowBox[{"TextCell", "[", 
       RowBox[{
       "\"\<1. Basis and Ordering of Fluctuating Fields\>\"", ",", 
        "\"\<Section\>\""}], "]"}], ",", 
      RowBox[{"TextCell", "[", 
       RowBox[{
       "\"\<The quadratic order expansion of the Lagrangian is expressed in \
the original field basis:\>\"", ",", "\"\<Text\>\""}], "]"}], ",", 
      RowBox[{"TextCell", "[", 
       RowBox[{
        RowBox[{"\"\<\[Psi] = \>\"", "<>", "fieldOrdering"}], ",", 
        "\"\<Program\>\""}], "]"}], ",", 
      RowBox[{"TextCell", "[", 
       RowBox[{"\"\<2. Coefficient Matrix (M)\>\"", ",", "\"\<Section\>\""}], 
       "]"}], ",", 
      RowBox[{"ExpressionCell", "[", 
       RowBox[{
        RowBox[{"Style", "[", 
         RowBox[{
          RowBox[{"MatrixForm", "[", "M", "]"}], ",", 
          RowBox[{"FontSize", "->", "9"}]}], "]"}], ",", "\"\<Output\>\""}], 
       "]"}], "\:ff0c", "\[IndentingNewLine]", 
      RowBox[{"TextCell", "[", 
       RowBox[{
       "\"\<3. Definitions of Coefficients\>\"", ",", "\"\<Section\>\""}], 
       "]"}], ",", 
      RowBox[{"TextCell", "[", 
       RowBox[{
       "\"\<Where bubble = (nF[Ek] - nF[Ekpq]) / (i \[Nu] + Ek - Ekpq), and \
the momentum-summed coefficients are defined as:\>\"", ",", "\"\<Text\>\""}], 
       "]"}], ",", 
      RowBox[{"ExpressionCell", "[", 
       RowBox[{"paramTable", ",", "\"\<Output\>\""}], "]"}]}], 
     "\[IndentingNewLine]", "}"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{"Export", "[", 
  RowBox[{"\"\<Lagrangian_Quadratic_Matrix.pdf\>\"", ",", "doc"}], 
  "]"}]}], "Input",
 CellChangeTimes->{{3.999606189122982*^9, 3.999606189126779*^9}, {
  3.999606253968287*^9, 3.9996062624347773`*^9}, {3.999606347412982*^9, 
  3.999606351610941*^9}, {3.99960663133987*^9, 3.999606651697822*^9}, {
  3.999606816105294*^9, 3.9996069131357327`*^9}, {3.999607100127944*^9, 
  3.999607132325798*^9}, {3.999611813380288*^9, 
  3.999611831078368*^9}},ExpressionUUID->"0a221a6f-0e10-40a8-8f8e-\
9dea2c621a5a"]
},
WindowSize->{1351, 712},
WindowMargins->{{Automatic, 0}, {1, Automatic}},
Magnification:>1.5 Inherited,
FrontEndVersion->"13.0 for Mac OS X x86 (64-bit) (February 4, 2022)",
StyleDefinitions->"Default.nb",
ExpressionUUID->"909a5792-6bb5-41b5-87c3-e048b5996596"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[558, 20, 277, 5, 63, "Input",ExpressionUUID->"78f43534-486e-4f8c-b234-abf41a1de27f"],
Cell[838, 27, 72294, 2084, 7752, "Input",ExpressionUUID->"ffb2c6c6-10eb-4b7d-bccf-a27c46dba0cd"],
Cell[CellGroupData[{
Cell[73157, 2115, 406, 9, 63, "Input",ExpressionUUID->"f94a7460-64bc-4317-be97-1efc18d6e553"],
Cell[73566, 2126, 12145, 311, 304, "Output",ExpressionUUID->"ff1d1023-d6ae-4a1c-bae4-910563d861c3"]
}, Open  ]],
Cell[CellGroupData[{
Cell[85748, 2442, 594, 15, 95, "Input",ExpressionUUID->"89213d7c-d7f2-4e5c-adff-7fc769bb7710"],
Cell[86345, 2459, 210, 3, 69, "Output",ExpressionUUID->"925edbcc-5ca7-4f78-9cce-4af57808853b"]
}, Open  ]],
Cell[86570, 2465, 246, 5, 63, "Input",ExpressionUUID->"09679a88-2f52-4f43-97f3-8fa0bcc9533f"],
Cell[86819, 2472, 8771, 246, 760, "Input",ExpressionUUID->"0a221a6f-0e10-40a8-8f8e-9dea2c621a5a"]
}
]
*)

