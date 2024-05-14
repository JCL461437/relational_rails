require 'rails_helper'

# User Story 2, Parent Show 

# As a visitor
# When I visit '/parents/:id'
# Then I see the parent with that id including the parent's attributes
# (data from each column that is on the parent table)

RSpec.describe 'the gyms show page' do
    it 'displays the gym title' do
        aka = Gym.create!(name: 'American Kickboxing Academy', number_of_champions: 7, holds_current_champion: true)
        sbg = Gym.create!(name: "SBG Ireland", number_of_champions: 1, holds_current_champion: false)

        # conor = sbg.fighter.create!(name: 'Conor McGregor',age: 34, style: 'Striker', active: true)
        # khabib = aka.fighter.create!(name: 'Khabib Nurmagomedov',age: 34, style: 'Wrestler', active: false)
        # dc = aka.fighter.create!(name: 'Daniel Cormier',age: 45, style: 'Wrestler', active: false)

        visit "/gyms/#{aka.id}"

        save_and_open_page

        expect(page).to have_content(aka.name)
        expect(page).to have_content(aka.number_of_champions)
        expect(page).to have_content(aka.holds_current_champion)
    end
end
