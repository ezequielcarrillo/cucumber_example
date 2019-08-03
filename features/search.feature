Feature: Google Search
  As a User
  I should be able to Search

  Background: go to google page
    Given I am on the Google home page


  Scenario: Search for Results
    When I search for "cat"
    Then I should see the results

  @ticket_number
  Scenario: Search for images
    When I search for "cat"
    And I click on "Imágenes" link
    Then I should see images displayed


  Scenario: Search for a dog
    When I search for "dog"
    And I click on "Imágenes" link
    Then I should see images displayed

  @niy
  Scenario: voice search
    When I search for "dog"
    And I click on "Imágenes" link
    Then I should see images displayed