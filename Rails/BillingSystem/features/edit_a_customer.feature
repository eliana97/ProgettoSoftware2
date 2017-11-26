Feature: edit a customer
  In order to maintain my list of customers up to date
  As a user
  I want to edit a customer

  Scenario: change the description of a customer
    Given there is a customer
    And I am viewing the details of a customer
    When I click on "Edit"
    And I change business_name to "UniTn"
    And I click on "Update customer"
    Then I am on the page of the customer
    Then the business_name of the customer is "UniTn"

  Scenario: ca't leave the business_name blank
    Given there is a customer
    ad I am viewing the details of a customer
    When I click on "Edit"
    ad I chage business_name to ""
    ad I click on "Save"
    Then I should see a error
