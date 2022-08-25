require 'rails_helper'

RSpec.describe "User Discover", type: :feature do
    it 'has a button to discover top rated movies', :vcr do

        @user1 = User.create!(name: "Micheal Jordan", email: "user1@gmail.com")

        visit "/users/#{@user1.id}/discover"

        click_button "Discover Top Rated Movies"
        
        expect(current_path).to eq("/users/#{@user1.id}/movies")
    end

    it 'has text field to search key words then redirects to matching list', :vcr do
        @user1 = User.create!(name: "Micheal Jordan", email: "user1@gmail.com")

        visit "/users/#{@user1.id}/discover"
        response = JSON.parse(File.read('spec/fixtures/ddlj.json'), symbolize_names: true)

        fill_in :movie_title, with: "Dilwale Dulhania Le Jayenge"
        click_on "Search"

        expect(current_path).to eq("/users/#{@user1.id}/movies")
    end
end

