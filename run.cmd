newman run Testcase/Main.postman_collection.json -e Env/QA_Dev.postman_environment.json -r cli,@felipecrs/allure --reporter-allure-export Report/allure-results
newman run Testcase/Parametrized_Auth.postman_collection.json -d Data/auth_data.csv -e Env/QA_Dev.postman_environment.json -r cli,@felipecrs/allure --reporter-allure-export Report/allure-results
newman run Testcase/Parametrized_Booking_Create.postman_collection.json -d Data/booking_create_data.csv -e Env/QA_Dev.postman_environment.json -r cli,@felipecrs/allure --reporter-allure-export Report/allure-results
newman run Testcase/Parametrized_Booking_Patch.postman_collection.json -d Data/booking_patch_data.csv -e Env/QA_Dev.postman_environment.json -r cli,@felipecrs/allure --reporter-allure-export Report/allure-results
allure generate ./allure-results -o ./Report/allure-report
allure open ./Report/allure-report