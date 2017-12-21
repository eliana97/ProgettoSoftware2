Feature: Log In
  As a user
  I want to log into my account

  Background:
    Given I have an account

  Scenario: Login successful
    Given I am on the sign in page
    When I fill in the login form with valid data
    And I click on "Sign in"
    Then I should be able to access my account
