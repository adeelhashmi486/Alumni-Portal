*** Settings ***
Library     SeleniumLibrary
Resource    Resourses.resource
*** Test Cases ***
TC_01 Checking of website launching in different browsers properly or not
    Open Browser    ${URL}     ${Browser1}                      #Opens the above URL in a Chrome Browser
    Maximize Browser Window                                     #Maximizes the browser window                               
    Run Keyword And Continue On Failure  Title Should Be    ${Expected_result}            # Soft assertion for Chrome
    Close Browser                                               #Teardown the browser
    Open Browser    ${URL}     ${Browser2}                      #Opens the  URL in Edge Browser                
    Maximize Browser Window                                     #Maximizes the browser window                                   
    Run Keyword And Continue On Failure  Title Should Be    ${Expected_result}  # Soft assertion for Edge
    Close Browser                                               #Teardown the browser
    Open Browser    ${URL}     ${Browser3}                      #Opens the  URL in Firefox Browser
    Maximize Browser Window                                     #Maximizes the browser window
    Run Keyword And Continue On Failure  Title Should Be    ${Expected_result}          # Soft assertion for Firefox
    Close Browser                                               #Teardown the browser
TC_02 Opening profile from link in email
    Open Browser  ${Email_link}   ${Browser}                    #Opens the above URL in a Chrome Browser
    Maximize Browser Window                                     #Maximizes the browser window
    Element Should Be Visible      ${Login_Link_vrification}    #when it goes on login page the input text field must be visible
    Close Browser                                               #Teardown the browser
