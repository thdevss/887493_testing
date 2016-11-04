*** Settings ***
Library           Selenium2Library

*** Variables ***
${WEB_LINK}       http://angsila.cs.buu.ac.th/~57660132/887493/
${VALID_USERNAME}    mylogin5
${VALID_PASSWORD}    123132123
${VALID_EMAIL}    mymail5@buu.ac.th
${VALID_USERNAME_II}    mulogin
${INVALID_EMAIL}    mymail.buu.ac.th

*** Testcases ***
Open Web and Click Login
    เปิดเว็บ
    คลิ้กลิ้งค์เข้าสู่ระบบ
    คลิ้กลิ้งค์ลงทะเบียน

no.1:reg successful
    Input Text    username    ${VALID_USERNAME}
    Input Text    password    ${VALID_PASSWORD}
    Input Text    email    ${VALID_EMAIL}
    บันทึกข้อมูล
    Wait Until Page Contains    สมัครสมาชิกสำเร็จ

no.2:no email field
    ล้างข้อมูล
    Input Text    username    ${VALID_USERNAME}
    Input Text    password    ${VALID_PASSWORD}
    Input Text    email    ${EMPTY}
    บันทึกข้อมูล
    Wait Until Page Contains    The Email field is required.

no.3:no password field
    ล้างข้อมูล
    Input Text    username    ${VALID_USERNAME}
    Input Text    password    ${EMPTY}
    Input Text    email    ${VALID_EMAIL}
    บันทึกข้อมูล
    Wait Until Page Contains    The Password field is required.

no.4:no username field
    ล้างข้อมูล
    Input Text    username    ${EMPTY}
    Input Text    password    ${VALID_PASSWORD}
    Input Text    email    ${VALID_EMAIL}
    บันทึกข้อมูล
    Wait Until Page Contains    The Username field is required.

no.5:username field only
    ล้างข้อมูล
    Input Text    username    ${VALID_USERNAME}
    Input Text    password    ${EMPTY}
    Input Text    email    ${EMPTY}
    บันทึกข้อมูล
    Wait Until Page Contains    The Password field is required.
    Wait Until Page Contains    The Email field is required.

no.6:password field only
    ล้างข้อมูล
    Input Text    username    ${EMPTY}
    Input Text    password    ${VALID_PASSWORD}
    Input Text    email    ${EMPTY}
    บันทึกข้อมูล
    Wait Until Page Contains    The Username field is required.
    Wait Until Page Contains    The Email field is required.

no.7:email field only
    ล้างข้อมูล
    Input Text    username    ${EMPTY}
    Input Text    password    ${EMPTY}
    Input Text    email    ${VALID_EMAIL}
    บันทึกข้อมูล
    Wait Until Page Contains    The Username field is required.
    Wait Until Page Contains    The Password field is required.

no.8:all no field
    ล้างข้อมูล
    Input Text    username    ${EMPTY}
    Input Text    password    ${EMPTY}
    Input Text    email    ${EMPTY}
    บันทึกข้อมูล
    Wait Until Page Contains    The Username field is required.
    Wait Until Page Contains    The Password field is required.
    Wait Until Page Contains    The Email field is required.

no.9:all no field
    ล้างข้อมูล
    Input Text    username    ${EMPTY}
    Input Text    password    ${EMPTY}
    Input Text    email    ${INVALID_EMAIL}
    บันทึกข้อมูล
    Wait Until Page Contains    The Username field is required.
    Wait Until Page Contains    The Password field is required.
    Wait Until Page Contains    The Email field must contain a valid email address.

no.10:invalid email
    ล้างข้อมูล
    Input Text    username    ${VALID_USERNAME_II}
    Input Text    password    ${VALID_PASSWORD}
    Input Text    email    ${INVALID_EMAIL}
    บันทึกข้อมูล
    Wait Until Page Contains    The Email field must contain a valid email address.

no.11:no username field, invalid email
    ล้างข้อมูล
    Input Text    username    ${EMPTY}
    Input Text    password    ${VALID_PASSWORD}
    Input Text    email    ${INVALID_EMAIL}
    บันทึกข้อมูล
    Wait Until Page Contains    The Username field is required.
    Wait Until Page Contains    The Email field must contain a valid email address.

no.12:no password field, invalid email
    ล้างข้อมูล
    Input Text    username    ${VALID_USERNAME}
    Input Text    password    ${EMPTY}
    Input Text    email    ${INVALID_EMAIL}
    บันทึกข้อมูล
    Wait Until Page Contains    The Password field is required.
    Wait Until Page Contains    The Email field must contain a valid email address.

no.13:dup email
    ล้างข้อมูล
    Input Text    username    ${VALID_USERNAME}
    Input Text    password    ${VALID_PASSWORD}
    Input Text    email    ${VALID_EMAIL}
    บันทึกข้อมูล
    Wait Until Page Contains    The Email field must contain a unique value.

