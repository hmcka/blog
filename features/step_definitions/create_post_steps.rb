Given /^I am on the post submission page$/ do
  # navigate to our create a post page$/
  @page = CreationPage.new @browser
  @page.goto
end

When /^I create a valid post$/ do
  # fill in title, body and author fields, click submit
  @page.create_valid_post
end

Then /^my post is created$/ do
  # the page shows the word "Submitted!"
  expect(@page.html).to include("Submitted!")
end

When /^I create duplicate posts$/ do
  @page.create_duplicate_posts
end

Then /^I get an error$/ do
  expect(@page.html).to include("Error!")
end

Given /^that I am on post submission page$/ do
  # navigate to our create a post page$/
  @page = CreationPage.new @browser
  @page.goto
  
end

When /^I submit a valid post$/ do
  # fill in title, body and author fields, click submit
  @page.list_posts
end

Then /^I see a list of posts$/ do
  # the page shows a lists of posts that that author has submitted
  expect(@page.html).to include("List of Posts")
end

Given /^I am on the home page$/ do
  #@page = HomePage.new @browser
  #@page.goto
  expect(@page.html).to include("Home Page")
end

When /^I click on a post$/ do
  @page.read_post
end

Then /^I can read that post$/ do
  expect(@page.html).to include(":title")
end





