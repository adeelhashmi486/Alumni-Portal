*** Settings ***
Library            SeleniumLibrary
Library            Collections

*** Variables ***
${URL}                                              https://alumni.urraan.pk/                                           #URL of the Websitee
${Browser1}                                         headlessChrome                                                              #Chrome Browser
${Browser2}                                         Edge                                                                #MS Edge Browser
${Browser3}                                         Firefox                                                             #Mozilla Firefox Browser
${Email_link}                                       https://alumni.urraan.pk/alumni-login                               #Link in the Email
${Alumni_Login_Button}                              xpath: //*[@href="/alumni-login"]                                   #Locator of login button
${Expected_result}                                  Urraan Alumni                                                       #Expected Tile of Urran portal website
${Login_button}                                     xpath://*[@type="submit"]                                           #Eelement with which we verify the link getting in email
${Email_input}                                      xpath://*[@type="email"]                                            #Email input text field
${Password_input}                                   xpath://*[@type="password"]                                         #Password input text field
${Toast_error}                                      xpath:/html/body/div[2]                                             #Locator of error on invalid login
${valid_email}                                      shehryargul998@gmail.com                                            #Valid email for login
${Invalid_email}                                    faizan.mehdi8545@gmail.com                                          #Invalid email for login
${Invalid_password}                                 12345678                                                            #Invalid password
${Valid_password}                                   Shehryargul998@                                                     #Valid Password
${Basic_info}                                       xpath://*[@id="navbarNav"]/div/span[1]                              #Basic info button locator
${Forgot_Password}                                  xpath://*[@href="/forgot-password"]                                 #Forgot Password button locator
${Password_lowercase}                               codematics                                                          #Password with lowercase alphabets
${Confirm_Password}                                 xpath://*[@placeholder="Confirm Password"]                          #Confirm Password button locator
${ClassSelector}                                    page-link btn btn-light                                             #1 button class
${ActiveClassSelector}                              page-item active                                                    #Active class selector
${NextButton}                                       //*[@id="app"]/div/div/div[2]/div/div[2]/ul/li[4]/button            #Next Button locator
${SortByButton}                                     xpath://*[@id="sort"]/option[3]                                     #Sort by locator
${skills_vi}                                        //*[@id="filtersColumn"]/div[2]/div/div[1]/div                      #Skills Locator
${Gender_vi}                                        //*[@id="filtersColumn"]/div[4]/div/div[1]/div                      #Gender locator
${Work_exp_vi}                                      //*[@id="filtersColumn"]/div[6]/div/div[1]/div                      #Work Experience locator
${Availiab_vi}                                      //*[@id="filtersColumn"]/div[8]/div/div[1]/div                      #Availiability locator
${Skills_dt}                                        //*[@id="filtersColumn"]/div[2]//div[1]/div/span                    #Skills Dropdown locator
${Skills_as}                                        //*[@id="trainingAreasCard"]                                        #3D Animation locator
${Gender_dt}                                        //*[@id="filtersColumn"]/div[4]//div[1]//div/span                   #Gender Dropdown locator
${Gender_as}                                        //*[@id="genderCard"]/ul/label[1]                                   #Male locator
${Workexp_dt}                                       //*[@id="filtersColumn"]/div[6]//div[1]//div/span                   #Work Experience Dropdown
${Workexp_as}                                       //*[@id="workExperienceCard"]/ul/label[4]                           #1-2 Year Experience
${Availia_dt}                                       //*[@id="filtersColumn"]/div[8]//div[1]//div/span                   #Availiability Dropdown
${Availia_as}                                       //*[@id="employmentTypeCard"]/label[3]                              #Internship locator
${Applyfilter_button}                               //*[@id="filtersColumn"]/div[10]/button                             #Apply Filter Button locator
${male_cb}                                          //*[@id="genderCard"]/ul/label[1]/span                              #Male Checkbox locator
${female_cb}                                        //*[@id="genderCard"]/ul/label[2]/span                              #Female Checkbox locator
${clearall_btn}                                     //*[@id="filtersColumn"]/div[1]/h5                                  #Clear all Button locator
${next_button}                                      //*[@id="app"]/div//div[2]//div[2]/ul/li[4]/button                  #Next Button locator
${ClassSelector}                                    page-link btn btn-light                                             #Class locator
${First_Button(1)}                                  //*[@id="app"]//div[2]//div[2]/ul/li[3]/button                      #1 Button locator
${Initial_Class}                                    xpath://li[@class="page-item"]                                      #Initial class of the button  locator
${UPdated_Class}                                    xpath://li[@class="page-item active"]                               #Updated Class of button locator
${Sort_field}                                       id=sort                                                             #Sort Field locator
${Sort_Bacth}                                       xpath://*[@id="sort"]/option[2]                                     #Sort by batch locator
${Sort_Training}                                    xpath://*[@id="sort"]/option[3]                                     #Sort by training area locator
${Sort_Training_class}                              //p[@class='mb-3 alumni-training']                                  #Class of the training areas
${Sort_Graduation}                                  xpath://*[@id="sort"]/option[4]                                     #Sort by graduation date locator
${alert_msg}                                        //*[@role="alert"]                                                  #Profile inactive alert message locator
${toggle_id}                                        id=is_active_toggle                                                 #Profile active toggle locator
${datepicker_text}                                  xpath://input[@type='text']                                         #Datepicker text locator
${date}                                             css=tr:nth-child(2) > .day:nth-child(3)                             #Date pick locator
${city_input}                                       //*[@id="app"]//div[1]//div[6]/div/input                            #City input text locator
${City}                                             Abbottabad                                                          #City input
${Lastedu_input}                                    //*[@id="app"]//div[1]/div//div[8]/div/input                        #Last education input text locator
${Lastedu}                                          MS in Electrical Engineering                                        #Last education input
${Lasteduinst_input}                                //*[@id="app"]//div[4]//div[1]//div[9]/div/input                    #Last education institute input text locator
${Lasteduinst}                                      UET Taxila                                                          #Last education institute locator
${Lasteduinstinp_year}                              //*[@id="app"]//div[4]//div[1]//div[10]/div/input                   #Last education year input text locator
${Lasteduinst_year}                                 2021                                                                #Last education year input
${Portfolio_input}                                  //*[@id="app"]//div[4]//div[1]//div[11]/div/input                   #Portfolio input text locator
${Portfolio}                                        https://alumni.urraan.pk/profile                                    #Portfolio input text
${Linkedin_input}                                   //*[@id="app"]//div[4]//div[1]//div[12]/div/input                   #Linkedin input text locator
${Linkedin}                                         https://www.linkedin.com/in/yourprofile                             #Linkedin link input
${Emptype_input}                                    //div[@id='vs1__combobox']                                          #Employement input text locator
${Emptype}                                          id=vs1__option-0                                                    #Employement type input
${input_string1}                                    In publishing and graphic design, Lorem ipsum is a placeholder text commonly used to demonstrate the visual form of a document or a typeface without relying on meaningful content.    #Short bio input text less than 50 words
${input_string2}                                    As a web developer, I am a tech professional specializing in creating and optimizing websites. I utilize languages such as HTML, CSS, and JavaScript to design visually appealing, responsive, and functional online platforms, ensuring a seamless user experience.  #Short bio input text more then 50 words
${Aboutme_input}                                    //*[@id="app"]//div[4]//div[1]//div[14]/div/textarea                #About me input text locator
${Submit_btn}                                       //*[@type="submit"]                                                 #Continue button locator
${Work_exp_input}                                   //*[@id="app"]//div[4]//div[1]//div[1]/div/select                   #Work experience input locator
${Work_exp_Select}                                  //*[@id="app"]//div[4]//div[1]//div[1]/div/select/option[3]         #Work experience selector locator
${Error_msg}                                        //span[@class='error-message']                                      #Error message locator
${Checkbox_curremploy}                              xpath=//label[contains(@class, 'custom_check')]/input[@type='checkbox']    #Current employement checkbox locator
${Position_inp}                                     //*[@id="app"]/div/div[4]/div/div/div/div/div[1]/div/div/div[3]/div/input  #Designation input text locator
${Position}                                         SQA                                                                 #Designation input
${org_inp}                                          //*[@id="app"]//div[4]//div[1]//div[4]/div/input                    #Organization input text locator
${org}                                              Codematics                                                          #Designation input
${Updated_toast}                                    css=.toasted                                                        #Profile updated sucessfully toast locator
${Input}                                            ABC                                                                 #Inputs the text
${Skills_tab}                                       //*[@id="navbarNav"]/div/span[3]                                    #Skills tab locator
${Add_button}                                       //*[@id="button-addon2"]                                            #Add button locator
${No skill para}                                    //p[@class='px-5']                                                  #No skills available locator
${skilL_del}                                        //div[@class='user-skills-tabs ml-4']//div[1]//div[1]//button[1]    #Skilld delete button locator
${Urran_logo}                                       //span[@class='urraan-alumni ml-2 mt-2']                            #Urraan logo locator
${prof_img}                                         //img[@class='rounded-circle avatar-img']                           #Profile pic locator
${Logout_dd}                                        //button[@class='dropdown-item']                                    #Logout dropdown locator
${No_options}                                       //li[@class='vs__no-options']                                       #No options available text locator
${Close_button}                                     //button[@title='Deselect Part Time']//*[name()='svg']              #Close button locator
${Save_exp}                                         //*[@id="app"]/div/div[4]/div/div/div/div/div[3]/div                #Save experience locator
${Addskill_as}                                      //*[@id="app"]//div[4]//div[1]/div/div[3]/p                         #Add skills locator
*** Keywords ***
Title Should Be
    [Arguments]  ${expected_title}
    ${actual_title}=  Get Title                                                                                         #Returns the title of the current page
    Should Be Equal As Strings  ${actual_title}  ${expected_title}                                                      #Actual and Expected titles should be same otherwise testcase got failed
    Close Browser                                                                                                       #Teardown the browser
