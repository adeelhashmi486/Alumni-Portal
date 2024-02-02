*** Settings ***
Library            SeleniumLibrary

*** Variables ***
${URL}                          https://alumni.urraan.pk/                       #URL of the Websitee
${Browser1}                     Chrome                                          #Chrome Browser
${Browser2}                     Edge                                            #MS Edge Browser
${Browser3}                     Firefox                                         #Mozilla Firefox Browser
${Email_link}                   https://alumni.urraan.pk/alumni-login           #Link in the Email
${Browser}                      Chrome                                          #Chrome Browser
${Alumni_Login_Button}          xpath: //*[@href="/alumni-login"]               #Locator of login button
${Expected_result}              Urraan Alumni                                   #Expected Tile of Urran portal website
${Login_button}                 xpath://*[@type="submit"]                       #Eelement with which we verify the link getting in email
${Email_input}                  xpath://*[@type="email"]                        #Email input text field
${Password_input}               xpath://*[@type="password"]                     #Password input text field
${Toast_error}                  xpath:/html/body/div[2]                         #Locator of error on invalid login
${valid_email}                  shehryargul998@gmail.com                        #Valid email for login
${Invalid_email}                faizan.mehdi8545@gmail.com                      #Invalid email for login
${Invalid_password}             12345678                                        #Invalid password
${Valid_password}               Shehryargul998@                                 #Valid Password
${Basic_info}                   xpath://*[@id="navbarNav"]/div/span[1]          #Basic info button locator
${Forgot_Password}              xpath://*[@href="/forgot-password"]             #Forgot Password button locator

*** Keywords ***
Title Should Be
    [Arguments]  ${expected_title}
    ${actual_title}=  Get Title                                                 #Returns the title of the current page
    Should Be Equal As Strings  ${actual_title}  ${expected_title}              #Actual and Expected titles should be same otherwise testcase got failed
    Close Browser                                                               #Teardown the browser
Open Browser and Maximize Window
    [Arguments]  ${url}  ${browser}
    Open Browser  ${url}  ${browser}                                            #Opens the above URL in a Chrome Browser
    Maximize Browser Window                                                     #Maximizes the browser window

