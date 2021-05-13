@test1
Feature: Read the Env variable data
  Scenario: Read the data of env variable
    Given url host
    And params {"username":#(user),"password":#(pass)}
    When method get
    Then print response