Open Browser and Maximize Window
    [Arguments]  ${url}  ${browser}
    Open Browser  ${url}  ${browser}                                                                                    #Opens the above URL in a Chrome Browser
    Maximize Browser Window                                                                                             #Maximizes the browser window
Login
    Open Browser  ${URL}  ${Browser1}
    Maximize Browser Window
    Wait Until Page Contains Element    xpath=//a[text()='Alumni Login']
    Sleep    5s
    Click Link  xpath=//a[text()='Alumni Login']
    # Wait for the login page to load
    Wait Until Page Contains Element  css=.form-group > .form-control

    Input Text  css=.form-group > .form-control  Shehryargul998@gmail.com
    Input Text  css=.password-input > .form-control  Shehryargul998@

    Click Button  css=.btn
Wait Until Element Is Visible
    [Arguments]    ${locator}    ${timeout}=30
    Wait Until Keyword Succeeds    ${timeout}s    1s    Element Should Be Visible    ${locator}
*** Test Cases ***
TC_01 Checking website launching in different browsers
    Open Browser and Maximize Window  ${URL}  ${Browser1}                                                               #Opens the above URL in a Chrome Browser and Maximizes the window
    Run Keyword And Continue On Failure  Title Should Be    ${Expected_result}                                          # Soft assertion for Chrome
    Close Browser                                                                                                       #Teardown the browser

    Open Browser and Maximize Window  ${URL}  ${Browser2}                                                               #Opens the above URL in a  Edge  Browser and Maximizes the window
    Run Keyword And Continue On Failure  Title Should Be    ${Expected_result}                                          #Soft assertion for Edge
    Close Browser                                                                                                       #Teardown the browser

    Open Browser and Maximize Window  ${URL}  ${Browser3}                                                               #Opens the above URL in a Firefox Browser and Maximizes the window
    Run Keyword And Continue On Failure  Title Should Be    ${Expected_result}                                          #Soft assertion for Firefox
    Close Browser                                                                                                       #Teardown the browser
