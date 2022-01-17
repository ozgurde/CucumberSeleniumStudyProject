Feature: Account types
  @wip
  Scenario: Driver user
    Given the user logged in as "driver"
    When the user navigates to "Activities" "Calendar Events"
    Then the title contains "Calendar Events - Activities"
  @wip
  Scenario: Sales manager user
    Given the user logged in as "salesmanager"
    When the user navigates to "Customers" "Accounts"
    Then the title contains "Accounts - Customers"
  @wip
  Scenario: Store manager user
    Given the user logged in as "storemanager"
    When the user navigates to "Customers" "Contacts"
    Then the title contains "Contacts - Customers"


  Scenario Outline: Login with <userType> account
    Given the user logged in as "<userType>"
    When the user navigates to "<tab>" "<column>"
    Then the title contains "<title>"

    Examples:
      | userType     | tab        | column          | title                         |
      | driver       | Activities | Calendar Events | Calendar Events - Activities |
      | storemanager | Customers  | Accounts        | Accounts - Customers         |
      | salesmanager | Customers  | Contacts        | Contacts - Customers         |








