# E1 Implementation of Lexical Analysis (Automaton and Regular Expression)

- Mateo Minghi Vega

- A01711231

---

### Theoretical Framework

Stanford describes automata as abstract models of machines that perform computations on an input by moving through a series of states or configurations. [1]

A "state" is a particular situation or configuration of the automaton at a given point. The automaton follows a specific rule for each step. If it reaches a final "accepting" state, the input is considered valid.

There are several types of automata, but for the purposes of this project, I'm going to focus on finite automata.

Finite-state automata are computation models for a small amount of memory, and do not maintain memory.They can only reach a finite number of states and transitions between these states. [1]

A finite-state machine (or automaton) is formally defined as a 5-tuple (Q, I, Z, ∂, W) where:

- Q = finite set of states
- I = finite set of input symbols
- Z = finite set of output symbols
- ∂ = state transition function, (I x Q → Q)
- W = mapping W of I x Q onto Z, called the output function
- A = set of accept states where F is a subset of Q

A deterministic finite automaton (DFA) is a machine composed of a finite set of states linked by arcs labeled with symbols from a finite alphabet. Each time a symbol is read, the machine changes state, the new state is uniquely determined by the
symbol read and the labeled arcs from the current state. [2]

We can use DFAs to model regular expressions. Regular expressions (regex) are patterns used to match character combinations in strings.

---

### Description

In this case, I have to design an automaton that models a regex for correctly detecting this language:

- all possible combinations of "abc"
- must not have "ccb" or "aa"
- and must contain ab

### Design

Given the nature of the language, which only has three letters, a DFA is a good choice for the automaton. Although DFAs are generally harder to design than NFAs, having such a limited language doesn't make the DFA that much harder to design. Asside from that, DFAs are easier to implement.

Imágen del automaton

Tabla de estados (el automaton representado en tabla)

Regex normalito (no en código) y su explicación

---

### Implementation

código, con su explicación

screenshots de tests

implementación en otro lenguaje

---

### References

[1] https://cs.stanford.edu/people/eroberts/courses/soco/projects/2004-05/automata-theory/basics.html

[2] https://www.its.caltech.edu/~matilde/FormalLanguageTheory.pdf

"STC0101
Implementación de algoritmos computacionales" The implementation of the algorithms works correctly
The program includes automated tests that show the algorithm works properly
both: best practices and correct style are followed in the implementation

"STC0102
Optimización de algoritmos computacionales" Time and space complexity are correctly analyzed
At least two correct solutions were presented. (regex vs automata)
A benchmark of the solutions is presented and analyzed.

"STC0103
Generación de modelos computacionales" The model is clearly explained through a diagram. (the automata and regex)
A complete explanation of the rational of the model is presented beside the diagram
The explanation contains the theoretical/mathematical backing for the ideas presented in the model, formal references must be included and properly cited IEEE or APA.

"STC0104
Implementación de modelos computacionales" The implementation of the model is consistent with the documentation generated.
The Implemented model also contains a set of documented tests to show that the model works as intended and correctly solves the problem
The program passes successfully all the tests
