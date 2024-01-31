*** Settings ***
Library           SeleniumLibrary
Resource          common_resources.robot
*** Test Cases ***
TC_01 Checking website launching in different browsers
    Open Browser and Maximize Window  ${URL}  ${Browser1}                                       #Opens the above URL in a Chrome Browser and Maximizes the window
    Run Keyword And Continue On Failure  Title Should Be    ${Expected_result}                  # Soft assertion for Chrome
    Close Browser                                                                               #Teardown the browser

    Open Browser and Maximize Window  ${URL}  ${Browser2}                                       #Opens the above URL in a  Edge  Browser and Maximizes the window
    Run Keyword And Continue On Failure  Title Should Be    ${Expected_result}                  # Soft assertion for Edge
    Close Browser                                                                               #Teardown the browser

    Open Browser and Maximize Window  ${URL}  ${Browser3}                                       #Opens the above URL in a Firefox Browser and Maximizes the window
    Run Keyword And Continue On Failure  Title Should Be    ${Expected_result}                  # Soft assertion for Firefox
    Close Browser                                                                               #Teardown the browser
TC_02 Opening profile from link in email
    Open Browser and Maximize Window  ${Email_link}  ${Browser}                                 #Opens the above URL in a Chrome Browser and Maximizes the window
    Element Should Be Visible         ${Login_button}                                           #when it goes on login page the input text field must be visible
    Close Browser                                                                               #Teardown the browser
TC_04 Check Alumni Login button is working properly
    Open Browser and Maximize Window  ${URL}  ${Browser1}                                       #Opens the above URL in a Chrome Browser and Maximizes the window
    Wait Until Element Is Visible       ${Alumni_Login_Button}                                  #Wait untill login button visible
    Element Should Be Visible           ${Alumni_Login_Button}                                  #Assertion for login button
    Click Element                       ${Alumni_Login_Button}                                  #Click on the login button
    Element Should Be Visible           ${Login_button}                                         #After click on alumni_login button login button should be visible
    Close Browser                                                                               #Teardown the browser
TC_05 Check Login functionality working properly or not
    Open Browser and Maximize Window  ${Email_link}  ${Browser1}
    # Without Password and Email
    Clear Element Text      ${Email_input}                                                      #Clears Email input text field
    Clear Element Text      ${Password_input}                                                   #Clears Password input text field
    Click Element           ${Login_button}                                                     #Clicks on login button
    Wait Until Element Is Visible            ${Toast_error}                                     #It will wait untill error window display
    Run Keyword And Continue On Failure    Element Should be visible      ${Toast_error}        #Soft assertion for without email and password login

    # With Valid Email and Without Password
    Input Text       ${Email_input}      ${valid_email}                                         #Inputs a valid email in email input text
    Click Element    ${Login_button}                                                            #Clicks on login button
    Wait Until Element Is Visible            ${Toast_error}                                     #It will wait untill error window display
    Run Keyword And Continue On Failure    Element Should be visible       ${Toast_error}       #Soft assertion for valid email and without password login

    # Invalid Login
    Input Text       ${Email_input}        ${Invalid_email}                                     #Inputs an invalid email
    Input Text       ${Password_input}     ${Invalid_password}                                  #Inputs invalid password
    Click Element    ${Login_button}                                                            #Clicks on login button
    Wait Until Element Is Visible            ${Toast_error}                                     #It will wait untill error window display
    Run Keyword And Continue On Failure    Element Should be visible        ${Toast_error}      #Soft assertion for invalid email and invalid password login

    # Invalid Password
    Input Text       ${Email_input}          ${valid_email}                                     #Inputs an valid email
    Input Text       ${Password_input}       ${Invalid_password}                                #Inputs invalid password
    Click Element    ${Login_button}                                                            #Clicks on login button
    Wait Until Element Is Visible            ${Toast_error}                                     #It will wait untill error window display
    Run Keyword And Continue On Failure    Element Should be visible         ${Toast_error}     #Soft assertion for valid email and invalid password login

    # Valid Login
    Input Text       ${Email_input}           ${valid_email}                                    #Inputs an valid email
    Input Text       ${Password_input}        ${Valid_password}                                 #Inputs Valid password
    Click Element   ${Login_button}                                                             #Clicks on login button
    Wait Until Element Is Visible             ${Basic_info}                                     #It will wait untill basic info button is visible
    Run Keyword And Continue On Failure    Element Should be visible          ${Basic_info}     #After sucessfull login basic info button must be visible
    Close Browser                                                                               #Teardown the browser