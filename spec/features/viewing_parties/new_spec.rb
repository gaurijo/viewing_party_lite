require 'rails_helper'

RSpec.describe "Viewing Party New" do 
  it 'has the movie title' do 

    @user1 = User.create!(name: "Micheal Jordan", email: "user1@gmail.com")
    response = JSON.parse(File.read('spec/fixtures/ddlj.json'), symbolize_names: true)

    visit "/users/#{@user1.id}/movies/:movie_id/viewing_party/new"

    expect(response[:title]).to eq("Dilwale Dulhania Le Jayenge")
  end

  it 'has a form with fields: duration, date, time, each existing user, button to create party' do 
    @user1 = User.create!(name: "Micheal Jordan", email: "user1@gmail.com")
    response = JSON.parse(File.read('spec/fixtures/ddlj.json'), symbolize_names: true)

    visit "/users/#{@user1.id}/movies/:movie_id/viewing_party/new"

    # expect(page).to have_content("Duration of Party")
    # expect(page).to have_content("When")
    # expect(page).to have_content("Time")
    # expect(page).to have_content("Time")
  end
end