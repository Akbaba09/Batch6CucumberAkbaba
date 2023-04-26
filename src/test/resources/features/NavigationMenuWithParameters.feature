Feature: Navigate Menu with parameters

  Background:
    Given The user is on the login page
    When The user logs in using "eurotech@gmail.com" and "Test12345!"
    Then The welcome message contains "Teacher"

  @wip
  Scenario: Navigate Developer Menu
  # Given The user is on the login page
  # When The user logs in using "eurotech@gmail.com" and "Test12345!"
  #  Then The welcome message contains "Teacher"
    And The user navigates to "Developers" Menu
    Then The user should be able to see header as "Filter Profiles by Skill or by Location"


  Scenario: Navigates Posts Menu
   # Given The user is on the login page
   # When  The user logs in using "eurotech@gmail.com" and "Test12345!"
   # Then  The welcome message contains "Teacher"
    And   The user navigates to "All Posts" Menu
    Then  The user should be able to see header as "Posts"


  Scenario: Navigates My Account Menu
   # Given The user is on the login page
   # When  The user logs in using "eurotech@gmail.com" and "Test12345!"
   # Then  The welcome message contains "Teacher"
    And   The user navigates to "My Account" Menu
    Then  The user should be able to see header as "Dashboard"


  Scenario Outline: Navigates manu options
    And The user navigates the "<MenuName>" Menu
    Then The user should be able to see header as "<Headers>"
    Examples:
      | MenuName   | Headers                                  |
      | Developers | Filter Profiles by Skills or by Location |
      | All Posts  | Posts                                    |
      | My Account | Dashboard                                |



