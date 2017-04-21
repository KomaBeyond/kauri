*** Settings ***
Library           OperatingSystem
Library           Selenium2Library
Library           RequestsLibrary

*** Test Cases ***
Get help list
    run    curl -X GET --header 'Accept: application/json' --header 'api-version: 1.0' --header 'Authorization: Basic YWRtOmVzZWF0bW9iMjAxNg==' 'http://112.124.106.226:86/api/config/helptopics'> ../output/get-help-list.txt
    ${res}=    Run And Return Rc    diff ../expect/get-help-list.txt ../outpur/get-help-list.txt
    LOG    ${res}
    Should Be Equal As Integers    ${res}    0
