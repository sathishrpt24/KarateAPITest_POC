@test2
Feature: Read data from table
  Background:
    Given url "https://reqres.in/"
   
    Scenario: Create a user using table data in karate framework
      Given path "/api/users"
      And header Content-Type = 'application/json'
      And table reqBody
      |fields|
      |{"name":"morpheus","job":"leader"}|
      And request reqBody[0]
      When method POST
      Then status 201
      And print response
      And print response.id