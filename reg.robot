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
    คลิ้กลิ้งค์ลงทะเบียน

no.1:กรอกเฉพาะชื่อสกุล
    ล้างข้อมูล
    Input Text    id=fullname    ${VALID_FULLNAME}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา 
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกรูป
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.2:เลือกเฉพาะวุฒการศึกษา
    ล้างข้อมูล
    Select Radio Button    qualification    ม.3
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล 
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกรูป
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.3:กรอกเฉพาะสถานศึกษาที่จบ
    ล้างข้อมูล
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล 
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกรูป
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.4:กรอกเกรดเฉลี่ย
    ล้างข้อมูล
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล 
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกรูป
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume


no.5:กรอกเบอร์โทรศัพท์
    ล้างข้อมูล
    Input Text    id=telephone    ${VALID_TELEPHONE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล 
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณาเลือกรูป
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.6:อัพโหลดรูป profile
    ล้างข้อมูล
    Choose File    id=photo    ${VALID_PHOTOFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล 
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.7:อัพโหลดไฟล์ resume
    ล้างข้อมูล
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล 
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกรูป


no.127:ไม่กรอกข้อมูลเลยซักช่อง
    ล้างข้อมูล
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล 
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกรูป
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.128:ไม่กรอกข้อมูลเลยซักช่อง
    ล้างข้อมูล
    Input Text    id=fullname    ${VALID_FULLNAME}
    Select Radio Button    qualification    ม.3
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Input Text    id=telephone    ${VALID_TELEPHONE}    
    Choose File    id=photo    ${VALID_PHOTOFILE}    
    Choose File    id=resume_file    ${VALID_RESUMEFILE}    
    บันทึกข้อมูล
    Wait Until Page Contains    กรอกใบสมัครเรียบร้อย



*** Keywords ***
เปิดเว็บ
    Open Browser    ${WEB_LINK}

คลิ้กลิ้งค์เข้าสู่ระบบ
    Click element    link=เข้าสู่ระบบ
    Sleep    3s


คลิ้กลิ้งค์ลงทะเบียน
    Click element    link=Create an account
    Sleep    3s    

บันทึกข้อมูล
    Click element    id=sendData

ล้างข้อมูล
    Reload Page
