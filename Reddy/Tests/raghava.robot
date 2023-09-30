*** Settings ***
Library    OperatingSystem


*** Variables ***
${MESSAGE}      Hello worlds

*** Test Cases ***
My Test
      [Documentation]    Example test
      Log                ${MESSAGE}
      My Keyword         ${CURDIR}

Another Test
       should be equal    ${MESSAGE}    Hello world

*** Keywords ***
My Keyword
       [Arguments]               ${path}
       directory should exist    ${path}
