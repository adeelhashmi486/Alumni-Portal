*** Settings ***
Library            SeleniumLibrary

*** Variables ***
${URL}                          https://alumni.urraan.pk/                       #URL of the Website
${Browser1}                     Chrome                                          #Chrome Browser
${Browser2}                     Edge                                            #MS Edge Browser
${Browser3}                     Firefox                                         #Mozilla Firefox Browser
${Email_link}                   https://alumni.urraan.pk/alumni-login           #Link in the Email
${Browser}                      Chrome                                          #Chrome Browser
${Alumni_Login_Button}          xpath: //*[@href="/alumni-login"]               #Locator of login button
${Expected_result}              Urraan Alumni                                   #Expected Tile of Urran portal website
${Login_Link_vrification}       xpath://*[@type="submit"]                       #Eelement with which we verify the link getting in email

*** Keywords ***
Title Should Be
    [Arguments]  ${expected_title}
    ${actual_title}=  Get Title                                              #Returns the title of the current page
    Should Be Equal As Strings  ${actual_title}  ${expected_title}           #Actual and Expected titles should be same otherwise testcase got failed
    Close Browser                                                            #Teardown the browser
Open Browser and Maximize Window
    [Arguments]  ${url}  ${browser}
    Open Browser  ${url}  ${browser}                                         #Opens the above URL in a Chrome Browser
    Maximize Browser Window                                                  #Maximizes the browser window

Check Alumni Login Button
    Wait Until Element Is Visible       ${Alumni_Login_Button}               #Wait untill login button visible
    Element Should Be Visible           ${Alumni_Login_Button}               #Assertion for login button
    Click Element                       ${Alumni_Login_Button}               #Click on the login button
    Element Should Be Visible           ${Login_Link_vrification}            #After click on alumni_login button login button should be visible
    Close Browser                                                            #Teardown the browser