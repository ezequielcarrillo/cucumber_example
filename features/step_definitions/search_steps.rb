When(/^I am on the Google home page$/) do
  visit(GoogleHomePage)
end

When(/^I search for "([^"]*)"$/) do |query_search|
 on(GoogleHomePage).searchFor(query_search)
end

And(/^I click on "([^"]*)" link$/) do |link_name|
  on(GoogleResultsPage).click_on_link(link_name)
end

Then(/^I should see the results$/) do
  on(GoogleResultsPage).verify_results.should == true
end

Then(/^I should see images displayed$/) do
  on(GoogleResultsPage).verify_results_images.should == true
end
