(* Content-type: application/vnd.wolfram.mathematica *)

(*** Wolfram Notebook File ***)
(* http://www.wolfram.com/nb *)

(* CreatedBy='Mathematica 13.0' *)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[       158,          7]
NotebookDataLength[     96177,       2700]
NotebookOptionsPosition[     94903,       2671]
NotebookOutlinePosition[     95383,       2690]
CellTagsIndexPosition[     95340,       2687]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{
Cell[BoxData[
 RowBox[{" ", 
  RowBox[{"ClearAll", "[", "\"\<Global`*\>\"", "]"}]}]], "Input",
 CellChangeTimes->{{3.999581971232603*^9, 3.999581976850504*^9}, {
  3.99958203386471*^9, 3.999582036360577*^9}},
 CellLabel->
  "In[299]:=",ExpressionUUID->"7c96d6bc-6d5b-49df-ac2b-9b014d488f7a"],

Cell[BoxData[
 RowBox[{
  RowBox[{"(*", " ", 
   RowBox[{
   "===", "===", "===", "===", "===", "===", "===", "===", "===", "===", "===",
     "===", "===", "===", "===", "===", "===", "===", "===", "==="}], "*)"}], 
  
  RowBox[{"(*", " ", 
   RowBox[{
    RowBox[{"Global", " ", "constants", " ", "and", " ", "saddle"}], "-", 
    RowBox[{"point", " ", "parameters"}]}], " ", "*)"}], 
  RowBox[{"(*", " ", 
   RowBox[{
   "===", "===", "===", "===", "===", "===", "===", "===", "===", "===", "===",
     "===", "===", "===", "===", "===", "===", "===", "===", "==="}], "*)"}], 
  "\n", 
  RowBox[{
   RowBox[{
    RowBox[{"Num", "=", "12"}], ";"}], "\n", 
   RowBox[{
    RowBox[{"dim", "=", "2"}], ";"}], "\n", "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{
     RowBox[{"t", "=", 
      RowBox[{"-", "0.2"}]}], ",", " ", 
     RowBox[{"n", "=", "0.8"}]}], "*)"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"const", "=", "0.61"}], ";"}], "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"U", "=", "2."}], ";"}], "\n", 
   RowBox[{
    RowBox[{"bd", "=", "0.3523078125102258"}], ";"}], "\n", 
   RowBox[{
    RowBox[{"bp", "=", "0.5252420444369049"}], ";"}], "\n", 
   RowBox[{
    RowBox[{"be", "=", "0.5693160763194206"}], ";"}], "\n", 
   RowBox[{
    RowBox[{"r", "=", "0.9881149952"}], ";"}], "\n", 
   RowBox[{
    RowBox[{"blam", "=", 
     RowBox[{"-", "2.8008647352776803"}]}], ";"}], "\n", 
   RowBox[{
    RowBox[{"bLam", "=", "0.8194119833"}], ";"}], "\n", 
   RowBox[{
    RowBox[{"mu", "=", 
     RowBox[{"-", "0.06968681049037836"}]}], ";"}], "\n", 
   "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"rd", "=", "r"}], ";"}], "\n", 
   RowBox[{
    RowBox[{"bpuu1", "=", "bp"}], ";", 
    RowBox[{"bpdd1", "=", "bp"}], ";"}], "\n", 
   RowBox[{
    RowBox[{"be1", "=", "be"}], ";", 
    RowBox[{"bd1", "=", "bd"}], ";"}], "\n", 
   RowBox[{
    RowBox[{"bLamuu", "=", "bLam"}], ";", 
    RowBox[{"bLamdd", "=", "bLam"}], ";"}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
    "===", "===", "===", "===", "===", "===", "===", "===", "===", "===", "===",
      "===", "===", "===", "===", "===", "===", "===", "===", "==="}], "*)"}],
    "\n", 
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
     RowBox[{"2", " ", "bd1"}]}], ";"}], "\[IndentingNewLine]", "\n", 
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
     RowBox[{"2", " ", "bpuu1"}]}], ";"}], "\[IndentingNewLine]", 
   "\[IndentingNewLine]", 
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
    "\n", 
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
        RowBox[{"-", "1"}], "/", "2"}], ")"}]}]}], ";"}], 
   "\[IndentingNewLine]", "\n", 
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
       RowBox[{"b", ",", "1", ",", "dim"}], "}"}]}], "]"}], ";"}], 
   "\[IndentingNewLine]", "\n", 
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
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
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
    "\n", 
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
        RowBox[{"-", "1"}], "/", "2"}], ")"}]}]}], ";"}], 
   "\[IndentingNewLine]", "\n", 
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
       RowBox[{"b", ",", "1", ",", "dim"}], "}"}]}], "]"}], ";"}], 
   "\[IndentingNewLine]", "\n", 
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
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
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
    "\n", 
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
      RowBox[{"bd1", " ", "bpuu1"}]}]}], ";"}], "\[IndentingNewLine]", "\n", 
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
      RowBox[{"-", "I"}], " ", "bpuu1"}]}], ";"}], "\[IndentingNewLine]", 
   "\n", 
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
     "1."}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
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
    "\n", 
   RowBox[{
    RowBox[{"R0", "=", 
     RowBox[{"MR0", ".", "RR0", ".", "LR0"}]}], ";"}], "\[IndentingNewLine]", 
   "\n", 
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
   "\[IndentingNewLine]", "\n", 
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
           RowBox[{"LR1", "[", 
            RowBox[{"[", 
             RowBox[{"j", ",", "c", ",", "a"}], "]"}], "]"}], " ", 
           RowBox[{"MR1", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", "\[Alpha]", ",", "b"}], "]"}], "]"}], " ", 
           RowBox[{"RR0", "[", 
            RowBox[{"[", 
             RowBox[{"b", ",", "c"}], "]"}], "]"}]}], "+", 
          RowBox[{
           RowBox[{"LR1", "[", 
            RowBox[{"[", 
             RowBox[{"j", ",", "c", ",", "a"}], "]"}], "]"}], " ", 
           RowBox[{"MR0", "[", 
            RowBox[{"[", 
             RowBox[{"\[Alpha]", ",", "b"}], "]"}], "]"}], " ", 
           RowBox[{"RR1", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", "b", ",", "c"}], "]"}], "]"}]}], "+", 
          RowBox[{
           RowBox[{"LR0", "[", 
            RowBox[{"[", 
             RowBox[{"c", ",", "a"}], "]"}], "]"}], " ", 
           RowBox[{"MR1", "[", 
            RowBox[{"[", 
             RowBox[{"j", ",", "\[Alpha]", ",", "b"}], "]"}], "]"}], " ", 
           RowBox[{"RR1", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", "b", ",", "c"}], "]"}], "]"}]}], "+", 
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
             RowBox[{"i", ",", "j", ",", "\[Alpha]", ",", "b"}], "]"}], "]"}],
            " ", 
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
             RowBox[{"i", ",", "j", ",", "b", ",", "c"}], "]"}], "]"}]}], "+", 
          RowBox[{
           RowBox[{"LR2", "[", 
            RowBox[{"[", 
             RowBox[{"j", ",", "i", ",", "c", ",", "a"}], "]"}], "]"}], " ", 
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
             RowBox[{"j", ",", "i", ",", "\[Alpha]", ",", "b"}], "]"}], "]"}],
            " ", 
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
             RowBox[{"j", ",", "i", ",", "b", ",", "c"}], "]"}], "]"}]}]}], 
         ",", 
         RowBox[{"{", 
          RowBox[{"b", ",", "1", ",", "dim"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"c", ",", "1", ",", "dim"}], "}"}]}], "]"}]}], ",", 
      RowBox[{"{", 
       RowBox[{"i", ",", "1", ",", "Num"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"j", ",", "1", ",", "Num"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"a", ",", "1", ",", "dim"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"\[Alpha]", ",", "1", ",", "dim"}], "}"}]}], "]"}], ";"}], 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
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
    "\n", 
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
     "1."}], ";"}], "\[IndentingNewLine]", "\[IndentingNewLine]", 
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
    "\n", 
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
           RowBox[{"RR1", "[", 
            RowBox[{"[", 
             RowBox[{"j", ",", "c", ",", "b"}], "]"}], "]"}], " ", 
           RowBox[{"MRD1", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", "b", ",", "\[Alpha]"}], "]"}], "]"}], " ", 
           RowBox[{"LR0", "[", 
            RowBox[{"[", 
             RowBox[{"a", ",", "c"}], "]"}], "]"}]}], "+", 
          RowBox[{
           RowBox[{"RR1", "[", 
            RowBox[{"[", 
             RowBox[{"j", ",", "c", ",", "b"}], "]"}], "]"}], " ", 
           RowBox[{"MRD0", "[", 
            RowBox[{"[", 
             RowBox[{"b", ",", "\[Alpha]"}], "]"}], "]"}], " ", 
           RowBox[{"LR1", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", "a", ",", "c"}], "]"}], "]"}]}], "+", 
          RowBox[{
           RowBox[{"RR0", "[", 
            RowBox[{"[", 
             RowBox[{"c", ",", "b"}], "]"}], "]"}], " ", 
           RowBox[{"MRD1", "[", 
            RowBox[{"[", 
             RowBox[{"j", ",", "b", ",", "\[Alpha]"}], "]"}], "]"}], " ", 
           RowBox[{"LR1", "[", 
            RowBox[{"[", 
             RowBox[{"i", ",", "a", ",", "c"}], "]"}], "]"}]}], "+", 
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
             RowBox[{"i", ",", "j", ",", "b", ",", "\[Alpha]"}], "]"}], "]"}],
            " ", 
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
             RowBox[{"i", ",", "j", ",", "a", ",", "c"}], "]"}], "]"}]}], "+", 
          RowBox[{
           RowBox[{"RR2", "[", 
            RowBox[{"[", 
             RowBox[{"j", ",", "i", ",", "c", ",", "b"}], "]"}], "]"}], " ", 
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
             RowBox[{"j", ",", "i", ",", "b", ",", "\[Alpha]"}], "]"}], "]"}],
            " ", 
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
             RowBox[{"j", ",", "i", ",", "a", ",", "c"}], "]"}], "]"}]}]}], 
         ",", 
         RowBox[{"{", 
          RowBox[{"b", ",", "1", ",", "dim"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"c", ",", "1", ",", "dim"}], "}"}]}], "]"}]}], ",", 
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
    "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{"k", "-", 
     RowBox[{"grid", " ", "and", " ", "dispersion"}]}], "*)"}], 
   "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
    "===", "===", "===", "===", "===", "===", "===", "===", "===", "===", "===",
      "===", "===", "===", "===", "===", "===", "===", "===", "==="}], "*)"}],
    "\n", 
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
        RowBox[{"[", "2", "]"}], "]"}], "]"}]}]}]}], "\n", 
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
   "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
    "===", "===", "===", "===", "===", "===", "===", "===", "===", "===", "===",
      "===", "===", "===", "===", "===", "===", "===", "===", "==="}], "*)"}],
    "\[IndentingNewLine]", 
   RowBox[{"(*", 
    RowBox[{"BuildM", ":", 
     RowBox[{
     "assembles", " ", "the", " ", "12", "x12", " ", "fluctuation", " ", 
      "matrix"}]}], "*)"}], "\[IndentingNewLine]", 
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
       "M"}]}], "\[IndentingNewLine]", "]"}]}], "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
    "===", "===", "===", "===", "===", "===", "===", "===", "===", "===", "===",
      "===", "===", "===", "===", "===", "===", "===", "===", "==="}], "*)"}],
    "\n", 
   RowBox[{"(*", 
    RowBox[{
     RowBox[{"Compute", " ", "M", 
      RowBox[{"(", "q", ")"}]}], ":", " ", 
     RowBox[{
      RowBox[{"calculation", " ", "for", " ", "one", " ", "q"}], "-", 
      "point"}]}], "*)"}], "\[IndentingNewLine]", 
   RowBox[{"(*", " ", 
    RowBox[{
    "===", "===", "===", "===", "===", "===", "===", "===", "===", "===", "===",
      "===", "===", "===", "===", "===", "===", "===", "===", "==="}], "*)"}],
    "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{
     RowBox[{"ComputeMQ", "[", 
      RowBox[{"nuIn_", ",", "q_"}], "]"}], ":=", 
     RowBox[{"Block", "[", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{"nu", "=", "nuIn"}], "}"}], ",", 
       RowBox[{"Module", "[", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{
          "xi1", ",", "xi2", ",", "xi3", ",", "gam0", ",", "gam1", ",", 
           "gam2", ",", "rho1", ",", "rho2", ",", "rho3", ",", "ek", ",", 
           "ekpq", ",", "ekmq", ",", "Ek", ",", "Ekpq", ",", "Ekmq", ",", 
           "bubble", ",", "MtotQ", ",", "MiQ", ",", "chargeSusc1", ",", 
           "chargeSusc2", ",", "spinSusc", ",", 
           RowBox[{"rdLocal", "=", "rd"}]}], "}"}], ",", 
         RowBox[{"(*", 
          RowBox[{
          "capture", " ", "rd", " ", "at", " ", "definition", " ", "time"}], 
          "*)"}], 
         RowBox[{"(*", 
          RowBox[{
           RowBox[{
            RowBox[{"--", 
             RowBox[{"-", "Initialize"}]}], " ", 
            RowBox[{"accumulators", "--"}]}], "-"}], "*)"}], 
         "\[IndentingNewLine]", 
         RowBox[{
          RowBox[{"xi1", "=", 
           RowBox[{"xi2", "=", 
            RowBox[{"xi3", "=", "0."}]}]}], ";", "\[IndentingNewLine]", 
          RowBox[{"gam0", "=", 
           RowBox[{"gam1", "=", 
            RowBox[{"gam2", "=", "0."}]}]}], ";", "\[IndentingNewLine]", 
          RowBox[{"rho1", "=", 
           RowBox[{"rho2", "=", 
            RowBox[{"rho3", "=", "0."}]}]}], ";", "\[IndentingNewLine]", 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{"--", 
             RowBox[{"-", "k"}]}], "-", 
            RowBox[{"space", " ", 
             RowBox[{"sum", "--"}]}], "-"}], "*)"}], "\[IndentingNewLine]", 
          RowBox[{"Do", "[", 
           RowBox[{
            RowBox[{
             RowBox[{"ek", "=", 
              RowBox[{"e", "[", 
               RowBox[{"klist", "[", 
                RowBox[{"[", "i", "]"}], "]"}], "]"}]}], ";", 
             "\[IndentingNewLine]", 
             RowBox[{"ekpq", "=", 
              RowBox[{"e", "[", 
               RowBox[{
                RowBox[{"klist", "[", 
                 RowBox[{"[", "i", "]"}], "]"}], "+", "q"}], "]"}]}], ";", 
             "\[IndentingNewLine]", 
             RowBox[{"ekmq", "=", 
              RowBox[{"e", "[", 
               RowBox[{
                RowBox[{"klist", "[", 
                 RowBox[{"[", "i", "]"}], "]"}], "-", "q"}], "]"}]}], ";", 
             "\[IndentingNewLine]", 
             RowBox[{"Ek", "=", 
              RowBox[{"En", "[", 
               RowBox[{"ek", ",", "r", ",", "bLam"}], "]"}]}], ";", 
             "\[IndentingNewLine]", 
             RowBox[{"Ekpq", "=", 
              RowBox[{"En", "[", 
               RowBox[{"ekpq", ",", "r", ",", "bLam"}], "]"}]}], ";", 
             "\[IndentingNewLine]", 
             RowBox[{"Ekmq", "=", 
              RowBox[{"En", "[", 
               RowBox[{"ekmq", ",", "r", ",", "bLam"}], "]"}]}], ";", 
             "\[IndentingNewLine]", 
             RowBox[{"bubble", "=", 
              RowBox[{
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"nF", "[", "Ek", "]"}], "-", 
                 RowBox[{"nF", "[", "Ekpq", "]"}]}], ")"}], "/", 
               RowBox[{"(", 
                RowBox[{
                 RowBox[{"I", " ", "nu"}], "+", "Ek", "-", "Ekpq"}], 
                ")"}]}]}], ";", "\[IndentingNewLine]", 
             RowBox[{"xi1", "+=", 
              RowBox[{
               RowBox[{"nF", "[", "Ek", "]"}], " ", 
               RowBox[{"ek", "/", "Nk"}]}]}], ";", "\[IndentingNewLine]", 
             RowBox[{"xi2", "+=", 
              RowBox[{
               RowBox[{"nF", "[", "Ek", "]"}], " ", 
               RowBox[{"ekpq", "/", "Nk"}]}]}], ";", "\[IndentingNewLine]", 
             RowBox[{"xi3", "+=", 
              RowBox[{
               RowBox[{"nF", "[", "Ek", "]"}], " ", 
               RowBox[{"ekmq", "/", "Nk"}]}]}], ";", "\[IndentingNewLine]", 
             RowBox[{"gam0", "+=", 
              RowBox[{"bubble", "/", "Nk"}]}], ";", "\[IndentingNewLine]", 
             RowBox[{"gam1", "+=", 
              RowBox[{"bubble", " ", 
               RowBox[{"ek", "/", "Nk"}]}]}], ";", "\[IndentingNewLine]", 
             RowBox[{"gam2", "+=", 
              RowBox[{"bubble", " ", 
               RowBox[{"ekpq", "/", "Nk"}]}]}], ";", "\[IndentingNewLine]", 
             RowBox[{"rho1", "+=", 
              RowBox[{"bubble", " ", 
               RowBox[{
                RowBox[{"ek", "^", "2"}], "/", "Nk"}]}]}], ";", 
             "\[IndentingNewLine]", 
             RowBox[{"rho2", "+=", 
              RowBox[{"bubble", " ", "ek", " ", 
               RowBox[{"ekpq", "/", "Nk"}]}]}], ";", "\[IndentingNewLine]", 
             RowBox[{"rho3", "+=", 
              RowBox[{"bubble", " ", 
               RowBox[{
                RowBox[{"ekpq", "^", "2"}], "/", "Nk"}]}]}]}], ",", 
            RowBox[{"{", 
             RowBox[{"i", ",", "1", ",", "Nk"}], "}"}]}], "]"}], ";", 
          "\[IndentingNewLine]", 
          RowBox[{"(*", 
           RowBox[{
            RowBox[{
             RowBox[{"--", 
              RowBox[{"-", "Build"}]}], " ", "and", " ", "invert", " ", 
             RowBox[{"Mtot", "--"}]}], "-"}], "*)"}], 
          RowBox[{"MQ", "=", 
           RowBox[{"BuildM", "[", 
            RowBox[{
            "xi1", ",", "xi2", ",", "xi3", ",", "gam0", ",", "gam1", ",", 
             "gam2", ",", "rho1", ",", "rho2", ",", "rho3", ",", "rdLocal"}], 
            "]"}]}]}]}], "\[IndentingNewLine]", "]"}]}], "]"}]}], ";"}], 
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
   3.9995781579954853`*^9, 3.999578199327927*^9}, {3.999578560270884*^9, 
   3.999578560525218*^9}, 3.999578669118191*^9, {3.9995787458665733`*^9, 
   3.999578754975614*^9}, {3.999579068008168*^9, 3.999579096469757*^9}, {
   3.999580086551717*^9, 3.999580154363708*^9}, {3.999580709740857*^9, 
   3.999580719070175*^9}, {3.999581066159453*^9, 3.99958109089865*^9}, {
   3.999581453550888*^9, 3.999581511656705*^9}, {3.999581953433311*^9, 
   3.999581955579012*^9}, {3.9995820475976877`*^9, 3.999582049726734*^9}, {
   3.999586731082827*^9, 3.999586741954762*^9}, {3.9996096648611107`*^9, 
   3.999609674813743*^9}, {3.9996097227583513`*^9, 3.999609751331009*^9}, {
   3.9996098217880297`*^9, 3.999609833136969*^9}, {3.9996099755228767`*^9, 
   3.999610030556424*^9}, {3.99961121316709*^9, 3.9996112255227823`*^9}, {
   3.999611386878625*^9, 3.999611439915187*^9}, 3.9996114761316643`*^9, {
   3.999611973816745*^9, 3.9996120226358337`*^9}, {3.9996121248120193`*^9, 
   3.999612132612398*^9}, {3.9996123222637787`*^9, 3.999612324236925*^9}, {
   3.999612365131255*^9, 3.999612365581566*^9}, {3.999612451496714*^9, 
   3.999612500942493*^9}},
 CellLabel->
  "In[441]:=",ExpressionUUID->"ffb2c6c6-10eb-4b7d-bccf-a27c46dba0cd"],

