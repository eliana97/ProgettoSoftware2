Given("there is an activity") do
  @activity = FactoryBot.create(:activity)
end

Given("I am viewing the details of an activity") do
  visit activities_path
end

When("I click on {string}") do |string|
  fill_in :description, with: string
end

When("I change description to {string}") do |string|
  pending # Write code here that turns the phrase above into concrete actions
end

Then("the description of the activity is {string}") do |string|
  #expect(@activity.description).to eq(string)
  expect(page).to have_content(string)
end

Then("I should see an error") do
  pending # Write code here that turns the phrase above into concrete actions
end
