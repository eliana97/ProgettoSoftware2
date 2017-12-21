Given("I have an account") do
  @password="prova"
  @user=FactoryBot.create(:user, email: "aa.aa@aa.it", password: @password)
end

Given("I am on the sign in page") do
  visit sign_in_path
end

When("I fill in the login form with valid data") do
  fill_in 'Email', with: @user.email
  fill_in 'Password', with: "prova"
end

Then("I should be able to access my account") do
  expect(page).to have_content("Customers")
end
