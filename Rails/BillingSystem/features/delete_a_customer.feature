Feature: delete a customer
  In order to delete some of my customers
  As a user
  I want to delete a customer

  Background:
    Given I have an account
    And I am logged in
    And there is a customer called "UniTn"
    And I am on "Customers" page

  Scenario: delete a customer
    When I click on "Destroy"
    And I confirm the popup
    Then I shouldn't see the customer in the list
