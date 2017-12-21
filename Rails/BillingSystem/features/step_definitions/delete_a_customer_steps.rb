Then("I shouldn't see the customer in the list") do
  bill = FactoryBot.create(:bill)
  bill.destroy
end

And("I confirm the popup") do
  popup= page.driver.browser.switch_to.alert
  popup.accept
end
