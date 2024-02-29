*** Settings ***
Resource             ../resources/common_keywords.robot
Resource             ../resources/common_settings.robot
Resource             ../resources/common_variables.robot
Test Setup           Before Visual Tests
Test Teardown        After Visual Tests
Test Template        Visual Test Page

*** Test Cases ***
Why Applitools Page        ${BASE_URL}/why-applitools/