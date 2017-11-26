Feature: delete an activity
  In order to delete some of my activities
  As a user
  I want to delete an activity

  Scenario: delete an activity
    Given I am an user
    When I click on delete activity
    Then I should see a message of deletion and no more the activity in
    the list
