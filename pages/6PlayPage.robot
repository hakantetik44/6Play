*** Settings ***
Library     AppiumLibrary
Variables  ../locators/Locators.py
Variables  ../keywords/Data.py

*** Variables ***
${APP_PATH}             apps/6play.apk
${PLATFORM_NAME}        Android
${DEVICE_NAME}          Samsung
${AUTOMATION_NAME}      Uiautomator2
${APPIUM_SERVER}        http://localhost:4723
${PLATFORM_VERSION}     10.0




*** Keywords ***
Accéder à l'application 6Play
    Open Application    ${APPIUM_SERVER}   platformName=${PLATFORM_NAME}   deviceName=${DEVICE_NAME}    app=${APP_PATH}   automationName=${AUTOMATION_NAME}  platformVersion=${PLATFORM_VERSION}
    Click Element     ${PlayLocaters.btnContinuerEtAccepter}

Vérifier la navigation vers la page d'accueil de l'application A6
     Element Should Be Visible         ${PlayLocaters.logo6PLay}
  









