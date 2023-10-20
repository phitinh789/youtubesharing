require 'rails_helper'

RSpec.feature "Log out", type: :feature do
  let(:user) { User.create(email: "tinhnguyen282@example.com", password: "password123") }
  scenario "User logs out successfully" do
    login_as(user, scope: :user)
    visit root_path
    expect(page).to have_content(user.email)
    expect(page).to have_link("Sign out")
    click_link "Sign out"
    expect(page).to have_link("Sign in")
  end
end
