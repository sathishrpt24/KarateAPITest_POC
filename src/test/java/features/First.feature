Feature: This is Karate POC demo project- Created for learning purpose

  Background:
    Given url "https://reqres.in/"

  Scenario:
    Given path "api/users?page=2"
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And print response
    And match response.data[0].last_name == "Lawson"
#      And match header content-type contains 'application/json'
#      And def response = karate.lowerCase(response)
#      And def temp = response['content-type'][0]
#      And match temp contains 'application/json'
  Scenario:
    Given path "api/users?page=3"
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And print response