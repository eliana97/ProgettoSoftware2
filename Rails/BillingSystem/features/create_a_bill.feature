Feature: create a bill
  In order to keep track of bills
  As a user
  I want to create a new bill

  Background:
    Given I have an account
    And I am logged in
    And there is a customer called "UniTn"
    And I am on "Bills" page

  Scenario: create a valid bill
    When I click on "New Bill"
    And I fill in the bill form with valid data
    Then I should see the bill in the list

  Scenario: create an invalid bill
    When I click on "New Bill"
    And I fill in the form with an invalid customer
    Then I should see a error message
