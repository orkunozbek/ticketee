Given /^I am on the homepage$/ do
  visit('/')
end

When /^I follow 'New Project'$/ do
  click_link  ('New Project')
end

When /^I fill in 'Name"([^"]*)"TextMate (\d+)'$/ do |arg1, arg2|
  fill_in("Name", :with => "textmate2")
end

When /^I press 'Create Project'$/ do
  click_button('Submit')
end