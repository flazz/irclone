Feature: connect
  As a user I'd like to sign in and out

  Scenario: sign in
    Given I am on the connect page
    And I fill in "nick" with "userperson"
    When I press "connect"
    Then I should be on the channels page
    And I should see "welcome userperson" within ".notice"

  Scenario: sign out
    Given I am connected as "userperson"
    When I press "disconnect"
    Then I should be on the connect page
    And I should see "goodbye userperson" within ".notice"

  Scenario Outline: sign in is required
    Given I am not signed in
    When I go to the <page> page
    Then I should be on the connect page
    And I should see "please connect first" within ".notice"

  Examples:
      | page        |
      | home page   |
      | channels    |
      | foo channel |
      | bar channel |
      | baz channel |
