Feature: Writing a review
  As a curator of restaurant reviews
  In order to populate the site with reviews
  I need to be able to let people write reviews

  Scenario: Adding a review
    Given I am signed in
    And there is a restaurant added to the site
    When I visit that page
    And write a review and give it a rating
    Then I should see that review