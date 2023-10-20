require 'rails_helper'

RSpec.feature "User Login", type: :feature do
  scenario "User logs in successfully" do
    user = User.create(email: "tinhnguyen282@example.com", password: "password")
    visit new_user_session_path
    fill_in "Email", with: user.email
    fill_in "Password", with: "password"
    click_button "Log in"
    expect(page).to have_content("Share a movie")
  end
end
