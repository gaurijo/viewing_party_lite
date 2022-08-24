require 'rails_helper'
#new user register
RSpec.describe "user registration page" do 
  it "has a form to register" do 

    visit "/register"

    expect(page).to have_field(:name)
    expect(page).to have_field(:email)
    expect(page).to have_button("Register")
  end

  it "should take the user to their dashboard page after they register" do 

    visit "/register"

    fill_in :name, with: "Sam Smith"
    fill_in :email, with: "sam@smith.com"
    click_on "Register"

    test = User.first 

    expect(current_path).to eq("/users/#{test.id}")
    expect(test.email).to eq("sam@smith.com")
  end

  it "should not register the user if the email address is already in use" do 
    visit "/register"

    new_user = User.create(name: "Jane Doe", email: "sam@smith.com")
    fill_in :name, with: "Jane Doe"
    fill_in :email, with: "sam@smith.com"
    click_on "Register"
    # save_and_open_page
    expect(current_path).to eq("/register")
  end
end