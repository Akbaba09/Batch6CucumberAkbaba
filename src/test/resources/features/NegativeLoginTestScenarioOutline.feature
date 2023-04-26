Feature: Negative Login Test


  Scenario Outline: Negative Login Test Devex
    Given The user is on the login page
    When The user logs in using "<userType>" and "<password>"
    Then The warning message contains "<message>"
    Examples:
      | userType           | password          | message                                                                                  |
      | eurotech@gmail.com | 1                 | Please lengthen this text to 6 characters or more (you are currently using 1 character). |
      | eurotech@gmail.com | 126tfghhgsgxshbhz | Invalid Credentials!                                                                     |
      | eurotechgmail.com  | 1                 | Please include an '@' in the email address. 'eurotech' is missing an '@'.                |
      | eurotech           | 1                 | Please include an '@' in the email address. 'eurotech' is missing an '@'.                |

















#Feature: Login with using invalid user credentials, and use scenario Outline

#  @wip
#  Scenario Outline: Login as student with wrong parameters
#    Given The user is on the login page
#    When The user logs in using "<username>" and "<password>"
#    Then The user should not be able to login
#    Then Verify the error message contains "Invalid"
#    Examples:
#      | username           | password   |
#      | eurotech@gmail.com | Test12345  |
#      | eurotech@gmail.cm  | Test12345! |
#      | eurotech@gmail.com |            |
#
#  @wip
#  Scenario Outline: Login as an User with invalid parameters
#    Given The user is on the login page
#    When The user logs in using "<username>" and "<password>"
#    Then The user should not be able to login
#    Then Verify the error message contains "a valid email"
#    Examples:
#      | username       | password  |
#      | eurotech@gmail | Test12345 |