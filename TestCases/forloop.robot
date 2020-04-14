*** Test Cases ***

#    : FOR   ${i}    IN RANGE   1   10
#    \   Log   ${i}

#*** Test Cases ***
#test one
#    ${how_much}=    Set Variable    ${10}
#    : FOR    ${which}    IN RANGE    1    ${how_much}
#    \    Log    ${which}
#    : FOR  ${i}  IN RANGE  0  101
#    \  log to console   ${i}

#Listexample
#    @{items}  create list   1  2  3  4  5  6  7   #this is how specify the list.
#    : FOR  ${j}  IN   @{items}
#    \  log to console  ${j}
#listofstrings
#
#    @{number}  create list   happy  sad  joy  anxious  hurryy
#
#    :FOR  ${i}  IN   @{number}
#    \   log to console   ${i}

listexitwhen6
    @{items}  create list   1  2  3  4  5  6  7   #this is how specify the list.
    : FOR  ${j}  IN  @{items}
    \  log to console  ${j}
    \  exit for loop If   ${j}== 3