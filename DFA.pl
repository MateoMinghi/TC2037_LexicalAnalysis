% DFA
% Language: All combinations of "abc"
% Must contain "ab"
% Must not contain "aa" or "ccb"

% Transitions
transition(s0, b, s0).
transition(s0, a, s1).
transition(s0, c, s4).

transition(s1, a, s1).
transition(s1, b, s2).
transition(s1, c, s4).

transition(s2, a, s2).
transition(s2, b, s2).
transition(s2, c, s2).

transition(s3, a, s3).
transition(s3, b, s3).
transition(s3, c, s3).

transition(s4, c, s4).
transition(s4, a, s1).
transition(s4, b, s5).

transition(s5, a, s5).
transition(s5, b, s5).
transition(s5, c, s5).

% Final states
final_state(s2).

% Check if a string is accepted by the DFA
check_string(String) :-
    atom_chars(String, Chars),
    process_string(Chars, s0).

% Process the string
process_string([], CurrentState) :-
    final_state(CurrentState).
process_string([Char|Rest], CurrentState) :-
    transition(CurrentState, Char, NextState),
    process_string(Rest, NextState).