TC_02 Opening profile from link in email
    Open Browser and Maximize Window  ${Email_link}  ${Browser1}                                                        #Opens the above URL in a Chrome Browser and Maximizes the window
    Element Should Be Visible         ${Login_button}                                                                   #When it goes on login page the input text field must be visible
    Close Browser                                                                                                       #Teardown the browser
TC_03 Check Alumni Login button is working properly
    Open Browser and Maximize Window  ${URL}  ${Browser1}                                                               #Opens the above URL in a Chrome Browser and Maximizes the window
    Run Keyword  Wait Until Element Is Visible                 ${Alumni_Login_Button}                                   #Wait untill login button visible
    Element Should Be Visible           ${Alumni_Login_Button}                                                          #Assertion for login button
    Click Element                       ${Alumni_Login_Button}                                                          #Click on the login button
    Element Should Be Visible           ${Login_button}                                                                 #After click on alumni_login button login button should be visible
    Close Browser                                                                                                       #Teardown the browser
TC_04 Check Login functionality working properly or not
    Open Browser and Maximize Window  ${Email_link}  ${Browser1}                                                        #Opens the email link and maximizes the browser
    # Without Password and Email
    Clear Element Text      ${Email_input}                                                                              #Clears Email input text field
    Clear Element Text      ${Password_input}                                                                           #Clears Password input text field
    Click Element           ${Login_button}                                                                             #Clicks on login button
    Run Keyword  Wait Until Element Is Visible            ${Toast_error}                                                #It will wait untill error window display
    Run Keyword And Continue On Failure    Element Should be visible      ${Toast_error}                                #Soft assertion for without email and password login

    # Valid Email and Without Password
    Input Text       ${Email_input}      ${valid_email}                                                                 #Inputs a valid email in email input text
    Click Element    ${Login_button}                                                                                    #Clicks on login button
    Run Keyword  Wait Until Element Is Visible            ${Toast_error}                                                #It will wait untill error window display
    Run Keyword And Continue On Failure    Element Should be visible       ${Toast_error}                               #Soft assertion for valid email and without password login

    # Invalid Email and Password
    Input Text       ${Email_input}        ${Invalid_email}                                                             #Inputs an invalid email
    Input Text       ${Password_input}     ${Invalid_password}                                                          #Inputs invalid password
    Click Element    ${Login_button}                                                                                    #Clicks on login button
    Run Keyword  Wait Until Element Is Visible            ${Toast_error}                                                #It will wait untill error window display
    Run Keyword And Continue On Failure    Element Should be visible        ${Toast_error}                              #Soft assertion for invalid email and invalid password login

    # Invalid Password and valid Email
    Input Text       ${Email_input}          ${valid_email}                                                             #Inputs an valid email
    Input Text       ${Password_input}       ${Invalid_password}                                                        #Inputs invalid password
    Click Element    ${Login_button}                                                                                    #Clicks on login button
    Run Keyword  Wait Until Element Is Visible            ${Toast_error}                                                #It will wait untill error window display
    Run Keyword And Continue On Failure    Element Should be visible         ${Toast_error}                             #Soft assertion for valid email and invalid password login

    # Valid Login of Profile
    Input Text       ${Email_input}           ${valid_email}                                                            #Inputs an valid email
    Input Text       ${Password_input}        ${Valid_password}                                                         #Inputs Valid password
    Click Element    ${Login_button}                                                                                    #Clicks on login button
    Run Keyword  Wait Until Element Is Visible            ${Toast_error}                                                #It will wait untill  locator is visible
    Run Keyword  Wait Until Element Is Visible             ${Basic_info}                                                #Waits untill basic info tab is visible
    Run Keyword And Continue On Failure    Element Should be visible          ${Basic_info}                             #After sucessfull login basic info button must be visible
    Close Browser                                                                                                       #Teardown the browser
