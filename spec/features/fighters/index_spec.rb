require 'rails_helper'

# User Story 1, Parent Index 

# For each parent table
# As a visitor
# When I visit '/parents'
# Then I see the name of each parent record in the system


RSpec.describe 'the fighters index page' do
    it 'displays the fighters information' do
        aka = Gym.create!(name: 'American Kickboxing Academy', number_of_champions: 7, holds_current_champion: true)
        sbg = Gym.create!(name: "SBG Ireland", number_of_champions: 1, holds_current_champion: false)

        conor = sbg.fighters.create!(name: 'Conor McGregor',age: 34, style: 'Striker', active: true)
        khabib = aka.fighters.create!(name: 'Khabib Nurmagomedov',age: 34, style: 'Wrestler', active: false)
        dc = aka.fighters.create!(name: 'Daniel Cormier',age: 45, style: 'Wrestler', active: false)

        visit "/fighters"

        expect(page).to have_content(khabib.name)
        expect(page).to have_content(khabib.age)
        expect(page).to have_content(khabib.style)
        expect(page).to have_content(khabib.active)

        expect(page).to have_content(conor.name)
        expect(page).to have_content(conor.age)
        expect(page).to have_content(conor.style)
        expect(page).to have_content(conor.active)

        expect(page).to have_content(dc.name)
        expect(page).to have_content(dc.age)
        expect(page).to have_content(dc.style)
        expect(page).to have_content(dc.active)
    end
end
