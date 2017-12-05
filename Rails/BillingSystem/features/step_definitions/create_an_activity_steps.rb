Given("there is a customer called {string}") do |string|
  FactoryBot.create(:customer, business_name: string)
end

Given("I am an user called {string}") do |email|
  FactoryBot.create(:user, email: email)
end

When("I click on {string}") do |string|
  click_on string
end

When("I fill in the form with valid data") do
  fill_in 'Description', with: "Prova"
  fill_in 'Customer', with: "UniTn"
  fill_in 'User', with: "aa"

  click_on 'Create Activity'
end

Then("I should see the activity in the list") do
  activity = activity.last
  expect(page).to have_content(activity.description)
end

When("I fill in the form with an invalid customer") do
  fill_in 'Description', with: ''

  click_on 'Create Activity'
end

Then("I should see a error message") do
  expect(page).to have_css('#error_explanation')
end
