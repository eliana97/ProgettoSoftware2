Feature: create an activity
  In order to keep track of activities
  As a user
  I want to create a new activity

  Background:
    Given I am an user called "aa.aa@aa.it" with password "aa"
    Given there is a customer called "UniTn"
    And I am logged in
    And I click on "Activities"

  Scenario: create a valid activity
    When I click on "New activity"
    And I fill in the form with valid data
    Then I should see the activity in the list

  Scenario: create a invalid activity
    Given I am an user called "aa.aa@aa.it" with password "aa"
    When I click on "New activity"
    And I fill in the form with an invalid customer
    Then I should see a error message
