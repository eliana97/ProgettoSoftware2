Feature: edit a customer
  In order to maintain my list of customers up to date
  As a user
  I want to edit a customer

  Background:
    Given I have an account
    And I am logged in
    And I am on "Customers" page

  Scenario: change the description of a customer
    Given there is a customer
    And I am viewing the details of a customer 
    And I click on "Edit"
    When I change business_name to "UniBz"
    And I click on "Update Customer"
    Then the business_name of the customer is "UniBz"

  Scenario: can't leave the business_name blank
    Given there is a customer
    And I am viewing the details of a customer
    When I click on "Edit"
    And I change business_name to ""
    And I click on "Save"
    Then I should see a error message