Cell[BoxData[
 RowBox[{"(*", "   ", 
  RowBox[{
   RowBox[{"M", 
    RowBox[{"(", "nu", ")"}]}], " ", "=", " ", 
   RowBox[{
    RowBox[{"nu", " ", "J"}], " ", "+", " ", "M0", " ", "+", " ", 
    RowBox[{"M1", "/", "nu"}], " ", "+", " ", 
    RowBox[{"O", 
     RowBox[{"(", 
      RowBox[{"1", "/", 
       RowBox[{"nu", "^", "2"}]}], ")"}]}]}]}], "   ", "*)"}]], "Input",
 CellChangeTimes->{{3.999586803552432*^9, 
  3.999586815831513*^9}},ExpressionUUID->"d082db90-f67b-456f-b0b2-\
ca48744b16ec"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"q0", "=", 
   RowBox[{"{", 
    RowBox[{"Pi", ",", "Pi"}], "}"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"num", "=", "1000."}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"JMat", "=", 
    RowBox[{"KroneckerProduct", "[", 
     RowBox[{
      RowBox[{"IdentityMatrix", "[", "6", "]"}], ",", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"0", ",", "1"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "1"}], ",", "0"}], "}"}]}], "}"}]}], "]"}]}], ";"}], 
  "\n"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"A", "=", 
   RowBox[{"-", 
    RowBox[{"JMat", ".", "JMat"}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Mp", "=", 
   RowBox[{"ComputeMQ", "[", 
    RowBox[{"num", ",", "q0"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Mm", "=", 
   RowBox[{"ComputeMQ", "[", 
    RowBox[{
     RowBox[{"-", "num"}], ",", "q0"}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"M0", "=", 
   RowBox[{
    RowBox[{"(", 
     RowBox[{"Mp", "+", "Mm"}], ")"}], "/", "2"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"Ceff", "=", 
    RowBox[{"-", 
     RowBox[{
      RowBox[{"(", 
       RowBox[{"JMat", ".", "M0"}], ")"}], ".", 
      RowBox[{"(", 
       RowBox[{"JMat", ".", "M0"}], ")"}]}]}]}], ";"}], 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"M1", "=", 
     RowBox[{"num", " ", 
      RowBox[{"(", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{"Mp", "-", "Mm"}], ")"}], "/", "2"}], "-", 
        RowBox[{"num", " ", "JMat"}]}], ")"}]}]}], ";"}], "*)"}], "\n", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"cTail", "=", 
     RowBox[{
      RowBox[{"-", "2"}], " ", 
      RowBox[{"Tr", "[", 
       RowBox[{"JMat", ".", "M1"}], "]"}]}]}], ";", 
    RowBox[{"Norm", "[", 
     RowBox[{"A", "-", 
      RowBox[{"IdentityMatrix", "[", "12", "]"}]}], "]"}]}], "*)"}], 
  "                             "}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"(*", 
   RowBox[{"Eigenvalues", "[", 
    RowBox[{"JMat", ".", "M0"}], "]"}], "*)"}], 
  "                               "}]}], "Input",
 CellChangeTimes->{{3.999583359922474*^9, 3.9995834472451267`*^9}, {
  3.9995866510078583`*^9, 3.99958667078502*^9}, {3.9996100917242327`*^9, 
  3.999610093887848*^9}, {3.999611314452963*^9, 3.999611316702167*^9}, {
  3.999612033312785*^9, 3.9996120352239428`*^9}, {3.9996121499646187`*^9, 
  3.9996121722350817`*^9}, {3.999612611112246*^9, 3.999612628328041*^9}},
 CellLabel->
  "In[592]:=",ExpressionUUID->"c6671f06-5d81-4854-92a0-caeee414845c"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"A", "//", "TraditionalForm"}]], "Input",
 CellChangeTimes->{
  3.999610182495081*^9, {3.999612639716279*^9, 3.999612646310752*^9}},
 CellLabel->
  "In[600]:=",ExpressionUUID->"c4946c6b-14f1-430f-a212-25db08762783"],

