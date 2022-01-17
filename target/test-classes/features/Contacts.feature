Feature: Contacts page

  Scenario: Default page number
    Given the user is on the login page
    And the user enters the driver information
    When the user navigates to "Customers" "Contacts"
    Then default page number should be 1

  Scenario: Verify Create Calendar Event
    Given the user is on the login page
    And the user enters the sales manager information
    When the user navigates to "Activities" "Calendar Events"
    Then the title contains "Calendar"


  Scenario: Menu Options
    Given the user logged in as "driver"
    Then the user should see following options
      | Fleet      |
      | Customers  |
      | Activities |
      | System     |


  Scenario: Menu Options Sales manager
    Given the user logged in as "salesmanager"
    Then the user should see following options
      | Dashboards         |
      | Fleet              |
      | Customers          |
      | Sales              |
      | Activities         |
      | Marketing          |
      | Reports & Segments |
      | System             |

  Scenario: login as a given user
    Given the user is on the login page
    When the user logs in using the following credentials
      | username  | user10      |
      | password  | UserUser123 |
      | firstname | John        |
      | lastname  | Doe         |
    Then the user should be able to login


  Scenario Outline: login as a <user>
    Given the user is on the login page
    When the user logs in using the following credentials
      | username  | <user>      |
      | password  | <password>  |
      | firstname | <firstName> |
      | lastname  | <lastName>  |
    Then the user should be able to login

    Examples:
      | user           | password    | firstName | lastName |
      | user10         | UserUser123 | John      | Doe      |
      | storemanager85 | UserUser123 | John      | Doe      |