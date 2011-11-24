Given /^I am a logged in user$/ do
  user = Factory(:visible_user, :password => 'foobar')

  visit root_path
  click_link "Login"

  fill_in "Email",    :with => user.email
  fill_in "Password", :with => 'foobar'
  click_button "Sign in"
end

When /^I change my firstname to "([^"]*)"$/ do |name|
  fill_in "First name", :with => name
  click_button "Update user"
end

Then /^my name should be updated to "([^"]*)"$/ do |name|
  visit root_path
  page.should have_content(name)
end
