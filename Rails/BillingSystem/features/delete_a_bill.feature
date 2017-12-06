Feature: delete a bill
  In order to delete some of my bills
  As a user
  I want to delete a bill

  Scenario: delete a bill
    Given I am an user called "aa.aa@aa.it" with password "aa"
    When I click on "Delete Bill"
    Then I shouldn't see the bill in the list
