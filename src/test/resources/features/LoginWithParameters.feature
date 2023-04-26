@smoke
Feature: Login as different users
  Scenario: Login as student with parameters
    Given The user is on the login page
    When  The user logs in using "eurotech@gmail.com" and "Test12345!"
    Then The user should be able to login
    Then The welcome message contains "Teacher"


  Scenario: Login as student with parameters
    Given The user is on the login page
    When  The user logs in using "akbaba@gmail.com" and "Akbaba123!"
    Then The user should be able to login
    Then The welcome message contains "Coskun"


  Scenario: Login as student with parameters
    Given The user is on the login page
    When  The user logs in using "gulcan@gmail.com" and "newjob2023"
    Then The user should be able to login
    Then The welcome message contains "Gülcan"


  Scenario: Login as student with parameters
    Given The user is on the login page
    When  The user logs in using "seyit@gmail.com" and "Seyit!"
    Then The user should be able to login
    Then The welcome message contains "Seyit"