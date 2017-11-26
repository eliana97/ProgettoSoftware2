Feature: create a customer
  In order to keep track of customers
  As a user
  I want to create a new customer

  Scenario: create a valid customer
    Given I am an user
    When I click on new customer
    And I fill in the form with valid data
    Then I should see the customer in the list

  Scenario: create an invalid customer
    Given I am an user
    When I click on new customer
    And I fill in the form with an invalid business name
    Then I should see a error message
