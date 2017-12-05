Feature: edit a bill
  In order to maintain my list of bills up to date
  As a user
  I want to edit a bill

  Scenario: edit a bill
    Given I am an user called "aa"
    When I click on "Edit"
    And I change date to "24/10/2017"
    Then I should see "24/10/2017" in the list of bills

  Scenario: can't leave the date blank
    Given there is a bill
    And I am viewing the details of a bill
    When I click on "Edit"
    And I change date to ""
    And I click on "Save"
    Then I should see an error
