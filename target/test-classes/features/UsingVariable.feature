Feature: karate Framework testing - Understanding variables

  Background:
    Given url "https://reqres.in/"

  Scenario:
    * def pageNumber = '2'
    Given path "api/users?page="+pageNumber
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And print response
    And match response.data[0].last_name == "Lawson"

  Scenario:
    * def pageNumber = '2'
    * def last_name = "Weaver"
    * def email = "janet.weaver@reqres.in"
    Given path "api/users/"+pageNumber
    And header Content-Type = 'application/json; charset=utf-8'
    When method GET
    Then status 200
    And print response
    And match response.data.last_name == last_name
    And match response.data.email contains 'janet.weaver'