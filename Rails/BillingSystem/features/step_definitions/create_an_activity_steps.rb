And("I am logged in") do
  click_on "Sign in"
  fill_in "Email", with: @user.email
  fill_in "Password", with: @user.password
end

Given("there is a customer called {string}") do |string|
  @customer = FactoryBot.create(:customer, business_name: string)
end

Given("I am an user called {string} with password {string}") do |email,pw|
  @user = FactoryBot.create(:user, email: email, password: pw)
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
