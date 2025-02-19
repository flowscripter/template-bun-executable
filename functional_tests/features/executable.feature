Feature: Executable

  Scenario: Executable success
    When the executable is launched
    Then the executable should complete successfully
    And the executable should have output "Hello"
    And the executable should have output "World"
    And the executable should have output "Hello"
    And the executable should have output "World 4"
