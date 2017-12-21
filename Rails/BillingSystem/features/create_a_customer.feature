Feature: create a customer
  In order to keep track of customers
  As a user
  I want to create a new customer

  Background:
    Given I have an account
    And I am logged in
    And I am on "Customers" page

  Scenario: create a valid customer
    When I click on "New Customer"
    And I fill in the customer form with valid data
    Then I should see the customer in the list

  Scenario: create an invalid customer
    When I click on "New Customer"
    And I fill in the form with an invalid business name
    Then I should see a error message
