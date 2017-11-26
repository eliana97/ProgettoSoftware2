Feature: edit a bill
  In order to maintain my list of bills up to date
  As a user
  I want to edit a bill

  Scenario: edit a bill
    Given I am an user
    When I click on edit bill
    And I change the date in the form
    Then I should see the updated date in the list of bills

  Scenario: can't leave the date blank
    Given there is a bill
    And I am viewing the details of a bill
    When I click on "Edit"
    And I change updated to ""
    And I click on "Save"
    Then I should see an error
