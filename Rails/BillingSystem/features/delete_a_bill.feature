Feature: delete a bill
  In order to delete some of my bills
  As a user
  I want to delete a bill

  Scenario: delete a bill
    Given I am an user
    When I click on delete bill
    Then I should see a message of deletion and no more the bill in
    the list
