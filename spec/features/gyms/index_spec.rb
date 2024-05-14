require 'rails_helper'

# User Story 1, Parent Index 

# For each parent table
# As a visitor
# When I visit '/parents'
# Then I see the name of each parent record in the system


RSpec.describe 'the gyms index page' do
    it 'displays the gym title' do
        aka = Gym.create!(name: 'American Kickboxing Academy', number_of_champions: 7, holds_current_champion: true)
        sbg = Gym.create!(name: "SBG Ireland", number_of_champions: 1, holds_current_champion: false)

        visit "/gyms"

        expect(page).to have_content(aka.name)
        expect(page).to have_content(aka.number_of_champions)
        expect(page).to have_content(aka.holds_current_champion)

        expect(page).to have_content(sbg.name)
        expect(page).to have_content(sbg.number_of_champions)
        expect(page).to have_content(sbg.holds_current_champion)
    end
end
