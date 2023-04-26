Feature: Login as different users using Scenario outline
@new
  Scenario Outline: Login as student with parameters
    Given The user is on the login page
    When  The user logs in using "<username>" and "<password>"
    Then The user should be able to login
    Examples:
      | username           | password   |
      | eurotech@gmail.com | Test12345! |
      | seyit@gmail.com    | Seyit!     |
      | akbaba@gmail.com   | Akbaba123! |
      | gulcan@gmail.com   | newjob2023 |
      | nhntsc@gmail.com   | N12345!    |

