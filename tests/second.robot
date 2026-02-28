*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${Login-Url}    http://uitestingplayground.com/sampleapp
${Browser}      Firefox
${username}     username
${password}     pwd

*** Test Cases ***
Valid Login
    Open Browser To Login Page
    Type In Username    demo
    Type In Password    pwd
    Submit Credentials
    Welcome Page Should Be Open
    Close Browser


*** Keywords ***
Open Browser To Login Page    
    Open Browser   ${Login-Url}   ${Browser}
    Title Should Be   Sample App


Type In Username   
    [Arguments]    ${username}
    Input Text    name=UserName    ${username}    


Type In Password   
    [Arguments]    ${password}
    Input Text    name=Password    ${password} 


Submit Credentials    
    Click Button    id=login


Welcome Page Should Be Open    
    Title Should Be   Sample App

