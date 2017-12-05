Then("I shouldn't see the bill in the list") do
  bill = FactoryBot.create(:bill)
  bill.destroy
end
