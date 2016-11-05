*** Settings ***
Library           Selenium2Library

*** Variables ***
${WEB_LINK}       http://angsila.cs.buu.ac.th/~57660132/887493/
${VALID_FULLNAME}    ศานติกร อภัย
${VALID_QUALIFICATION}    ปริญญาตรี
${VALID_GRADUATION}    ม.บูรพา
${VALID_AVGGRADE}    3.99
${VALID_TELEPHONE}    082-299-9922
${VALID_PHOTOFILE}    ${CURDIR}/profile.jpg
${VALID_RESUMEFILE}    ${CURDIR}/resume.pdf

*** Testcases ***
no.1:กรอกเฉพาะชื่อสกุล
    Open Browser    ${WEB_LINK}
    เลือกใบสมัครงาน
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกรูป
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.127:กรอกทุกช่อง
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Select Radio Button    qualification    ม.3
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรอกใบสมัครเรียบร้อย

no.2:เลือกเฉพาะวุฒการศึกษา
    เลือกใบสมัครงาน
    Set Selenium Timeout    20
    Sleep    1s
    Select Radio Button    qualification    ม.3
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกรูป
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.3:กรอกเฉพาะสถานศึกษาที่จบ
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกรูป
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.4:กรอกเกรดเฉลี่ย
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกรูป
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.5:กรอกเบอร์โทรศัพท์
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=telephone    ${VALID_TELEPHONE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณาเลือกรูป
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.6:อัพโหลดรูป profile
    Set Selenium Timeout    20
    Sleep    1s
    Choose File    id=photo    ${VALID_PHOTOFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.7:อัพโหลดไฟล์ resume
    Set Selenium Timeout    20
    Sleep    1s
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกรูป

no.8:กรอกชื่อ-นามสกุลและวุฒิการศึกษา
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Select Radio Button    qualification    ม.3
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกรูป

no.9:กรอกวุฒิการษึกษาและสำเร็จการศึกษา
    Set Selenium Timeout    20
    Sleep    1s
    Select Radio Button    qualification    ม.3
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกรูป

no.10:กรอกเฉพาะสถานศึกษาที่จบและเกรดเฉลี่ย
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกรูป
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.11:กรอกเกรดเฉลี่ยและเบอร์โทรศัพท์
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณาเลือกรูป
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.12:กรอกเบอร์โทรศัพท์และรูป
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.13:อัพโหลดรูป profileและresume
    Set Selenium Timeout    20
    Sleep    1s
    Choose File    id=photo    ${VALID_PHOTOFILE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์

no.14:กรอกเฉพาะชื่อสกุลและresume
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกรูป

no.15:กรอกเฉพาะชื่อสกุลและวุฒิการศึกษาและสำเร็จการศึกษา
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Select Radio Button    qualification    ม.3
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกรูป
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.16:กรอกวุฒิการษึกษาและสำเร็จการศึกษาและเกรดเฉลี่ย
    Set Selenium Timeout    20
    Sleep    1s
    Select Radio Button    qualification    ม.3
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกรูป
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.17:กรอกเฉพาะสถานศึกษาที่จบและเกรดเฉลี่ยและเบอร์โทรศัพท์
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณาเลือกรูป
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.18:กรอกเกรดเฉลี่ยและเบอร์โทรศัพท์และรูป
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.19:กรอกเบอร์โทรศัพท์และรูปและresume
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง

no.20:กรอกชื่อสกุลและรูปและresume
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์

no.21:กรอกชื่อสกุลและวุฒิการศึกษาและresume
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Select Radio Button    qualification    ม.3
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกรูป

no.22:กรอกชื่อ-นามสกุลและวุฒิการศึกษาและสถานศึกษาและเกรดเฉลี่ย
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Select Radio Button    qualification    ม.3
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกรูป
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.23:กรอกวุฒิการษึกษาและสำเร็จการศึกษาและเกรดเฉลี่ยและเบอร์โทรศัพท์
    Set Selenium Timeout    20
    Sleep    1s
    Select Radio Button    qualification    ม.3
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณาเลือกรูป
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.24:กรอกสถานศึกษาที่จบและเกรดเฉลี่ยและเบอร์โทรศัพท์และรูป
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.25:กรอกเกรดเฉลี่ยและเบอร์โทรศัพท์และรูปและresume
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา

no.26:กรอกชื่อสกุลและเบอร์โทรศัพท์และรูปและresume
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง

no.27:กรอกชื่อสกุลและวุฒิการศึกษาและรูปและresume
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Select Radio Button    qualification    ม.3
    Choose File    id=photo    ${VALID_PHOTOFILE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์

no.28:กรอกชื่อสกุลและวุฒิการศึกษาและสำเร็จการศึกษาและresume
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Select Radio Button    qualification    ม.3
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกรูป

no.29:กรอกชื่อสกุลและวุฒิการศึกษาและสำเร็จการศึกษาและเกรดเฉลี่ยและเบอร์โทรศัพท์
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Select Radio Button    qualification    ม.3
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณาเลือกรูป
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.30:กรอกวุฒิการศึกษาและสำเร็จการศึกษาเและกรดเฉลี่ยและเบอร์โทรศัพท์และรูป
    Set Selenium Timeout    20
    Sleep    1s
    Select Radio Button    qualification    ม.3
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.31:สำเร็จการศึกษาและเกรดเฉลี่ยและเบอร์โทรศัพท์และ รูปหน้าตรงและresume
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา

no.32:กรอกชื่อนามสกุลและเกรดเฉลี่ยและเบอร์โทรศัพท์และรูปหน้าตรงและ resume
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา

no.33:กรอกชื่อนามสกุลและวุฒิการศึกษาและเบอร์โทรศัพท์และรูปหน้าตรงและresume
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Select Radio Button    qualification    ม.3
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง

no.34:กรอกชื่อนามสกุและวุฒิการศึกษาและสำเร็จการศึกษาและรูปหน้าตรงและresume
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Select Radio Button    qualification    ม.3
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์

no.35:กรอกชื่อนามสกุลและวุฒิการศึกษาและสำเร็จการศึกษาและเกรดเฉลี่ยและresume
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Select Radio Button    qualification    ม.3
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกรูป

no.36:กรอกชื่อนามสกุลและวุฒิการศึกษาและสำเร็จการศึกษาและเกรดเฉลี่ยและเบอร์โทรศัพท์และรูปหน้าตรง
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Select Radio Button    qualification    ม.3
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.37:กรอกวุฒิการศึกษาและสำเร็จการศึกษาและเกรดเฉลี่ยและเบอร์โทรศัพท์และรูปหน้าตรงและresume
    Set Selenium Timeout    20
    Sleep    1s
    Select Radio Button    qualification    ม.3
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล

no.38:กรอกชื่อนามสกุลและสำเร็จการศึกษาและเกรดเฉลี่ยและเบอร์โทรศัพท์และรูปหน้าตรงและresume
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา

no.39:กรอกชื่อนามสกุลและวุฒิการศึกษาและเกรดเฉลี่ยและเบอร์โทรศัพท์และรูปหน้าตรงและresume
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Select Radio Button    qualification    ม.3
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา

no.40:กรอกชื่อนามสกุลแลวุฒิการศึกษาและสำเร็จการศึกษาและเบอร์โทรศัพท์และรูปหน้าตรงและresume
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Select Radio Button    qualification    ม.3
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง

no.41:กรอกชื่อนามสกุลและวุฒิการศึกษาและสำเร็จการศึกษาและเกรดเฉลี่ยและรูปหน้าตรงและresume
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Select Radio Button    qualification    ม.3
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์

no.42:กรอกชื่อนามสกุลและวุฒิการศึกษาและสำเร็จการศึกษาและเกรดเฉลี่ยและเบอร์โทรศัพท์และresume
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Select Radio Button    qualification    ม.3
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณาเลือกรูป

no.43:กรอกชื่อนามสกุลและสำเร็จการศึกษา
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกรูป
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.44:กรอกชื่อนามสกุลและเกรดเฉลี่ย
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกรูป
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.45:กรอกชื่อนามสกุลและเบอร์โทรศัพท์
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณาเลือกรูป
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.46:กรอกชื่อนามสกุลและรูปหน้าตรง
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.47:กรอกวุฒิการศึกษาและเกรดเฉลี่ย
    Set Selenium Timeout    20
    Sleep    1s
    Select Radio Button    qualification    ม.3
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกรูป
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.48:กรอกุฒิการศึกษาและเบอร์โทรศัพท์
    Set Selenium Timeout    20
    Sleep    1s
    Select Radio Button    qualification    ม.3
    Input Text    id=telephone    ${VALID_TELEPHONE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณาเลือกรูป
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.49:กรอกุฒิการศึกษาและรูปหน้าตรง
    Set Selenium Timeout    20
    Sleep    1s
    Select Radio Button    qualification    ม.3
    Choose File    id=photo    ${VALID_PHOTOFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.50:กรอกวุฒิการศึกษาและresume
    Set Selenium Timeout    20
    Sleep    1s
    Select Radio Button    qualification    ม.3
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกรูป

no.51:กรอกสำเร็จการศึกษาและเบอร์โทรศัพท์
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณาเลือกรูป
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.52:กรอกสำเร็จการศึกษาและรูปหน้าตรง
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.53:กรอกสำเร็จการศึกษาและresume
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกรูป

no.54:กรอกเกรดเฉลี่ยและรูปหน้าตรง
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.55:กรอกเกรดเฉลี่ยและresume
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกรูป

no.56:กรอกเบอร์โทรศัพท์และresume
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณาเลือกรูป

no.57:กรอกชื่อนามสกุลและวุฒิการศึกษาและเกรดเฉลี่ย
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Select Radio Button    qualification    ม.3
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกรูป
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.58:กรอกชื่อนามสกุลและวุฒิการศึกษาและเบอร์โทรศัพท์
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Select Radio Button    qualification    ม.3
    Input Text    id=telephone    ${VALID_TELEPHONE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณาเลือกรูป
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.59:กรอกชื่อนามสกุลและวุฒิการศึกษาและรูปหน้าตรง
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Select Radio Button    qualification    ม.3
    Choose File    id=photo    ${VALID_PHOTOFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.60:กรอกชื่อนามสกุลและวุฒิการศึกษาและresume
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Select Radio Button    qualification    ม.3
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณาเลือกรูป

no.61:กรอกชื่อ-นามสกุลและสำเร็จการศึกษาและเกรดเฉลี่ย
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกรูป
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.62:กรอกชื่อ-นามสกุลและสำเร็จการศึกษาและเบอร์โทรศัพท์
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณาเลือกรูป
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.63:กรอกชื่อ-นามสกุลและสำเร็จการศึกษาและรูปหน้าตรง
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.64:กรอกชื่อ-นามสกุลและสำเร็จการศึกษาและresume
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกรูป

no.65:กรอกชื่อ-นามสกุลและเกรดเฉลี่ยและเบอร์โทรศัพท์
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณาเลือกรูป
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.66:กรอกชื่อ-นามสกุลและเกรดเฉลี่ยและresume
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกรูป

no.67:กรอกชื่อ-นามสกุลและเกรดเฉลี่ยและresume
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกรูป

no.68:กรอกชื่อ-นามสกุลและเบอร์โทรศัพท์และรูปหน้าตรง
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.69:กรอกชื่อ-นามสกุลและเบอร์โทรศัพท์และresume
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณาเลือกรูป

no.70:กรอกวุฒิการศึกษาและสำเร็จการศึกษาและเบอร์โทรศัพท์
    Set Selenium Timeout    20
    Sleep    1s
    Select Radio Button    qualification    ม.3
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณาเลือกรูป
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.71:กรอกวุฒิการศึกษาและสำเร็จการศึกษาและรูปหน้าตรง
    Set Selenium Timeout    20
    Sleep    1s
    Select Radio Button    qualification    ม.3
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.72:กรอกวุฒิการศึกษาและสำเร็จการศึกษาและresume
    Set Selenium Timeout    20
    Sleep    1s
    Select Radio Button    qualification    ม.3
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกรูป

no.73:กรอกวุฒิการศึกษาและเกรดเฉลี่ยและเบอร์โทรศัพท์
    Set Selenium Timeout    20
    Sleep    1s
    Select Radio Button    qualification    ม.3
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณาเลือกรูป
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.74:กรอกวุฒิการศึกษาและเกรดเฉลี่ยและรูปหน้าตรง
    Set Selenium Timeout    20
    Sleep    1s
    Select Radio Button    qualification    ม.3
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.75:กรอกวุฒิการศึกษาและเกรดเฉลี่ยและรูปหน้าตรง
    Set Selenium Timeout    20
    Sleep    1s
    Select Radio Button    qualification    ม.3
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.76:กรอกวุฒิการศึกษาและเบอร์โทรศัพท์และรูปหน้าตรง
    Set Selenium Timeout    20
    Sleep    1s
    Select Radio Button    qualification    ม.3
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.77:กรอกวุฒิการศึกษาและเบอร์โทรศัพท์และresume
    Set Selenium Timeout    20
    Sleep    1s
    Select Radio Button    qualification    ม.3
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณาเลือกรูป

no.78:กรอกุฒิการศึกษาและรูปหน้าตรงและresume
    Set Selenium Timeout    20
    Sleep    1s
    Select Radio Button    qualification    ม.3
    Choose File    id=photo    ${VALID_PHOTOFILE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์

no.79:กรอกสำเร็จการศึกษาและเกรดเฉลี่ยและรูปหน้าตรง
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.80:กรอกสำเร็จการศึกษาและเกรดเฉลี่ยและresume
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกรูป

no.81:กรอกสำเร็จการศึกษาและเบอร์โทรศัพท์และรูปหน้าตรง
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.82:กรอกสำเร็จการศึกษาและเบอร์โทรศัพท์และresume
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณาเลือกรูป

no.83:กรอกสำเร็จการศึกษาและรูปหน้าตรงและresume
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์

no.84:กรอกเกดรเฉลี่ยและเบอร์โทรศัพท์และresume
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณาเลือกรูป

no.85:กรอกเกดรเฉลี่ยและรูปหน้าตรงและresume
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์

no.86:กรอกชื่อ-นามสกุลและวุฒิการศึกษาและสำเร็จการศึกษาและเบอร์โทรศัพท์
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Select Radio Button    qualification    ม.3
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณาเลือกรูป
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.87:กรอกชื่อ-นามสกุลและวุฒิการศึกษาและสำเร็จการศึกษาและรูปหน้าตรง
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Select Radio Button    qualification    ม.3
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.88:กรอกชื่อ-นามสกุลและวุฒิการศึกษาและสำเร็จการศึกษาและresume
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Select Radio Button    qualification    ม.3
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกรูป

no.89:กรอกชื่อ-นามสกุลและวุฒิการศึกษาและและเกรดเฉลี่ยและเบอร์โทรศัพท์
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Select Radio Button    qualification    ม.3
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณาเลือกรูป
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.90:กรอกชื่อ-นามสกุลและวุฒิการศึกษาและและเกรดเฉลี่ยและรูปหน้าตรง
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Select Radio Button    qualification    ม.3
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.91:ชื่อ-นามสกุล : ศานติกร อภัย,วุฒิการศึกษา : ปริญญาตรี,สำเร็จการศึกษา : ม.บูรพา,เกรดเฉลี่ย : 3.99, ไฟล์ resume : resume.pdf
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Select Radio Button    qualification    ม.3
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกรูป

no.92:ชื่อ-นามสกุล : ศานติกร อภัย,วุฒิการศึกษา : ปริญญาตรี,สำเร็จการศึกษา : ม.บูรพา,เกรดเฉลี่ย : 3.99,เบอร์โทรศัพท์ : 082-299-9922
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณาเลือกรูป
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.93:ชื่อ-นามสกุล : ศานติกร อภัย,สำเร็จการศึกษา : ม.บูรพา,เกรดเฉลี่ย : 3.99,รูปหน้าตรง : /picture.jpg
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.94:ชื่อ-นามสกุล : ศานติกร อภัย,วุฒิการศึกษา : ปริญญาตรี,สำเร็จการศึกษา : ม.บูรพา,เกรดเฉลี่ย : 3.99, ไฟล์ resume : resume.pdf
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกรูป

no.95:ชื่อ-นามสกุล : ศานติกร อภัย,เกรดเฉลี่ย : 3.99,เบอร์โทรศัพท์ : 082-299-9922,รูปหน้าตรง : /picture.jpg
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.96:ชื่อ-นามสกุล : ศานติกร อภัย,เกรดเฉลี่ย : 3.99,เบอร์โทรศัพท์ : 082-299-9922, ไฟล์ resume : resume.pdf
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณาเลือกรูป

no.97:ชื่อ-นามสกุล : ศานติกร อภัย,เกรดเฉลี่ย : 3.99,รูปหน้าตรง : /picture.jpg :ไฟล์ resume : resume.pdf
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา

no.98:วุฒิการศึกษา : ปริญญาตรี,สำเร็จการศึกษา : ม.บูรพา,เกรดเฉลี่ย : 3.99,รูปหน้าตรง : /picture.jpg
    Set Selenium Timeout    20
    Sleep    1s
    Select Radio Button    qualification    ม.3
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.99:วุฒิการศึกษา : ปริญญาตรี,สำเร็จการศึกษา : ม.บูรพา,เกรดเฉลี่ย : 3.99,ไฟล์ resume : resume.pdf
    Set Selenium Timeout    20
    Sleep    1s
    Select Radio Button    qualification    ม.3
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณาเลือกรูป
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์

no.100:กรอกลือกวุฒิการศึกษา, กรอกเกรดให้ถูกต้อง, กรอกเบอร์โทรศัพท์, เลือกรูป
    Set Selenium Timeout    20
    Sleep    1s
    Select Radio Button    qualification    ม.3
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.101:วุฒิการศึกษา : ปริญญาตรี,เกรดเฉลี่ย : 3.99,เบอร์โทรศัพท์ : 082-299-9922,ไฟล์ resume : resume.pdf
    Set Selenium Timeout    20
    Sleep    1s
    Select Radio Button    qualification    ม.3
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.102:วุฒิการศึกษา : ปริญญาตรี,เบอร์โทรศัพท์ : 082-299-9922,รูปหน้าตรง : /picture.jpg,ไฟล์ resume : resume.pdf
    Set Selenium Timeout    20
    Sleep    1s
    Select Radio Button    qualification    ม.3
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณาเลือกรูป

no.103:สำเร็จการศึกษา : มหาวิทยาลัยบูรพา,เกรดเฉลี่ย : 3.99,เบอร์โทรศัพท์ : 082-299-9922,ไฟล์ resume : resume.pdf
    Set Selenium Timeout    20
    Sleep    1s
    Select Radio Button    qualification    ม.3
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง

no.104:ชื่อ-นามสกุล : ศานติกร อภัย,วุฒิการศึกษา : ปริญญาตรี,สำเร็จการศึกษา : มหาวิทยาลัยบูรพา,เกรดเฉลี่ย : 3.99,รูปหน้าตรง : /picture.jpg
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณาเลือกรูป

no.105:ชื่อ-นามสกุล : ศานติกร อภัย,วุฒิการศึกษา : ปริญญาตรี,สำเร็จการศึกษา : มหาวิทยาลัยบูรพา,เกรดเฉลี่ย : 3.99,ไฟล์ resume : resume.pdf
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Select Radio Button    qualification    ม.3
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.106:ชื่อ-นามสกุล : ศานติกร อภัย,วุฒิการศึกษา : ปริญญาตรี,สำเร็จการศึกษา : มหาวิทยาลัยบูรพา,เบอร์โทรศัพท์ : 082-299-9922,รูปหน้าตรง : /picture.jpg
    Set Selenium Timeout    20
    Sleep    1s
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Select Radio Button    qualification    ม.3
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกรูป

no.107:ชื่อ-นามสกุล : ศานติกร อภัย,วุฒิการศึกษา : ปริญญาตรี,สำเร็จการศึกษา : มหาวิทยาลัยบูรพา,เบอร์โทรศัพท์ : 082-299-9922,ไฟล์ resume : resume.pdf
    Set Selenium Timeout    20
    Sleep    1s
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Select Radio Button    qualification    ม.3
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.108:ชื่อ-นามสกุล : ศานติกร อภัย,วุฒิการศึกษา : ปริญญาตรี,เกรดเฉลี่ย : 3.99,เบอร์โทรศัพท์ : 082-299-9922,รูปหน้าตรง : /picture.jpg
    Set Selenium Timeout    20
    Sleep    1s
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Select Radio Button    qualification    ม.3
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณาเลือกรูป

no.109:ชื่อ-นามสกุล : ศานติกร อภัย,วุฒิการศึกษา : ปริญญาตรี,เกรดเฉลี่ย : 3.99,เบอร์โทรศัพท์ : 082-299-9922,ไฟล์ resume : resume.pdf
    Set Selenium Timeout    20
    Sleep    1s
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Select Radio Button    qualification    ม.3
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.110:ชื่อ-นามสกุล : ศานติกร อภัย,วุฒิการศึกษา : ปริญญาตรีเกรดเฉลี่ย : 3.99,รูปหน้าตรง : /picture.jpg,ไฟล์ resume : resume.pdf
    Set Selenium Timeout    20
    Sleep    1s
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Select Radio Button    qualification    ม.3
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณาเลือกรูป

no.111:ชื่อ-นามสกุล : ศานติกร อภัย,วุฒิการศึกษา : ,เบอร์โทรศัพท์ : 082-299-9922,รูปหน้าตรง : /picture.jpg,ไฟล์ resume : resume.pdf
    Set Selenium Timeout    20
    Sleep    1s
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Select Radio Button    qualification    ม.3
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์

no.112:ชื่อ-นามสกุล : ศานติกร อภัย,วุฒิการศึกษา : ปริญญาตรี,สำเร็จการศึกษา : มหาวิทยาลัยบูรพา,รูปหน้าตรง : /picture.jpg,ไฟล์ resume : resume.pdf
    Set Selenium Timeout    20
    Sleep    1s
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Select Radio Button    qualification    ม.3
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง

no.113:ชื่อ-นามสกุล : ศานติกร อภัย,สำเร็จการศึกษา : มหาวิทยาลัยบูรพา,เกรดเฉลี่ย : 3.99,เบอร์โทรศัพท์ : 082-299-9922,รูปหน้าตรง : /picture.jpg
    Set Selenium Timeout    20
    Sleep    1s
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Select Radio Button    qualification    ม.3
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์

no.114:ชื่อ-นามสกุล : ศานติกร อภัย,วุฒิการศึกษา : ปริญญาตรี,สำเร็จการศึกษา : มหาวิทยาลัยบูรพา,รูปหน้าตรง : /picture.jpg,ไฟล์ resume : resume.pdf
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.115:ชื่อ-นามสกุล : ศานติกร อภัย,เกรดเฉลี่ย : 3.99,เบอร์โทรศัพท์ : 082-299-9922,รูปหน้าตรง : /picture.jpg,ไฟล์ resume : resume.pdf
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณาเลือกรูป

no.116:no name, photo field
    Set Selenium Timeout    20
    Sleep    1s
    Select Radio Button    qualification    ม.3
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณาเลือกรูป

no.117:no name, q_from field
    Set Selenium Timeout    20
    Sleep    1s
    Select Radio Button    qualification    ม.3
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา

no.118:no gradu, photo field
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Select Radio Button    qualification    ม.3
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณาเลือกรูป

no.119:no gradu, telephone field
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Select Radio Button    qualification    ม.3
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์

no.120:ชื่อ-นามสกุล : ศานติกร อภัย,,สำเร็จการศึกษา : ม.บูรพา,เกรดเฉลี่ย : 3.99,เบอร์โทรศัพท์ : 082-299-9922,รูปหน้าตรง : /picture.jpg :
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

no.121:ชื่อ-นามสกุล : ศานติกร อภัย,วุฒิการศึกษา : ปริญญาตรี,สำเร็จการศึกษา : ม.บูรพา,เกรดเฉลี่ย : 3.99,เบอร์โทรศัพท์ : 082-299-9922,รูปหน้าตรง : /picture.jpg :ไฟล์ resume : resume.pdf
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณาเลือกรูป

no.122:no name, photo
    Set Selenium Timeout    20
    Sleep    1s
    Select Radio Button    qualification    ม.3
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณาเลือกรูป

no.123:ชื่อ-นามสกุล : ศานติกร อภัย,สำเร็จการศึกษา : ม.บูรพา,,เบอร์โทรศัพท์ : 082-299-9922,รูปหน้าตรง : /picture.jpg : ไฟล์ resume : resume.pdf
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง

no.124:วุฒิการศึกษา : ปริญญาตรี,สำเร็จการศึกษา : ม.บูรพา,เบอร์โทรศัพท์ : 082-299-9922,รูปหน้าตรง : /picture.jpg :ไฟล์ resume : resume.pdf
    Set Selenium Timeout    20
    Sleep    1s
    Select Radio Button    qualification    ม.3
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=telephone    ${VALID_TELEPHONE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง

no.125:ชื่อ-นามสกุล : ศานติกร อภัย,วุฒิการศึกษา : ปริญญาตรี,สำเร็จการศึกษา : ม.บูรพา,,รูปหน้าตรง : /picture.jpg:ไฟล์ resume : resume.pdf
    Set Selenium Timeout    20
    Sleep    1s
    Input Text    id=fullname    ${VALID_FULLNAME}
    Select Radio Button    qualification    ม.3
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์

no.126: ปริญญาตรี,สำเร็จการศึกษา : ม.บูรพา,เกรดเฉลี่ย : 3.99,เบอร์โทรศัพท์ : 082-299-9922 ไฟล์ resume : resume.pdf
    Set Selenium Timeout    20
    Sleep    1s
    Select Radio Button    qualification    ม.3
    Input Text    id=qualification_from    ${VALID_GRADUATION}
    Input Text    id=avg_grade    ${VALID_AVGGRADE}
    Choose File    id=photo    ${VALID_PHOTOFILE}
    Choose File    id=resume_file    ${VALID_RESUMEFILE}
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์

no.128:ไม่กรอกข้อมูลเลยซักช่อง
    Set Selenium Timeout    20
    Sleep    1s
    บันทึกข้อมูล
    Wait Until Page Contains    กรุณากรอกชื่อ - นามสกุล
    Wait Until Page Contains    กรุณาเลือกวุฒิการศึกษา
    Wait Until Page Contains    กรุณากรอกสถานศึกษาที่จบมา
    Wait Until Page Contains    กรุณากรอกเกรดให้ถูกต้อง
    Wait Until Page Contains    กรุณากรอกเบอร์โทรศัพท์
    Wait Until Page Contains    กรุณาเลือกรูป
    Wait Until Page Contains    กรุณาเลือกไฟล์ resume

*** Keywords ***
เปิดเว็บ
    Open Browser    ${WEB_LINK}

เลือกใบสมัครงาน
    Click element    link=งานล่าสุด
    Sleep    1s
    Click element    link=กรอกใบสมัคร
    Sleep    1s

บันทึกข้อมูล
    Click button    บันทึกข้อมูล