no.14:no username field, dup email
    ล้างข้อมูล
    Input Text    username    ${EMPTY}
    Input Text    password    ${VALID_PASSWORD}
    Input Text    email    ${VALID_EMAIL}
    บันทึกข้อมูล
    Wait Until Page Contains    The Username field is required.
    Wait Until Page Contains    The Email field must contain a unique value.

no.15:no password field, dup email
    ล้างข้อมูล
    Input Text    username    ${VALID_USERNAME_II}
    Input Text    password    ${EMPTY}
    Input Text    email    ${VALID_EMAIL}
    บันทึกข้อมูล
    Wait Until Page Contains    The Password field is required.
    Wait Until Page Contains    The Email field must contain a unique value.

no.16:username-password field, dup email
    ล้างข้อมูล
    Input Text    username    ${VALID_USERNAME_II}
    Input Text    password    ${VALID_PASSWORD}
    Input Text    email    ${VALID_EMAIL}
    บันทึกข้อมูล
    Wait Until Page Contains    The Email field must contain a unique value.

no.17:dup username
    ล้างข้อมูล
    Input Text    username    ${VALID_USERNAME}
    Input Text    password    ${EMPTY}
    Input Text    email    ${EMPTY}
    บันทึกข้อมูล
    Wait Until Page Contains    The Username field must contain a unique value.
    Wait Until Page Contains    The Password field is required.
    Wait Until Page Contains    The Email field is required.

no.18:dup username, email no password field
    ล้างข้อมูล
    Input Text    username    ${VALID_USERNAME}
    Input Text    password    ${EMPTY}
    Input Text    email    ${VALID_EMAIL}
    บันทึกข้อมูล
    Wait Until Page Contains    The Username field must contain a unique value.
    Wait Until Page Contains    The Password field is required.
    Wait Until Page Contains    The Email field must contain a unique value.

no.19:dup username, email
    ล้างข้อมูล
    Input Text    username    ${VALID_USERNAME}
    Input Text    password    ${VALID_PASSWORD}
    Input Text    email    ${VALID_EMAIL}
    บันทึกข้อมูล
    Wait Until Page Contains    The Username field must contain a unique value.
    Wait Until Page Contains    The Email field must contain a unique value.

no.20:dup username, email invalid
    ล้างข้อมูล
    Input Text    username    ${VALID_USERNAME}
    Input Text    password    ${EMPTY}
    Input Text    email    ${INVALID_EMAIL}
    บันทึกข้อมูล
    Wait Until Page Contains    The Username field must contain a unique value.
    Wait Until Page Contains    The Password field is required.
    Wait Until Page Contains    The Email field must contain a valid email address.

no.21:dup username, no email-password field
    ล้างข้อมูล
    Input Text    username    ${VALID_USERNAME}
    Input Text    password    ${EMPTY}
    Input Text    email    ${EMPTY}
    บันทึกข้อมูล
    Wait Until Page Contains    The Username field must contain a unique value.
    Wait Until Page Contains    The Password field is required.
    Wait Until Page Contains    The Email field is required.

no.22:dup username, email-password field
    ล้างข้อมูล
    Input Text    username    ${VALID_USERNAME}
    Input Text    password    ${VALID_PASSWORD}
    Input Text    email    ${VALID_EMAIL}
    บันทึกข้อมูล
    Wait Until Page Contains    The Username field must contain a unique value.

no.23:dup username, no password field
    ล้างข้อมูล
    Input Text    username    ${VALID_USERNAME}
    Input Text    password    ${EMPTY}
    Input Text    email    ${VALID_EMAIL}
    บันทึกข้อมูล
    Wait Until Page Contains    The Username field must contain a unique value.
    Wait Until Page Contains    The Password field is required.

no.24:dup username, no email field
    ล้างข้อมูล
    Input Text    username    ${VALID_USERNAME}
    Input Text    password    ${VALID_PASSWORD}
    Input Text    email    ${EMPTY}
    บันทึกข้อมูล
    Wait Until Page Contains    The Username field must contain a unique value.
    Wait Until Page Contains    The Email field is required.

*** Keywords ***
เปิดเว็บ
    Open Browser    ${WEB_LINK}

คลิ้กลิ้งค์เข้าสู่ระบบ
    Click element    link=เข้าสู่ระบบ
    Sleep    1s

คลิ้กลิ้งค์ลงทะเบียน
    Click element    link=Create an account
    Sleep    1s

บันทึกข้อมูล
    Click button    Create a account

ล้างข้อมูล
    Click element    link=Login
    Sleep    1s
    Click element    link=Create an account
    Sleep    1s
