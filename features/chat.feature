Feature: chat in a channel

  Background:
    Given I am connected as "neo"
    Given I am on the channels page
    Given I fill in "channel_name" with "matrix"
    Given I press "join"
    Given I should be on the matrix channel page

  Scenario: chat alone in a channel
    Given I fill in "message" with "hello there!"
    When I press "send"
    Then I should see "neo: hello there!" within "#log"

  Scenario: chat with others in a channel
    Given some user "leo" says "hi there neo!" in "matrix"
    And I fill in "message" with "hiya leo"
    And I press "send"
    And some user "leo" says "till next time" in "matrix"
    When I wait 1 second
    Then I should see "leo: hi there neo!" within "#log"
    And I should see "neo: hiya leo" within "#log"
    And I should see "leo: till next time" within "#log"