TC_05 Check Forgot Password functionallity working properly or not with Valid Email and Invalid Email.
   Open Browser and Maximize Window  ${Email_link}  ${Browser1}                                                         #Opens the above Link in a Chrome Browser and Maximizes the window
    #Forgot Password-Invalid Email
    Click Element     ${Forgot_Password}                                                                                #Clicks on Forgot Password Button
    Input Text        ${Email_input}        ${Invalid_email}                                                            #Inputs an invalid email
    Click Element     ${Login_button}                                                                                   #Clicks on Send Password Reset link Button
    Run Keyword  Wait Until Element Is Visible    ${Toast_error}                                                        #It will wait untill error window display
    Run Keyword And Continue On Failure    Element Should be visible      ${Toast_error}                                #Soft assertion for Invalid email for password reset
    #Forgot Password-Valid Email
    #Clear Element Text    ${Email_input}                                                                               #Clears Email input text field
    #Input Text            ${Email_input}        ${valid_email}                                                         #Inputs an valid email
    #Click Element         ${Login_button}                                                                              #Clicks on Send Password Reset link Button
    #Run Keyword  Wait Until Element Is Visible    ${Toast_error}                                                       ##It will wait untill toast display
    #Run Keyword And Continue On Failure    Element Should be visible      ${Toast_error}                               #Soft assertion for password reset link sent
    Close Browser                                                                                                       #Teardown the browser
TC_07 Check Profile inactive message is display when user login having inactive profile.
    Run Keyword   Login                                                                                                 #Login's the profile
    Run Keyword  Wait Until Element Is Visible        ${alert_msg}                                                      #Waits untill alert message displayed                                                                                                    #Sleeps for 15 Seconds
    ${is_visible}=    Run Keyword And Return Status    Element Should Be Visible    ${alert_msg}                        #Getting the status of alert message visibility
    Log    Is alert visible: ${is_visible}                                                                              #logs the value of the variable ${is_visible} to the console
    ${is_selected}=   Run Keyword And Return Status   Checkbox Should Be Selected    ${toggle_id}                       #Getting the status of button to active profile is selected or not
    Log    Is checkbox selected: ${is_selected}                                                                         #Logs the value of the variable ${is_selected} to the console used for debugging purposes to see whether the checkbox is selected.
    Run Keyword If  ${is_visible}==True and ${is_selected}==True                                                        #Check condion if alert is visible and its old profile and already active
    ...  Fail  The alert is visible and active button is also selected                                                  #Fail the test case
    ...  ELSE IF  ${is_visible}==True and ${is_selected}==False                                                         #Check condion if alert is visible and its new profile and not active from button
    ...  Log  Active button is not selected But alert for non active profile is show Successfully                       #Pass the test case
    ...  ELSE IF  ${is_visible}==False and ${is_selected}==True                                                         #Check condion if alert is not visible and its old profile and active from button
    ...  Log  Alert for non active profile is not show Because Active button is selected                                #Pass the test case
    ...  ELSE                                                                                                           #Check condion if alert is not visible and profile is not active from button
    ...  Fail  The alert is not visible and active button is also not selected                                          #Fail the test case
    Close Browser                                                                                                       #TearDown Browser
