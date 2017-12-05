Given("there is a customer") do
  @customer = FactoryBot.create(:customer)
end

Given("I am viewing the details of a customer") do
  visit customer_path(@customer)
end

When("I change business_name to {string}") do |string|
  fill_in 'Business Name', with: string
end

Then("I am on the page of the customer") do
  visit customer_path(@customer)
end

Then("the business_name of the customer is {string}") do |string|
  expect(page).to have_content(string)
end
