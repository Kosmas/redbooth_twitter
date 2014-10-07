Feature: Creating a user account in the application
  In order to be able to use the application
  As a user
  I want to be able to create a user account using twitter and redbooth

  Scenario: Create a user account using twitter
    Given I am a new user with name "new_user"
    When I go to sign up with Twitter
    Then I should be able to create a user account

  Scenario: Link an existing account with redbooth
    Given I have an existing account with twitter with name "exising_user"
    When I go to link account with Redbooth
    Then I should be able to link the account with redbooth