TC_08 Check Activating Profile is working or not.
    Run Keyword     Login                                                                                               #Login's the profile
    Sleep       5s                                                                                                      #Sleeps for 5 Seconds
    #Run Keyword  Wait Until Element Is Visible      ${Basic_info}                                                      #Waits Untill basic info tab is visible                                                                                                      #Sleeps for 10 Seconds
    ${data_like_value}=    Get Element Attribute    ${toggle_id}    data-status                                         #Retrives the value of the toggle button  and stores in ${data_like_value}
    Log    ${data_like_value}                                                                                           #Logs the value of ${data_like_value} in console
    Run Keyword If    '${data_like_value}' != 'active' and '${data_like_value}' != 'inactive'                           #Checks if the value of ${data_like_value} is neither 'active' nor 'inactive'. If the condition is true, it fails the test case with the message "Unexpected state of button".
    ...    Fail     Unexpected state of button
    Run Keyword If    '${data_like_value}' == 'inactive'                                                                #Executes JavaScript to click on the element with the id 'is_active_toggle' if the value of ${data_like_value} is 'inactive'. This is done to activate the toggle button
    ...    Execute JavaScript    document.getElementById('is_active_toggle').click();
    ${data_like_value}=    Get Element Attribute    ${toggle_id}    data-status                                         #Retrives the value of the toggle button  and stores in ${data_like_value}
    Should Be Equal    ${data_like_value}    active                                                                     #Toggle button should be active
    Checkbox Should Be Selected    ${toggle_id}                                                                         #Checkbox should be selected
    Run Keyword If    '${data_like_value}' == 'active'
    ...    Execute JavaScript    document.getElementById('is_active_toggle').click();                                   #Deactivate the toogle button
    ${data_like_value}=    Get Element Attribute   ${toggle_id}    data-status                                          #Retrives the value of the toggle button  and stores in ${data_like_value}
    Should Be Equal    ${data_like_value}    inactive                                                                   #Toggle button should be inactive
    Checkbox Should Not Be Selected    ${toggle_id}                                                                     #Checkbox should not be selected
    Close Browser                                                                                                       #TearDown Browser
TC_09 Check user can update Basic info or not.
    Run Keyword                                 Login                                                                   #Runs the keyword for login
    Run Keyword  Wait Until Element Is Visible  ${datepicker_text}                                                      #Waits Untill datepicker element is visible
    Click Element                               ${datepicker_text}                                                      #Clicks on datepicker element
    Click Element                               ${date}                                                                 #Selects the date
    Run Keyword And Continue On Failure    Element Should Be Disabled         ${Email_input}                            #Email input text must be disabled
    Input Text                                  ${city_input}                 ${City}                                   #Inputs city name
#    Select Radio Button    radio     value='female'
    Input Text                                  ${Lastedu_input}              ${Lastedu}                                #Inputs last education
    Input Text                                  ${Lasteduinst_input}          ${Lasteduinst}                            #Inputs last education institute
    Input Text                                  ${Lasteduinstinp_year}        ${Lasteduinst_year}                       #Inputs last education year
    Input Text                                  ${Portfolio_input}            ${Portfolio}                              #Inputs Portfolio
    Input Text                                  ${Linkedin_input}             ${Linkedin}                               #Inputs linkedin link
    Click Element                               ${Emptype_input}                                                        #Clicks on employement type input
    Run Keyword  Wait Until Element Is Visible  ${Emptype_input}                                                        #Waits Untill email input text is visible
    ${is_visible}=    Run Keyword And Return Status    Element Should Be Visible   ${No_options}                        #Checks whether the element specified by the locator is visible on the page
    Run Keyword If    ${is_visible}    Click Element                               ${Close_button}                      #Clicks on close button
    Click Element                               ${Emptype_input}                                                        #Clicks on employement type input
    Click Element                               ${Emptype_input}                                                        #Clicks on employement type input
    Click Element                               ${Emptype}                                                              #Selects the type of employement
    Input Text                                  ${Aboutme_input}               ${input_string1}                         #Inputs the text in Short bio input text field
    Element Should Be Visible                   ${Error_msg}                                                            #Error message visible if word counts less than 50
    Input Text                                  ${Aboutme_input}                ${input_string2}                        #Inputs the text in Short bio input text field
    Element Should Not Be Visible               ${Error_msg}                                                            #Error message not visible because word counts greater than 50
    Click Element                               ${Submit_btn}                                                           #Clicks on Continue button
    Click Element                               ${Work_exp_input}                                                       #Clicks on Work experience field
    Click Element                               ${Work_exp_Select}                                                      #Selects the work experience option
    ${is_selected}=    Run Keyword And Return Status    Checkbox Should Be Selected    ${Checkbox_curremploy}           #Checks weather checkbox selected or not
    Run Keyword If    not ${is_selected}    Click Element    ${Checkbox_curremploy}                                     #Checkbox should be selected if not already selected
    Run Keyword  Wait Until Element Is Visible   ${Position_inp}                                                                                          #Sleeps for 10 Seconds
    Input Text                                   ${Position_inp}                 ${Position}                            #Inputs the designation
    Input Text                                   ${org_inp}                      ${org}                                 #Inputs the organization
    Click Element                                ${Submit_btn}                                                          #Clicks on Save Button
    Run Keyword  Wait Until Element Is Visible   ${Updated_toast}                                                                                                     #Sleeps for 2 Seconds
    Element Should Be Visible                    ${Updated_toast}                                                       #Profile updated sucessfull toast visible
    Close Browser                                                                                                       #Tearsdown the window
TC_10 Check user can update and save Experience Without updating Basic Info or not
    Run Keyword    Login                                                                                                #Runs the keyword for login
    Sleep       5s                                                                                                      #Sleeps for 5 Seconds
    Click Element                               ${Portfolio_input}                                                      #Clicks on Portfolio input text field
    Clear Element Text                          ${Portfolio_input}                                                      #Clears the Portfolio input text field
    Input Text                                  ${Portfolio_input}              ${Input}                                #Input text
    Click Element                               ${Submit_btn}                                                           #Clicks on continue button
    Element Should Be Visible                   ${Save_exp}                                                             #Assertion after clicking
    Element Should Be Disabled                  ${Submit_btn}                                                           #Continue button must be disabled
    Close Browser                                                                                                       #Tearsdown the window
