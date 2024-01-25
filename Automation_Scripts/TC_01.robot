*** Settings ***
Library           SeleniumLibrary
*** Variables ***
${URL}            https://alumni.urraan.pk/     #URL of the Website
${Browser1}        Chrome       #Chrome Browser
${Browser2}        Edge         #MS Edge Browser
${Browser3}        Firefox      #Mozilla Firefox Browser
*** Test Cases ***
Checking of website launching in different browsers properly or not
    Open Browser  ${URL}  ${Browser1}    #Opens the above URL in a Chrome Browser
    Maximize Browser Window             #Maximizes the browser window
    Title Should Be  Urraan Alumni      #Expected Title
    Open Browser  ${URL}  ${Browser2}    #Opens the above URL in Edge Browser
    Maximize Browser Window             #Maximizes the browser window
    Title Should Be  Urraan Alumni      #Expected Title
    Open Browser  ${URL}  ${Browser3}    #Opens the above URL in Firefox Browser
    Maximize Browser Window             #Maximizes the browser window
    Title Should Be  Urraan Alumni      #Expected Title
*** Keywords ***
Title Should Be
    [Arguments]  ${expected_title}
    ${actual_title}=  Get Title     #Returns the title of the current page
    Should Be Equal As Strings  ${actual_title}  ${expected_title}  #Actual and Expected titles should be same otherwise testcase got failed
