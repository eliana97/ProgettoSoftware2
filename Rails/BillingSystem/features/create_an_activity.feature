Feature: create an activity
  In order to keep track of activities
  As a user
  I want to create a new activity

  Background:
    Given I have an account
    And I am logged in
    And there is a customer called "UniTn"
    And I am on "Activities" page

  Scenario: create a valid activity
    When I click on "New Activity"
    And I fill in the activity form with valid data
    Then I should see the activity in the list

  Scenario: create a invalid activity
    When I click on "New Activity"
    And I fill in the form with an invalid description
    Then I should see a error message
