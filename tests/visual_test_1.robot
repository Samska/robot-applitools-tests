*** Settings ***
Documentation        Test Template at Suite Level

Resource             ../resources/common_keywords.robot
Resource             ../resources/common_settings.robot
Resource             ../resources/common_variables.robot

Test Setup           Before Visual Tests
Test Teardown        After Visual Tests
Test Template        Visual Test Page

*** Variables ***
${BATCH_NAME}=      TEST_TEMPLATE_SUITE_LEVEL_${APPEND_BATCH_NAME}

*** Test Cases ***
Why Applitools Page        Why Applitools Page     ${BASE_URL}/why-applitools/
Eyes Page                  Eyes Page               ${BASE_URL}/platform/eyes/