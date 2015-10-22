Feature: Create
  As an author
  I want to create a post
  So that I can share my knowledge with the world
  
Scenario: Creating a valid post
  Given I am on the post submission page
  When I create a valid post 
  Then my post is created
  
Scenario: Adding duplicate posts
  Given I am on the post submission page
  When I create duplicate posts
  Then I get an error 
  
Scenario: Listing valid posts from a blogger
  Given that I am on post submission page
  When I submit a valid post 
  Then I see a list of posts
  
Scenario: Reading a post
  Given I am on the Home Page
  When I click on a post
  Then I can read that post
  
  
