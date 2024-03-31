*** Settings ***
Library      OperatingSystem
Resource    ../pages/6PlayPage.robot

*** Variables ***
# Gerekirse değişkenleriniz buraya tanımlanabilir.

*** Test Cases ***
Vérifier la navigation vers la page d'accueil de l'application A6
    Accéder à l'application 6Play
    ${is_visible}=    Element Should Be Visible    ${PlayLocaters.logo6Play}
    Should Be True    ${is_visible}