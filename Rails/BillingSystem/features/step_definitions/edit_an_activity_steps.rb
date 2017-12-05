Given("there is an activity") do
  @activity = FactoryBot.create(:activity)
end

Given("I am viewing the details of an activity") do
  visit activity_path(@activity)
end

When("I click on {string}") do |string|
  click_on string
end

When("I change description to {string}") do |string|
  fill_in 'Description', with: string
end

Then("the description of the activity is {string}") do |string|
  #expect(@activity.description).to eq(string)
  expect(page).to have_content(string)
end

Then("I should see an error") do
  expect(page).to have_css('#error_explanation')
end
