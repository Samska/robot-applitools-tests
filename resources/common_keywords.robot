*** Settings ***

Resource         ../resources/common_settings.robot
Library          ../resources/common_variables.robot

*** Keywords ***
Before Visual Tests
    Open Browser        ${BASE_URL}    ${HEADLESS} ${BROWSER}
    Eyes Open    ${TEST_NAME}    ${VIEWPORT_SIZE}    ${APP_NAME}    ${HOST_OS}    ${HOST_APP}    ${MATCH_LEVEL}    ${BASELINE_ENV_NAME}    ${BATCH_NAME}
After Visual Tests
    Eyes Close Async
    Close All Browsers
Visual Test Page
    [Arguments]    ${page_name}    ${page_url}
    Go To    ${page_url}
    Eyes Check Window    ${page_name}    Fully