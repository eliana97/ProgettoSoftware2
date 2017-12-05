Feature: edit an activity
  In order to maintain my list of activities up to date
  As a user
  I want to edit an activity

  Scenario: change the description of an activity
    Given there is an activity
    And I am viewing the details of an activity
    When I click on "Edit"
    And I change description to "Prova2"
    And I click on "Update Activity"
    Then the description of the activity is "Prova2"

  Scenario: can't leave the description blank
    Given there is an activity
    And I am viewing the details of an activity
    When I click on "Edit"
    And I change description to ""
    And I click on "Save"
    Then I should see a error message
