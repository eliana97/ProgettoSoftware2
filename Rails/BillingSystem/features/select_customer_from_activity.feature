Feature: select customer from activity
  Scenario: select a customer from activity
    Given I am an user
    When I edit or create an activity
    And I select a customer from a drop down list
    Then I should see the customer in the created or updated activity