Cell[BoxData[
 FormBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"1", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0"},
     {"0", "1", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0"},
     {"0", "0", "1", "0", "0", "0", "0", "0", "0", "0", "0", "0"},
     {"0", "0", "0", "1", "0", "0", "0", "0", "0", "0", "0", "0"},
     {"0", "0", "0", "0", "1", "0", "0", "0", "0", "0", "0", "0"},
     {"0", "0", "0", "0", "0", "1", "0", "0", "0", "0", "0", "0"},
     {"0", "0", "0", "0", "0", "0", "1", "0", "0", "0", "0", "0"},
     {"0", "0", "0", "0", "0", "0", "0", "1", "0", "0", "0", "0"},
     {"0", "0", "0", "0", "0", "0", "0", "0", "1", "0", "0", "0"},
     {"0", "0", "0", "0", "0", "0", "0", "0", "0", "1", "0", "0"},
     {"0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "1", "0"},
     {"0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "0", "1"}
    },
    GridBoxAlignment->{"Columns" -> {{Center}}, "Rows" -> {{Baseline}}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}}], "\[NoBreak]", ")"}], TraditionalForm]], "Output",
 CellChangeTimes->{3.9996126466871147`*^9},
 CellLabel->
  "Out[600]//TraditionalForm=",ExpressionUUID->"98c57216-42f5-4883-9a4b-\
164f824c873e"]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"Chop", "[", 
   RowBox[{"Ceff", ",", "0.01"}], "]"}], "//", "TraditionalForm"}]], "Input",
 CellChangeTimes->{{3.999610197056684*^9, 3.999610200892296*^9}, 
   3.999610244361127*^9, {3.9996126522198343`*^9, 3.999612664065024*^9}},
 CellLabel->
  "In[602]:=",ExpressionUUID->"deb86429-8925-4f06-aa45-b3cba596f671"],

