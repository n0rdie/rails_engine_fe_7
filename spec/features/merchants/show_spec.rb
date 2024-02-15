require 'rails_helper'

RSpec.describe 'Merchants Index' do
    it "Merchants Index" do
        merchant_1 = Merchant.create(name: "Steve")
        merchant_1.items.create(name: "Dirt")
        merchant_1.items.create(name: "Cobblestone")
        merchant_1.items.create(name: "Diamond")

        # When I visit '/merchants'
        visit '/merchants'
        # and when I click the merchant's name
        click_on 'Steve'
        expect(current_path).to eq("/merchants/#{merchant_1.id}")
        # And I should see a list of items that merchant sells.
        expect(page).to have_content('Dirt')
        expect(page).to have_content('Cobblestone')
        expect(page).to have_content('Diamond')
    end
end
