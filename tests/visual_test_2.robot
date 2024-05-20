*** Settings ***
Documentation        Test Template at Test Case Level

Resource             ../resources/common_keywords.robot
Resource             ../resources/common_settings.robot
Resource             ../resources/common_variables.robot

Test Setup           Before Visual Tests
Test Teardown        After Visual Tests

*** Variables ***
${BATCH_NAME}=      TEST_TEMPLATE_TEST_LEVEL_${APPEND_BATCH_NAME}

*** Test Cases ***
Autonomoues Page
    [Template]     Visual Test Page
    Autonomous Page        ${BASE_URL}/platform/autonomous/
    Solutions Page         ${BASE_URL}/solutions/developers/