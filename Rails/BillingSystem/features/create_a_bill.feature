Feature: create a bill
  In order to keep track of bills
  As a user
  I want to create a new bill

  Scenario: create a valid bill
    Given I am an user
    When I click on new bill
    And I fill in the form with valid data
    Then I should see the bill in the list with all the activities from the period linked with the selected customer

  Scenario: create an invalid bill
    Given I am an user
    When I click on new bill
    And I fill in the form with an invalid date
    Then I should see a error message