TC_11 Check User can add skills in skill tab with add skill button or not.
   Run Keyword    Login                                                                                                 #Runs the keyword for login
   Run Keyword  Wait Until Element Is Visible       ${Skills_tab}                                                       #Waits Untill Skill tab is visible                                                                                                             #Sleeps for 10 Seconds
   ${is_visible}=    Run Keyword And Return Status    Element Should Be Visible    ${Addskill_as}                       #Checks weather add skill option is available or not
   Run Keyword If    ${is_visible}    Pass Execution    There is no Skill to Add thats why this test is Pass
   ...    ELSE    Log    Element is not visible. Continue with the test execution
   Click Element                                 ${Skills_tab}                                                          #Clicks on Skills Tab
   Click Button                                  ${Add_button}                                                          #Clicks on add button
   Run Keyword  Wait Until Element Is Visible    ${Updated_toast}                                                       #Waits Untill toast is visble                                           #Sleeps for 2 Seconds
   Element Should Be Visible                     ${Updated_toast}                                                       #Skills added toast should be visible
   ${element_text}=    Get Text                  ${Updated_toast}                                                       #Gets the text of toast
   Log    Element text: ${element_text}                                                                                 #Logs the text
   Should Be Equal    ${element_text}     Skills Added                                                                  #Text should be equal to the Skills Added
   Close Browser
TC_12 Check user can Delete skills or not
   Run Keyword    Login                                                                                                 #Runs the keyword for login
   Run Keyword  Wait Until Element Is Visible       ${Skills_tab}                                                       #Waits Untill Skill tab is visible                                                   #Sleeps for 10 Seconds
   Click Element                                    ${Skills_tab}                                                       #Clicks on Skills Tab
   ${is_visible}=    Run Keyword And Return Status    Element Should Be Visible    ${No skill para}                     #Checks weather any skill to add or not
   Run Keyword If    ${is_visible}    Pass Execution    There is no Skill to Delete thats why this test is Pass
   ...    ELSE    Log    Element is not visible. Continue with the test execution
   Click Button                                  ${skilL_del}                                                           #Clicks on Skills Tab
   Run Keyword  Wait Until Element Is Visible    ${Updated_toast}                                                       #Waits Untill toast is visible                                                                                                       #Sleeps for 2 Seconds
   Element Should Be Visible                     ${Updated_toast}                                                       #Skills Dleted toast should be visible
   ${element_text}=    Get Text                  ${Updated_toast}                                                       #Gets the text of toast
   Log    Element text: ${element_text}                                                                                 #Logs the text
   Should Be Equal    ${element_text}         Skill Deleted                                                             #Text should be equal to the Skills Deleted
   Close Browser                                                                                                        #Teardown the browser
TC_13 Check Logout Functionality working properly or not
    Run Keyword    Login                                                                                                #Runs the keyword for login
    Run Keyword  Wait Until Element Is Visible   ${Urran_logo}                                                          #Waits Untill urraan logo is visible                                             #Sleeps for 10 Seconds
    Click Element                                ${Urran_logo}                                                          #Clicks on Urraan logo
    Run Keyword  Wait Until Element Is Visible   ${prof_img}                                                            #Waits untill the element is visible                                                                                                      #Sleeps for 5 Seconds
    Click Element                                ${prof_img}                                                            #Clicks on Profile Image
    Run Keyword  Wait Until Element Is Visible   ${Logout_dd}                                                           #Waits Untill dropdown is visible
    Click Button                                 ${Logout_dd}                                                           #Clicks on logout button
    Run Keyword  Wait Until Element Is Visible   ${Updated_toast}                                                       #Waits Untill toast is visible
    Element Should Be Visible                    ${Updated_toast}                                                       #You have successfully logged out Should be visible
    ${element_text}=    Get Text                 ${Updated_toast}                                                       #Get text of the toast
    Log    Element text: ${element_text}                                                                                #Logs the text
    Should Be Equal    ${element_text}     You have successfully logged out                                             #Text should be equal to the You have successfully logged out
    Sleep  2s                                                                                                           #Sleeps for 2 Seconds
    Close Browser                                                                                                       #Teardown the browser

TC_15 Check Filter Elements are showing on page properly or not
    Open Browser    ${URL}                           ${Browser1}                                                        #Opens the URL
    Maximize Browser Window                                                                                             #Maximizes the window
    Run Keyword and Continue on Failure             Element Should be visible           ${skills_vi}                    #Skills Element must be Visible
    Run Keyword and Continue on Failure             Element Should be visible           ${Gender_vi}                    #Gender Element must be Visible
    Run Keyword and Continue on Failure             Element Should be visible           ${Work_exp_vi}                  #Work Experience Element must be Visible
    Run Keyword and Continue on Failure             Element Should be visible           ${Availiab_vi}                  #Availiability Element must be Visible
