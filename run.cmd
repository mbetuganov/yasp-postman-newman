@echo off
setlocal

set "RESULTS_DIR=Report\allure-results"
set "REPORT_DIR=Report\allure-report"

if not exist "%RESULTS_DIR%" mkdir "%RESULTS_DIR%"

echo [STEP 1] Main
call newman run "Testcase/Main.postman_collection.json" -e "Env/QA_Dev.postman_environment.json" -r cli,@felipecrs/allure --reporter-allure-export "%RESULTS_DIR%"

echo [STEP 2] Parametrized_Auth
call newman run "Testcase/Parametrized_Auth.postman_collection.json" -d "Data/auth_data.csv" -e "Env/QA_Dev.postman_environment.json" -r cli,@felipecrs/allure --reporter-allure-export "%RESULTS_DIR%"

echo [STEP 3] Parametrized_Booking_Create
call newman run "Testcase/Parametrized_Booking_Create.postman_collection.json" -d "Data/booking_create_data.csv" -e "Env/QA_Dev.postman_environment.json" -r cli,@felipecrs/allure --reporter-allure-export "%RESULTS_DIR%"

echo [STEP 4] Parametrized_Booking_Patch
call newman run "Testcase/Parametrized_Booking_Patch.postman_collection.json" -d "Data/booking_patch_data.csv" -e "Env/QA_Dev.postman_environment.json" -r cli,@felipecrs/allure --reporter-allure-export "%RESULTS_DIR%"

echo [STEP 5] Allure generate
call allure generate ./allure-results -o ./Report/allure-report

echo [STEP 6] Allure open
allure open ./Report/allure-report

endlocal