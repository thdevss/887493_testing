*** Settings ***
Library           Selenium2Library

*** Variables ***
${WEB_LINK}       http://angsila.cs.buu.ac.th/~57660132/887493/
${VALID_USERNAME}    devss
${VALID_PASSWORD}    isp221
${INVALID_USERNAME}    wrong

*** Testcases ***
Open Web and Click Login
    เปิดเว็บ
    คลิ้กลิ้งค์เข้าสู่ระบบ

no.1:no password field
    คลิ้กลิ้งค์เข้าสู่ระบบ
    Input Text    username    ${VALID_USERNAME}
    บันทึกข้อมูล
    Wait Until Page Contains    The Password field is required.

no.2:no account in db
    คลิ้กลิ้งค์เข้าสู่ระบบ
    Input Text    username    ${INVALID_USERNAME}
    Input Text    password    ${VALID_PASSWORD}
    บันทึกข้อมูล
    Wait Until Page Contains    Can't login

no.3:blank form
    คลิ้กลิ้งค์เข้าสู่ระบบ
    บันทึกข้อมูล
    Wait Until Page Contains    The Username field is required.
    Wait Until Page Contains    The Password field is required.

no.4:has account in db
    คลิ้กลิ้งค์เข้าสู่ระบบ
    Input Text    username    ${VALID_USERNAME}
    Input Text    password    ${VALID_PASSWORD}
    บันทึกข้อมูล
    Wait Until Page Contains    Login Successful


*** Keywords ***
เปิดเว็บ
    Open Browser    ${WEB_LINK}

คลิ้กลิ้งค์เข้าสู่ระบบ
    Click element    link=เข้าสู่ระบบ
    Sleep    1s

บันทึกข้อมูล
    Click button    Sign in

ล้างข้อมูล
    Reload Page