Cell[BoxData[
 FormBox[
  RowBox[{"(", "\[NoBreak]", GridBox[{
     {"0.894129638944126`", "0", 
      RowBox[{"-", "13.044341786974964`"}], "0", "0", "0", "0", "0", 
      RowBox[{"-", "13.044341786974964`"}], "0", "3.6808170104268787`", "0"},
     {"0", "0.894129638944126`", "0", 
      RowBox[{"-", "5.378923328232374`"}], "0", "0", "0", "0", "0", 
      RowBox[{"-", "5.378923328232374`"}], "0", "17.37773488458119`"},
     {
      RowBox[{"-", "5.378923328232374`"}], "0", "3.7381398196666096`", "0", 
      "0", "0", "0", "0", "10.529118097323508`", "0", 
      RowBox[{"-", "9.502710325737846`"}], "0"},
     {"0", 
      RowBox[{"-", "13.044341786974964`"}], "0", "3.7381398196666096`", "0", 
      "0", "0", "0", "0", "10.529118097323508`", "0", 
      RowBox[{"-", "0.2935455120312764`"}]},
     {"0", "0", "0", "0", 
      RowBox[{"-", "6.791090248227024`"}], "0", "0", "0", "0", "0", "0", 
      "0"},
     {"0", "0", "0", "0", "0", 
      RowBox[{"-", "6.791090248227024`"}], "0", "0", "0", "0", "0", "0"},
     {"0", "0", "0", "0", "0", "0", 
      RowBox[{"-", "6.7910902482270235`"}], "0", "0", "0", "0", "0"},
     {"0", "0", "0", "0", "0", "0", "0", 
      RowBox[{"-", "6.7910902482270235`"}], "0", "0", "0", "0"},
     {
      RowBox[{"-", "5.378923328232374`"}], "0", "10.529118097323508`", "0", 
      "0", "0", "0", "0", "3.7381398196666096`", "0", 
      RowBox[{"-", "9.502710325737844`"}], "0"},
     {"0", 
      RowBox[{"-", "13.044341786974964`"}], "0", "10.529118097323508`", "0", 
      "0", "0", "0", "0", "3.7381398196666096`", "0", 
      RowBox[{"-", "0.2935455120312764`"}]},
     {"17.37773488458119`", "0", 
      RowBox[{"-", "0.2935455120312764`"}], "0", "0", "0", "0", "0", 
      RowBox[{"-", "0.2935455120312764`"}], "0", "18.938672017648386`", "0"},
     {"0", "3.6808170104268787`", "0", 
      RowBox[{"-", "9.502710325737846`"}], "0", "0", "0", "0", "0", 
      RowBox[{"-", "9.502710325737844`"}], "0", "18.938672017648386`"}
    },
    GridBoxAlignment->{"Columns" -> {{Center}}, "Rows" -> {{Baseline}}},
    GridBoxSpacings->{"Columns" -> {
        Offset[0.27999999999999997`], {
         Offset[0.7]}, 
        Offset[0.27999999999999997`]}, "Rows" -> {
        Offset[0.2], {
         Offset[0.4]}, 
        Offset[0.2]}}], "\[NoBreak]", ")"}], TraditionalForm]], "Output",
 CellChangeTimes->{
  3.999611336920529*^9, 3.999611497182724*^9, 3.9996125179146347`*^9, {
   3.9996126543476763`*^9, 3.9996126644487743`*^9}},
 CellLabel->
  "Out[602]//TraditionalForm=",ExpressionUUID->"a2f04b05-6d7f-454c-a005-\
a03065e4762e"]
}, Open  ]],

Cell[BoxData[{
 RowBox[{
  RowBox[{"doc", "=", 
   RowBox[{"DocumentNotebook", "[", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"TextCell", "[", 
       RowBox[{
       "\"\<High-Frequency Expansion of Fluctuation Matrix\>\"", ",", 
        "\"\<Title\>\""}], "]"}], ",", 
      RowBox[{"TextCell", "[", 
       RowBox[{
       "\"\<1. High-Frequency Limit Relation\>\"", ",", "\"\<Section\>\""}], 
       "]"}], ",", 
      RowBox[{"TextCell", "[", 
       RowBox[{"\"\<In the high-frequency limit:\>\"", ",", "\"\<Text\>\""}], 
       "]"}], ",", 
      RowBox[{"TextCell", "[", 
       RowBox[{
       "\"\<M(\[Nu]) M(-\[Nu]) ~ A \[Nu]^2 + C\>\"", ",", "\"\<Program\>\""}],
        "]"}], ",", 
      RowBox[{"TextCell", "[", 
       RowBox[{
       "\"\<where A = 1_12 and C = -(J M_0)^2.\>\"", ",", "\"\<Text\>\""}], 
       "]"}], ",", 
      RowBox[{"TextCell", "[", 
       RowBox[{
       "\"\<2. Matrix A (12x12 Identity)\>\"", ",", "\"\<Section\>\""}], 
       "]"}], ",", 
      RowBox[{"ExpressionCell", "[", 
       RowBox[{
        RowBox[{"Style", "[", 
         RowBox[{
          RowBox[{"MatrixForm", "[", "A", "]"}], ",", 
          RowBox[{"FontSize", "->", "9"}]}], "]"}], ",", "\"\<Output\>\""}], 
       "]"}], ",", 
      RowBox[{"TextCell", "[", 
       RowBox[{
       "\"\<3. Matrix C (12x12 Analytic Form)\>\"", ",", "\"\<Section\>\""}], 
       "]"}], ",", 
      RowBox[{"ExpressionCell", "[", 
       RowBox[{
        RowBox[{"Style", "[", 
         RowBox[{
          RowBox[{"MatrixForm", "[", "Ceff", "]"}], ",", 
          RowBox[{"FontSize", "->", "8"}]}], "]"}], ",", "\"\<Output\>\""}], 
       "]"}]}], "}"}], "]"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{"Export", "[", 
  RowBox[{"\"\<Asymptotic_Matrix.pdf\>\"", ",", "doc"}], "]"}]}], "Input",
 CellChangeTimes->{{3.999610870804392*^9, 3.99961095487193*^9}, 
   3.9996126922651033`*^9},ExpressionUUID->"79fba091-9fb4-4adc-8ee5-\
006c70e84362"]
},
WindowSize->{1287, 603},
WindowMargins->{{Automatic, 59}, {Automatic, 9}},
PrintingCopies->1,
PrintingPageRange->{1, Automatic},
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
Cell[558, 20, 291, 6, 63, "Input",ExpressionUUID->"7c96d6bc-6d5b-49df-ac2b-9b014d488f7a"],
Cell[852, 28, 84409, 2383, 9271, "Input",ExpressionUUID->"ffb2c6c6-10eb-4b7d-bccf-a27c46dba0cd"],
Cell[85264, 2413, 499, 14, 46, "Input",ExpressionUUID->"d082db90-f67b-456f-b0b2-ca48744b16ec"],
Cell[85766, 2429, 2584, 80, 374, "Input",ExpressionUUID->"c6671f06-5d81-4854-92a0-caeee414845c"],
Cell[CellGroupData[{
Cell[88375, 2513, 238, 5, 63, "Input",ExpressionUUID->"c4946c6b-14f1-430f-a212-25db08762783"],
Cell[88616, 2520, 1364, 27, 349, "Output",ExpressionUUID->"98c57216-42f5-4883-9a4b-164f824c873e"]
}, Open  ]],
Cell[CellGroupData[{
Cell[90017, 2552, 348, 7, 63, "Input",ExpressionUUID->"deb86429-8925-4f06-aa45-b3cba596f671"],
Cell[90368, 2561, 2574, 54, 361, "Output",ExpressionUUID->"a2f04b05-6d7f-454c-a005-a03065e4762e"]
}, Open  ]],
Cell[92957, 2618, 1942, 51, 326, "Input",ExpressionUUID->"79fba091-9fb4-4adc-8ee5-006c70e84362"]
}
]
*)

