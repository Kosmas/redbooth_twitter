Feature: Collecting twitter handle mentions
  In order to collect twitter handle mentions
  As the RedboothTwitter application
  I want to be able to collect the mentions of the twitter handle I specify
  
  Scenario: Collecting twitter handle mentions
    Given there is a mention "you are the best" for twitter handle "the_best"
    When I query twitter
    Then I should get back "you are the best"
