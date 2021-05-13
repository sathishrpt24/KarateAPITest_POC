Feature: Karate Framework - Put method and Chaining the API requests
  Background:
    Given url "https://reqres.in/"
    * def getUserId = call read('PostUrl.feature')
    * def id = getUserId.response.id

  @test3
    Scenario: Create a user and Update the same - Chaining of api requests
      Given path "api/users/"+id
      And header Content-Type = 'application/json'
      And table reqBody
      |fields|
      |{"name":"morpheus","job":"karate-Learner"}|
      And request reqBody[0]
      Then method PUT
      And status 200
      And print response
      And match response.fields.job contains 'karate-Learner'
      And match response.fields.job == "karate-Learner"
