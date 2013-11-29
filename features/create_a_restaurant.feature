Feature: Creating a restaurant
  As proprieter of a restaurant review site
  In order to allow people to review restaurants
  I need to be able to add restaurants

  Scenario: Adding a restaurant
    Given I am signed in
    When I visit the add restaurant page and add a restaurant
    Then I should see the restaurant on the page

  Scenario: Viewing a restaurants page
    Given there is a restaurant added to the site
    When I visit that restaurants page
    Then I should see the info about that restaurant