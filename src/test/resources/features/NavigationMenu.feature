@report
Feature: Navigation Menu

  Scenario: Navigating Developers Menu
    Given The user is on the login page
    When The user enters teacher credentials
    Then The user should be able to see Welcome message
    And The user navigates the Developers Menu
    Then The user get the text Developers

  Scenario: Navigating All Posts Menu
    Given The user is on the login page
    When The user enters teacher credentials
    Then The user get the text of Welcome
    And The user click the All Post Menu
    Then The user get the text of Posts
  @db
   Scenario: Navigating Dashboard Menu
     Given The user is on the login page
     When The user enters teacher credentials
     Then The user should be able to see Welcome message
     And The user clicks the My Account Menu
     Then The user get the text of Dashboard

