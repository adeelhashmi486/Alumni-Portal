*** Settings ***
Library           SeleniumLibrary
Resource          common_resources.robot
*** Test Cases ***
TC_01 Checking website launching in different browsers
    Open Browser and Maximize Window  ${URL}  ${Browser1}                               #Opens the above URL in a Chrome Browser and Maximizes the window
    Run Keyword And Continue On Failure  Title Should Be    ${Expected_result}          # Soft assertion for Chrome
    Close Browser                                                                       #Teardown the browser

    Open Browser and Maximize Window  ${URL}  ${Browser2}                               #Opens the above URL in a  Edge  Browser and Maximizes the window
    Run Keyword And Continue On Failure  Title Should Be    ${Expected_result}          # Soft assertion for Edge
    Close Browser                                                                       #Teardown the browser

    Open Browser and Maximize Window  ${URL}  ${Browser3}                               #Opens the above URL in a Firefox Browser and Maximizes the window
    Run Keyword And Continue On Failure  Title Should Be    ${Expected_result}          # Soft assertion for Firefox
    Close Browser                                                                       #Teardown the browser
TC_02 Opening profile from link in email
    Open Browser and Maximize Window  ${Email_link}  ${Browser}                         #Opens the above URL in a Chrome Browser and Maximizes the window
    Element Should Be Visible      ${Login_Link_vrification}                            #when it goes on login page the input text field must be visible
TC_04 Check Alumni Login button is working properly
    Open Browser and Maximize Window  ${URL}  ${Browser1}                               #Opens the above URL in a Chrome Browser and Maximizes the window
    Run Keyword  Check Alumni Login Button                                              #It will run the keyword Check Alumni login button
