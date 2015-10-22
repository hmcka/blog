Feature: Delete
  As an author
  I want to delete posts
  So that I can hide my stupidity

  Scenario: Deleting a post
    Given I am on the post  page
	When I delete a valid post
	Then that post goes away
