Feature: create an activity
  In order to keep track of activities
  As a user
  I want to create a new activity

  Background:
    Given there is a customer called "UniTn"

  Scenario: create a valid activity
    Given I am an user called "aa"
    When I click on "New activity"
    And I fill in the form with valid data
    Then I should see the activity in the list

  Scenario: create a invalid activity
    Given I am an user called "aa"
    When I click on "New activity"
    And I fill in the form with an invalid customer
    Then I should see a error message