TC_16 Check drop down for each Filter are showing or not
    Click Element                                                                       ${Skills_dt}                    #Clicked on Skills dropdown
    Run Keyword and Continue on Failure             Element Should be visible           ${Skills_as}                    #3D Animmation must be Visible after Clicking on Skills
    Click Element                                                                       ${Gender_dt}                    #Clicked on Gender Dropdown
    Run Keyword        Wait Until Element Is Visible                                    ${Gender_as}                    #Waits Untill  male gender is visible
    Run Keyword and Continue on Failure             Element Should be visible           ${Gender_as}                    #Male must be visible after Clicking on Gender
    Click Element                                                                       ${Workexp_dt}                   #Clicked on Work Experience Dropdown
    Run Keyword  Wait Until Element Is Visible                                          ${Workexp_as}                   #Wait Until 1-2 Years Experience Visible
    Run Keyword and Continue on Failure             Element Should be visible           ${Workexp_as}                   #1-2 Years Experience must be visible
    Click Element                                                                       ${Availia_dt}                   #Clicked on Availiability Dropdown
    Run Keyword  Wait Until Element Is Visible                                          ${Availia_as}                   #Wait Untill Internship Element is Visible
    Run Keyword and Continue on Failure             Element Should be visible           ${Availia_as}                   #Internship Element must be Visible after Clicking
    Close Browser                                                                                                       #Teardown the browser

TC_19 Check gender filter work properly with single gender selection or not
    Open Browser                                     ${URL}                           ${Browser1}                       #Opens the URL
    Maximize Browser Window                                                                                             #Maximizes the window
    Click Element                                                                       ${Gender_dt}                    #Clicked on Gender Dropdown
    Run Keyword  Wait Until Element Is Visible                                           ${male_cb}                     #Wait Untill Male Checkbox is Visible
    Element Should Be Enabled                                                           ${male_cb}                      #Element Should Be Enabled
    Click Element                                                                       ${male_cb}                      #Click on Male Checkbox
    Click Element                                                                       ${Applyfilter_button}           #Click on Apply Filter Button
    Close Browser                                                                                                       #Teardown the browser
TC_20 Check gender filter work properly with multiple gender selection or not
    Open Browser                                     ${URL}                           ${Browser1}                       #Opens the URL
    Maximize Browser Window                                                                                             #Maximizes the window
    Click Element                                                                       ${Gender_dt}                    #Clicked on Gender Dropdown
    Run Keyword  Wait Until Element Is Visible                                          ${male_cb}                      #Wait Untill Male Checkbox is Visible
    Element Should Be Enabled                                                           ${male_cb}                      #Male Checkbox Element Should Be Enabled
    Element Should Be Enabled                                                           ${female_cb}                    #Male Checkbox Element Should Be Enabled
    Click Element                                                                       ${male_cb}                      #Click on Male Checkbox
    Click Element                                                                       ${female_cb}                    #Click on Female Checkbox
    Click Element                                                                       ${Applyfilter_button}           #Click on Apply Filter Button
    Close Browser                                                                                                       #Teardown the browser
TC_22 Check filters work properly with availiability options or not.
    Open Browser                            ${URL}                           ${Browser1}                                #Opens the URL
    Maximize Browser Window                                                                                             #Maximizes the window
    Click Element                                                                       ${Availia_dt}                   #Click on Availiability Dropdown
    Run Keyword  Wait Until Element Is Visible                                          ${Availia_as}                   #Wait untill internship Element Is Visible
    Click Element                                                                       ${Availia_as}                   #Click on Internship Element
    Click Element                                                                       ${Applyfilter_button}           #Click on Apply Filter Button
    Close Browser                                                                                                       #Teardown the browser
TC_23 Check the clearing all filters funtionallity working properly or not
    Open Browser                                   ${URL}                           ${Browser1}                         #Opens the URL
    Maximize Browser Window                                                                                             #Maximizes the window
    Click Element                                                                       ${Gender_dt}                    #Clicked on Gender Dropdown

    Run Keyword           Wait Until Element Is Visible                                 ${male_cb}                      #Wait Untill Male Checkbox is Visible
    Click Element                                                                       ${male_cb}                      #Click on Male Checkbox
    Click Element                                                                       ${Availia_dt}                   #Click on Availiability Dropdown

    Run Keyword          Wait Until Element Is Visible                                  ${Availia_as}                   #Wait untill internship Elementr Is Visible
    Click Element                                                                       ${Availia_as}                   #Click on Internship Element
    Click Element                                                                       ${Applyfilter_button}           #Click on Apply Filter Button

    Sleep  5s
    #Run Keyword          Wait Until Element Is Visible                                  ${clearall_btn}                 #Waits Untill clear button is visible
    Click Element                                                                       ${clearall_btn}                 #Click on Clear all Filters Button
    Close Browser                                                                                                       #Teardown the browser
