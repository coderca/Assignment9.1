*** Settings ***
Library   AppiumLibrary

*** Variables ***
&{PHONENO}            phno=7829927760
${ENGLISH-BUTTON}     //android.widget.Button[@resource-id='com.flipkart.android:id/locale_icon_layout' and @text="English"] 
${LOGIN-PHONENO}      id=com.flipkart.android:id/phone_input
${CLOSE-BUTTON}       id=com.flipkart.android:id/custom_back_icon
${MOBILE}             id=com.flipkart.android:id/tv_card_view_holder

*** Test Cases ***
testcase
    Open Application  http://localhost:4723/wd/hub   platformName=Android  deviceName=emulator-5554  appPackage=com.flipkart.android  appActivity=com.flipkart.android.SplashActivity  automation=Uiautomator2
    Wait Until Page Contains  Hindi  timeout=50s
    Swipe By Percent  50  80  50  20
    Wait Until Page Contains  English  timeout=10s
    Click Text  English
    Click Button  CONTINUE

    Wait Until Page Contains Element   ${LOGIN-PHONENO}   timeout=40s
    Click Element  ${CLOSE-BUTTON} 
    Wait Until Page Contains  Search for Products, Brands and More  timeout=20s
    Click Text  Search for Products, Brands and More
    Input Text   id=com.flipkart.android:id/search_autoCompleteTextView  Mobiles
    Wait Until Page Contains  mobiles   timeout=20s
    Click Text   mobiles
    Wait Until Page Contains  CONTINUE   timeout=20s
    Click Text  CONTINUE
    Wait Until Page Contains  ALLOW   timeout=20s
    Click Text  ALLOW
    Swipe By Percent  50  80  50  20
    Swipe By Percent  50  80  50  20
    Swipe By Percent  50  80  50  20
    Swipe By Percent  50  80  50  20
    Swipe By Percent  50  80  50  20
    Wait Until Page Contains  POCO C3 (Arctic Blue, 32 GB)   timeout=20s
    Click Text  POCO C3 (Arctic Blue, 32 GB)
    Wait Until Page Contains  ADD TO CART
    Click Text  ADD TO CART
    Wait Until Page Contains  GO TO CART
    Click Text  GO TO CART
    Wait Until Page Contains  Place Order
    

    

