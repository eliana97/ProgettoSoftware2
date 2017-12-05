When("I edit or create an activity") do
  pending # Write code here that turns the phrase above into concrete actions
end

When("I select a customer from a drop down list") do
  pending # Write code here that turns the phrase above into concrete actions
end

Then("I should see the customer {string} in the created or updated activity") do |string|
  expect(page).to have_content(string)
end
