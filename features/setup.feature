@api
Feature: Setup
  In order to properly test the Behat Toolbox
  As a developer
  I want to be sure that the test environment is properly setup.

  Background:

    Given users:
      | name    | mail              | pass |
      | test    | test@example.com  | pass |

  Scenario: Test that Behat can access a Drupal working copy.

    Given I am not logged in
    When I visit "/user"

    Then I should see "Username"
    When I enter "test" for "Username"
    And I enter "pass" for "Password"
    And I press the "Log in" button
