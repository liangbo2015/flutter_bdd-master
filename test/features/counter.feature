Feature: Counter
  Check counter is correct after tap add button

  Scenario: Check Counter Number
    Given I expect the "counterTextField" to be "0"
    When I tap the "addBtn" button 10 times
    Then I expect the "counterTextField" to be "11"