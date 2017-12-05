Feature: delete a customer
  In order to delete some of my customers
  As a user
  I want to delete a customer

  Scenario: delete a customer
    Given I am an user called "aa"
    When I click on "Delete Customer"
    Then I shouldn't see the customer in the list
