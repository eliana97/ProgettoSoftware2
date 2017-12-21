And("there is an activity") do
  @user = FactoryBot.create(:user, email: "cc.cc@cc.it", password: "aa")
  @activity = FactoryBot.create(:activity, user: @user)
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
  visit activity_path(@activity)
  expect(page).to have_content(string)
end

Then("I should see an error") do
  expect(page).to have_css('#error_explanation')
end
