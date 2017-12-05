Then("I shouldn't see the customer in the list") do
  bill = FactoryBot.create(:bill)
  bill.destroy
end
