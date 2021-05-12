Feature: post api Testing - karate Framework
  Background:
    Given url "https://reqres.in/"

    * def body = read('../resources/createUser.json')

    Scenario:
      Given path 'api/users'
      And header Content-Type = 'application/json'
      And request body
      When method POST
      Then status 201
      And print response