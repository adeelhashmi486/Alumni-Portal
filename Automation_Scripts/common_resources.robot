*** Settings ***
Library            SeleniumLibrary
Library            Collections

*** Variables ***
${URL}                                              https://alumni.urraan.pk/                                           #URL of the Websitee
${Browser1}                                         Chrome                                                              #Chrome Browser
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