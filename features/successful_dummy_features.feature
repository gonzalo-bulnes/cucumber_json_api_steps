Feature: Smoke test
  As a developer
  In order to be able to setup the dummy app with different Cucumber features depending of the feature I want to test
  And to drive the dummy app setup with Cucumber and Aruba
  I want to be able to programatically run Cucumber within the dummy app

  # Note: I've not been able to generate the dummy app with Rails
  # as I did for the Simple Token Authentication gem.
  # Generating the dummy app with Dummier, on the contrary, works fine.
  # Sadly, it is slower than doing it with Rails (which was not fast at all).
  #
  # If you know how to workaround the Rails generators limitation
  # within engines, I'd love to hear about it! Please be welcome at
  # https://github.com/gonzalo-bulnes/cucumber_json_api_steps/issues

  @I-would-love-to-understand-why-this-happens
  Scenario: Creating a dummy app with Rails is not possible :(
    Given I cd to "../.."
    And a directory named "spec/dummy"
    And I cd to "spec"
    And I run `rm -r dummy`
    And a directory named "dummy"
    And I cd to "dummy"
    And I run `rvm current`
    When I run `rails new . --skip-bundle --skip-test-unit --skip-javascript`
    Then the exit status should not be 0
    And the output should contain:
      """
      Error: Command not recognized
      Usage: rails COMMAND [ARGS]

      The common rails commands available for engines are:
       generate    Generate new code (short-cut alias: "g")
       destroy     Undo code generated with "generate" (short-cut alias: "d")
      """

  @I-would-love-to-understand-why-this-happens
  Scenario: Creating a dummy app with Dummier just works :)
    Given I cd to "../.."
    And a directory named "spec/dummy"
    And I run `rm -r ./spec/dummy`
    And The default aruba timeout is 60 seconds
    And I run `dummier`
    And I run `mv test/dummy spec/`
    And I run `rmdir test`
    And I run `ls ./spec/dummy`
    Then the exit status should be 0
    And the output should contain:
      """
      config.ru
      """

  @cucumber
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

  @cucumber
  Scenario: Run Cucumber within the context of a newly generated dummy app
    Given I have a dummy app
    And a directory named "features"
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
