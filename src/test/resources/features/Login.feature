@login
Feature: Eurotech Login Test



  @teacher
  Scenario: Login As Teacher
    Given The user is on the login page
    When  The user enters teacher credentials
    Then  The user should be able to login
    @student
  Scenario: Login As Student
    Given The user is on the login page
    When  The user enters student credentials
    Then  The user should be able to login
  @developer
  Scenario: Login As Developer
    Given The user is on the login page
    When The user enters developer credentials
    Then The user should be able to login











