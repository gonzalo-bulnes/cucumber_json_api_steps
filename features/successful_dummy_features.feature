Feature: Smoke test
  As a developer
  In order to be able to setup the dummy app with different Cucumber features depending of the feature I want to test
  And to drive the dummy app setup with Cucumber and Aruba
  I want to be able to programatically run Cucumber within the dummy app

  Scenario: Run Cucumber within the context of the dummy app
    Given a directory named "features"
    And I write to "features/smoke.feature" with:
      """
      Feature: Smoke test
        As a developer
        In order to make sure Cucumber can run itself within the dummy app
        I want to run a smoke test

        Scenario: Running Cucumber within the dummy app
          Given none of these three steps are defined
          When I run Cucumber inside the dummy app
          Then there are 3 undefined steps
      """
    When I run `cucumber`
    Then the exit status should be 0
    And the output should contain:
      """
      1 scenario (1 undefined)
      3 steps (3 undefined)
      """
