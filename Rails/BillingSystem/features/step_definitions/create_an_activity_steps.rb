And("I am logged in") do
  visit sign_in_path
  fill_in "Email", with: @user.email
  fill_in "Password", with: @password
  click_on "Sign in"
  expect(page).to have_link("Dashboard")
end

And("I am on {string} page") do |string|
  click_on string
end

And("there is a customer called {string}") do |string|
  @customer = FactoryBot.create(:customer, business_name: string)
end

Given("I am an user called {string}") do |email|
  @user = FactoryBot.create(:user, email: email)
end

When("I fill in the activity form with valid data") do
  fill_in 'Description', with: "Prova"

  click_on 'Create Activity'
end

Then("I should see the activity in the list") do
  click_on "Activities"
end

When("I fill in the form with an invalid description") do
  fill_in 'Description', with: ''

  click_on 'Create Activity'
end

Then("I should see a error message") do
  expect(page).to have_css('#error_explanation')
end
