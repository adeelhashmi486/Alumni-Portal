*** Settings ***
Library                          SeleniumLibrary

*** Variables ***
${URL}                           https://alumni.urraan.pk/                        #URL of the Website
${Browser1}                      Chrome                                           #Chrome Browser
${Browser2}                      Edge                                             #MS Edge Browser
${Browser3}                      Firefox                                          #Mozilla Firefox Browser
${Email_link}                    https://alumni.urraan.pk/alumni-login            #Link in the Email
${Browser}                       Chrome                                           #Chrome Browser
${Expected_result}               Urraan Alumni                                    #Expected Tile of Urran portal website
${Login_Link_vrification}        //*[@type="submit"]                              #Eelement with which we verify the link getting in email

*** Keywords ***
TC_02 Opening profile from link in email
    Open Browser  ${Email_link}   ${Browser}                    #Opens the above URL in a Chrome Browser
    Maximize Browser Window                                     #Maximizes the browser window
    Element Should Be Visible      ${Login_Link_vrification}    #when it goes on login page the input text field must be visible
    Close Browser                                               #Teardown the browser
Title Should Be
    [Arguments]  ${expected_title}
    ${actual_title}=  Get Title                                                   #Returns the title of the current page
    Should Be Equal As Strings  ${actual_title}  ${expected_title}                #Actual and Expected titles should be same otherwise testcase got failed