Given /^a user exists with first name "([^"]*)" and last name "([^"]*)"$/ do |first_name, last_name|
  user = Factory(:visible_user, :first_name => first_name, :last_name => last_name)
end

When /^I visit the home page$/ do
  visit root_path
end

Then /^I should see "([^"]*)"$/ do |name|
  page.should have_content(name)
end
