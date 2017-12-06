Feature: process a bill
  Scenario: process a bill
    Given I am an user called "aa.aa@aa.it" with password "aa"
    When I have created the bill
    Then I should see the total cost as sum of all activities from the last bill
