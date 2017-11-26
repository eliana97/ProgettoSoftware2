Feature: delete a customer
  In order to delete some of my customers
  As a user
  I want to delete a customer

  Scenario: delete a customer
    Given I am an user
    When I click on delete customer
    Then I should see a message of deletion and no more the customer in
    the list
