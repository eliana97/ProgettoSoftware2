Feature: delete an activity
  In order to delete some of my activities
  As a user
  I want to delete an activity

  Scenario: delete an activity
    Given I am an user called "aa"
    When I click on "Delete Activity"
    Then I shouldn't see the activity in the list
