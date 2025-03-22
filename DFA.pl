% DFA
% Language: All combinations of "abc"
% Must contain "ab"
% Must not contain "aa" or "ccb"

% Transitions
transition(s0, a, s1).
transition(s0, b, s0).
transition(s0, c, s2).

transition(s1, a, s_dead).  
transition(s1, b, s3).      
transition(s1, c, s2).

transition(s2, b, s0).
transition(s2, c, s5).

transition(s3, a, s4).  
transition(s3, b, s3).
transition(s3, c, s6).

transition(s4, b, s3).
transition(s4, c, s6).

transition(s5, c, s_dead).  

transition(s6, a, s4).
transition(s6, b, s3).
transition(s6, c, s7).

transition(s7, a, s4).
transition(s7, c, s6).

transition(s_dead, a, s_dead).
transition(s_dead, b, s_dead).
transition(s_dead, c, s_dead).

final_state(s3).
final_state(s4).
final_state(s6).
final_state(s7).

check_string(String) :-
    atom_chars(String, Chars),
    process_string(Chars, s0).

process_string([], CurrentState) :-
    final_state(CurrentState).

process_string([Char|Rest], CurrentState) :-
    transition(CurrentState, Char, NextState),
    process_string(Rest, NextState).
