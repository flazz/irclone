Feature: join a channel

  Background:
    Given I am connected as "neo"
    And there is a recent channel named "realworld"

  Scenario: an arbitrary channel
    Given I am on the channels page
    And I fill in "channel" with "matrix"
    When I press "join"
    Then I should be on the matrix channel page

  Scenario: a recently visited channel
    Given I am on the channels page
    When I follow "realworld"
    Then I should be on the realworld channel page
