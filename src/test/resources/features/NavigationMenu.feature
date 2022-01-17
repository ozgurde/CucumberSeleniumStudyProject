@task
Feature: Navigation menu

  Scenario: Navigate Fleet -- Vehicles
    Given the user is on the login page
    And the user enters the sales manager information
    When the user navigates to Fleet, Vehicles
    Then the title should be Vehicles
  @database
  Scenario: Navigate Marketing -- Campaigns
    Given the user is on the login page
    And the user enters the sales manager information
    When the user navigates to Marketing, Campaigns
    Then the title should be Campaigns

  Scenario: Navigate Activities -- Calendar Events
    Given the user is on the login page
    And the user enters the sales manager information
    When the user navigates to Activities, Calendar Events
    Then the title should be Calendars