TC_24 Check the funtionallity of next button for next page working properly or not.
    Open Browser                                  ${URL}                           ${Browser1}                          #Opens the URL in Chrome Browser
    Maximize Browser Window                                                                                             #Maximizes the browser window
    ${elements}      Get WebElements    class:${ClassSelector}                                                          #Finds all the elements on the page that have the specified class and stores them in the ${elements} variable.
     FOR    ${element}    IN    @{elements}                                                                             #Starts a loop where ${element} iterates over each element in the list of elements stored in ${elements}
        ${text}       Get Text    ${element}                                                                            #Gets the text content of the current element and stores it in the ${text} variable.
        ${enabled}    Run Keyword And Return Status    Element Should Be Enabled       ${element}                       #Checks if the current element is enabled
        Should Be True    ${enabled}    Text "${text}" is not enabled.                                                  #Asserts that the ${enabled} variable is true. If the element is not enabled, it fails the test and logs a message.
     END                                                                                                                #Ends the For Loop
    Run Keyword  Wait Until Element Is Visible                                         ${First_Button(1)}               #Waits Untill 1 button Visible
    ${element_locator}    Set Variable                                                 ${First_Button(1)}               #Sets variable of 1 button
    ${initial_class}      Get Element Attribute                                        ${Initial_Class}    class        #Gets the value of the "class" attribute of the element
    Run Keyword And Return Status                   Element Should Be Enabled          ${element_locator}               #Checks if element is enabled
    Click Element                                                                      ${element_locator}               #Clicks on the element
    ${updated_class}      Get Element Attribute                                        ${UPdated_Class}    class        #Gets the value of the "class" attribute of the element specified by the XPath and stores it in the ${updated_class} variable.
    Run Keyword If        '${initial_class}' != '${updated_class}'    Log    Class attribute has been changed           #Checks if the initial class and updated class  of the button is same or not
    ...                   ELSE    Fail    Class attribute has not been changed
    Close Browser                                                                                                       #Teardown the browser
TC_25 Check Sorting By Batch wok properly or
    #Sort by Batch
    Open Browser                                    ${URL}                           ${Browser1}                        #Opens the URL in Chrome Browser
    Maximize Browser Window                                                                                             #Maximizes the browser window
    Click Element                                                                   ${Sort_field}                       #Clicks on the Sort Field
    Run Keyword  Wait Until Element Is Visible                                      ${Sort_Bacth}                       #Waits Until sort by batch element is visible
    Run Keyword and Continue on Failure    Element Should Be Visible                ${Sort_Bacth}                       #Soft Assertion of sort by batch
    Click Element                                                                   ${Sort_Bacth}                       #Clicks on Sort by batch element
    Sleep       5s                                                                                                      #Sleeps for 5 Seconds
    #Sort By Training Areas
    Click Element                                                                  ${Sort_field}                        #Clicks on the Sort Field
    Run Keyword  Wait Until Element Is Visible                                     ${Sort_Training}                     #Waits Until sort by trainig area element is visible
    Run Keyword and Continue on Failure    Element Should Be Visible               ${Sort_Training}                     #Soft Assertion of sort by Training area
    Click Element                                                                  ${Sort_Training}                     #Clicks on Sort by Training areas element
    Sleep       5s                                                                                                      #Sleeps for 5 Seconds
    Run Keyword  Wait Until Element Is Visible                                     ${Sort_Training_class}               #Waits Until Element is Visible
    ${elements}=    Get WebElements                                                ${Sort_Training_class}               #Finds all the elements on the page that match the XPath expression and stores them in the ${elements}
    @{element_texts}=    Create List                                                                                    #Creates a list to store the elements
      FOR    ${element}    IN    @{elements}                                                                            #Starts a loop where ${element} iterates over each element in the list
         ${text}=    Get Text    ${element}                                                                             #Gets the text content of the current element
         Append To List    ${element_texts}    ${text}                                                                  #Appends the text of each element
      END                                                                                                               #Ends the loop
    Log Many    ${element_texts}                                                                                        #Logs the content of the loop
    ${is_sorted}=    Evaluate    sorted(@{element_texts}) == @{element_texts}                                           #Evaluates whether the list ${element_texts} is sorted in ascending order.
    Should Be True    ${is_sorted}                                                                                      #The list is sorted in ascending order. If the list is not sorted, the test case will fail.
    Sleep    10s                                                                                                        #Sleeps for 5 Seconds
    #Sort By Graduation Date
    Click Element                                                                  ${Sort_field}                        #Clicks on the Sort Field
    Run Keyword  Wait Until Element Is Visible                                     ${Sort_Graduation}                   #Waits Until sort by graduation date element is visible
    Run Keyword and Continue on Failure    Element Should Be Visible               ${Sort_Graduation}                   #Soft Assertion of sort by Graduation Date
    Click Element                                                                  ${Sort_Graduation}                   #Clicks on Sort by Graduation Date element
    Close Browser                                                                                                       #Teardown the browser
