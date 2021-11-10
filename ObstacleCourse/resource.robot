*** Settings ***
Library     SeleniumLibrary    run_on_failure=Nothing

*** Variables ***
${URL}          https://obstaclecourse.tricentis.com/Obstacles/
${BROWSER}      Chrome
${DELAY}        0

*** Keywords ***
Prepare Browser
    Open Browser    ${URL}List    ${BROWSER}
    Maximize Browser Window
    Set Selenium Speed    ${DELAY}

Open Obstacle
    Go To    ${URL}${TEST TAGS}[0]

Verify Solved
    Wait Until Page Contains    Good job!
