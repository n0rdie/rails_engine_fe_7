require 'rails_helper'

RSpec.describe 'Merchants Index' do
    it "Merchants Index" do
        merchant_1 = Merchant.create(name: "Steve")
        merchant_2 = Merchant.create(name: "Bob")
        merchant_3 = Merchant.create(name: "Jeff")
        merchant_4 = Merchant.create(name: "Alex")

        # When I visit '/merchants'
        visit '/merchants'
        # I should see a list of merchants by name
        # and when I click the merchant's name
        expect(page).to have_link('Steve')
        expect(page).to have_link('Bob')
        expect(page).to have_link('Jeff')
        expect(page).to have_link('Alex')
    end
end
