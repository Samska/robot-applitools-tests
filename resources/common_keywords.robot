*** Keywords ***
Before Visual Tests
    Open Browser        ${BASE_URL}    ${HEADLESS} ${BROWSER}
    Eyes Open    ${TEST_NAME}    ${VIEWPORT_SIZE}    ${APP_NAME}    ${HOST_OS}    ${HOST_APP}    ${MATCH_LEVEL}    ${BASELINE_ENV_NAME}    ${BATCH_NAME}
After Visual Tests
    Close All Browsers
Visual Test Page
    [Arguments]    ${page}
    Go To    ${page}
    Eyes Check Window
    Eyes Close Async