Feature: Search
  As a reader
  I want to search for posts by title
  So that I can find specific information

Scenario: Searching for posts
  Given I am on the home page
  When I search part of the title
  Then a list of valid posts show in the browser
