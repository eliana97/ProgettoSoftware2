Feature: delete an activity
  In order to delete some of my activities
  As a user
  I want to delete an activity

  Background:
    Given I have an account
    And I am logged in
    And there is an activity with description "Prova"
    And I am on "Activities" page

  @javascript
  Scenario: delete an activity
    When I click on "Destroy"
    And I confirm the popup
    Then I shouldn't see the activity in the list
