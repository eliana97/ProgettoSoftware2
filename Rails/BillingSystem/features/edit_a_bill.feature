Feature: edit a bill
  In order to maintain my list of bills up to date
  As a user
  I want to edit a bill

  Background:
    Given I have an account
    And I am logged in
    And there is a customer called "UniTn"
    And I am on "Bills" page

  Scenario: edit a bill
    Given there is an activity called "Prova"
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
