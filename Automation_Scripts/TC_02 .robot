*** Settings ***
Library           SeleniumLibrary
*** Variables ***
${Email_link}            https://alumni.urraan.pk/alumni-login   #Link in the Email
${Browser}               Chrome       #Chrome Browser
*** Test Cases ***
Opening profile from link in email
    Open Browser  ${Email_link}   ${Browser}    #Opens the above URL in a Chrome Browser
    Maximize Browser Window             #Maximizes the browser window
    Title Should Be  Urraan Alumni      #Expected Title
*** Keywords ***
Title Should Be
    [Arguments]  ${expected_result}
    ${actual_result}=  Get Title     #Returns the title of the current page
    Should Be Equal As Strings  ${actual_result}  ${expected_result}  #Actual and Expected titles should be same otherwise testcase got failed
