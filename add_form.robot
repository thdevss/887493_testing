*** Settings ***
Library           Selenium2Library

*** Variables ***
${WEB_LINK}       http://angsila.cs.buu.ac.th/~57660132/887493/
${VALID_USERNAME}    mylogin
${VALID_PASSWORD}    123132123
${VALID_COMPANY}    บูรพา
${VALID_POSITION}    Programmer
${VALID_DESCRIPTION}    เขียนโปรแกรม
${VALID_LOCATION}    ชลบุรี

*** Testcases ***
Open Web and Click Login
    เปิดเว็บ
    คลิ้กลิ้งค์เข้าสู่ระบบ
    Input Text    username    ${VALID_USERNAME}
    Input Text    password    ${VALID_PASSWORD}
    Click button    Sign in
    Wait Until Page Contains    Login Successful
    Sleep    8s
    CLick element    id=addjob

no.1:save successful
    ล้างข้อมูล
    Input Text    company    ${VALID_COMPANY}
    Input Text    position    ${VALID_POSITION}
    Input Text    job_description    ${VALID_DESCRIPTION}
    Input Text    location    ${VALID_LOCATION}
    บันทึกข้อมูล
    Wait Until Page Contains    เพิ่มใบสมัครงานสำเร็จ

no.2:no position field
    ล้างข้อมูล
    Input Text    company    ${VALID_COMPANY}
    Input Text    job_description    ${VALID_DESCRIPTION}
    Input Text    location    ${VALID_LOCATION}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกตำแหน่งงาน

no.3:no job_description field
    ล้างข้อมูล
    Input Text    company    ${VALID_COMPANY}
    Input Text    position    ${VALID_POSITION}
    Input Text    location    ${VALID_LOCATION}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกรายละเอียดงาน

no.4:no location field
    ล้างข้อมูล
    Input Text    company    ${VALID_COMPANY}
    Input Text    position    ${VALID_POSITION}
    Input Text    job_description    ${VALID_DESCRIPTION}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกเขตพื้นที่ของงาน

no.5:no location-position field
    ล้างข้อมูล
    Input Text    company    ${VALID_COMPANY}
    Input Text    job_description    ${VALID_DESCRIPTION}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกเขตพื้นที่ของงาน
    Wait Until Page Contains    กรุณากรอกตำแหน่งงาน

no.6:no description-position field
    ล้างข้อมูล
    Input Text    company    ${VALID_COMPANY}
    Input Text    location    ${VALID_LOCATION}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกรายละเอียดงาน
    Wait Until Page Contains    กรุณากรอกตำแหน่งงาน

no.7:no description-location field
    ล้างข้อมูล
    Input Text    company    ${VALID_COMPANY}
    Input Text    position    ${VALID_POSITION}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกรายละเอียดงาน
    Wait Until Page Contains    กรุณากรอกเขตพื้นที่ของงาน

no.8:no company-location field
    ล้างข้อมูล
    Input Text    job_description    ${VALID_DESCRIPTION}
    Input Text    position    ${VALID_POSITION}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกบริษัท/องค์กร
    Wait Until Page Contains    กรุณากรอกเขตพื้นที่ของงาน

no.9:location field only
    ล้างข้อมูล
    Input Text    location    ${VALID_LOCATION}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกบริษัท/องค์กร
    Wait Until Page Contains    กรุณากรอกรายละเอียดงาน
    Wait Until Page Contains    กรุณากรอกตำแหน่งงาน

no.10:job_description field only
    ล้างข้อมูล
    Input Text    job_description    ${VALID_DESCRIPTION}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกบริษัท/องค์กร
    Wait Until Page Contains    กรุณากรอกเขตพื้นที่ของงาน
    Wait Until Page Contains    กรุณากรอกตำแหน่งงาน

no.11:position field only
    ล้างข้อมูล
    Input Text    position    ${VALID_POSITION}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกบริษัท/องค์กร
    Wait Until Page Contains    กรุณากรอกเขตพื้นที่ของงาน
    Wait Until Page Contains    กรุณากรอกรายละเอียดงาน

no.12:company field only
    ล้างข้อมูล
    Input Text    company    ${VALID_COMPANY}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกตำแหน่งงาน
    Wait Until Page Contains    กรุณากรอกเขตพื้นที่ของงาน
    Wait Until Page Contains    กรุณากรอกรายละเอียดงาน

no.13:no company field
    ล้างข้อมูล
    Input Text    position    ${VALID_POSITION}
    Input Text    job_description    ${VALID_DESCRIPTION}
    Input Text    location    ${VALID_LOCATION}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกบริษัท/องค์กร

no14:no location-position field
    ล้างข้อมูล
    Input Text    company    ${VALID_COMPANY}
    Input Text    job_description    ${VALID_DESCRIPTION}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกตำแหน่งงาน
    Wait Until Page Contains    กรุณากรอกเขตพื้นที่ของงาน

no15:no location-position field
    ล้างข้อมูล
    Input Text    position    ${VALID_POSITION}
    Input Text    location    ${VALID_LOCATION}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกบริษัท/องค์กร
    Wait Until Page Contains    กรุณากรอกรายละเอียดงาน

no16:all no field
    ล้างข้อมูล
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกบริษัท/องค์กร
    Wait Until Page Contains    กรุณากรอกตำแหน่งงาน
    Wait Until Page Contains    กรุณากรอกเขตพื้นที่ของงาน
    Wait Until Page Contains    กรุณากรอกรายละเอียดงาน

*** Keywords ***
เปิดเว็บ
    Open Browser    ${WEB_LINK}

คลิ้กลิ้งค์เข้าสู่ระบบ
    Click element    link=เข้าสู่ระบบ
    Sleep    1s

บันทึกข้อมูล
    Click button    บันทึกข้อมูล

ล้างข้อมูล
    CLick element    link=เพิ่มประกาศรับสมัครงาน
    Sleep    1s
