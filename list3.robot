*** Setting ***
Library           Collections

*** Variables ***
@{l1}             a    b    c    d  a

*** Test Cases ***
TC1
    ${l3}        create list    ${1}    n    o    p
    ${l4}        create list
    insert into list    ${l3}    2    p
    log    @{l3}[1]
    log    ${l1}
    :for  ${item}  in  @{l3}
    \  log    ${item}

    log     @{l1}[1]
    log     ${l3}
    Remove From List    ${l3}    1
    log     ${l3}

    Remove Values From List    ${l3}    p
    log     ${l3}
    Append To List    ${l3}    a
    log     ${l3}

   
    :for  ${item}  in  @{l3}
    \    Run Keyword If    '${item}' == 'o'    log    '${item}'
     
     ${x}=    Get Length    ${l3}
     log    ${x}
     :for  ${index}    IN RANGE    ${x}
      \    log     "index is ${index} and the value is ${l3[${index}]}"


     Sort List    ${l3}
     log    ${l3}

***Keywords***
show
    log    "dance"
