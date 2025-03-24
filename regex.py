import re

pattern = r"^(?!.*aa)(?!.*ccb)[abc]*ab[abc]*$"

def test_regex(text):
    return bool(re.match(pattern, text))

test_cases = [
    ("abcab", True),  
    ("ab", True),      
    ("aab", False),    
    ("ccb", False),    
    ("abcabcab", True),
    ("abc", False),    
]

for i, (test_input, expected) in enumerate(test_cases):
    result = test_regex(test_input)
    if result == expected:
        print("Test case", i + 1, "passed")
    else:
        print("Test case", i + 1, "failed: input(", test_input, ") -> expected", expected, "but got", result)
