require 'rails_helper'

RSpec.describe 'Merchants Index' do
    before(:each) do
        merchant_1 = Merchant.new(name: "Steve")
        merchant_2 = Merchant.new(name: "Bob")
        merchant_3 = Merchant.new(name: "Jeff")
        merchant_4 = Merchant.new(name: "Alex")
    end 

    it "Merchants Index" do
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
