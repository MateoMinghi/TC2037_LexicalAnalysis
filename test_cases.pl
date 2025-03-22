% Test cases for DFA.pl

:- ["DFA"].

test_1 :- check_string("ab").
test_2 :- check_string("abc").
test_3 :- check_string("acab").
test_4 :- check_string("bab").
test_5 :- check_string("cab").
test_6 :- check_string("abb").
test_7 :- check_string("acbcab").
test_8 :- check_string("cabcab").
test_9 :- check_string("abcc").
test_10 :- check_string("abccc").
test_11 :- check_string("abcb").
test_12 :- check_string("abcbb").
test_13 :- check_string("abcbc").
test_14 :- check_string("cabb").
test_15 :- check_string("ccab").
test_16 :- check_string("ccabc").
test_17 :- check_string("accab").
test_18 :- check_string("acbab").
test_19 :- check_string("acbcabb").
test_20 :- check_string("acbcabc").
test_21 :- check_string("").
test_22 :- check_string("a").
test_23 :- check_string("b").
test_24 :- check_string("c").
test_25 :- check_string("aa").
test_26 :- check_string("ccb").
test_27 :- check_string("cca").
test_28 :- check_string("aac").
test_29 :- check_string("bc").
test_30 :- check_string("ca").
test_31 :- check_string("cc").
test_32 :- check_string("aaa").
test_33 :- check_string("cbb").
test_34 :- check_string("acccb").
test_35 :- check_string("ccccb").
test_36 :- check_string("accc").
test_37 :- check_string("aaaa").
test_38 :- check_string("bbbb").
test_39 :- check_string("cccc").
test_40 :- check_string("ccaabb").

run_tests :-
    test_1, test_2, test_3, test_4, test_5, test_6, test_7, test_8, test_9, test_10,
    test_11, test_12, test_13, test_14, test_15, test_16, test_17, test_18, test_19, test_20,
    test_21, test_22, test_23, test_24, test_25, test_26, test_27, test_28, test_29, test_30,
    test_31, test_32, test_33, test_34, test_35, test_36, test_37, test_38, test_39, test_40..