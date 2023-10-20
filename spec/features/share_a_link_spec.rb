require 'rails_helper'

RSpec.feature "Share an youtube link", type: :feature do
  let(:user) { User.create(email: "tinhnguyen282@example.com", password: "password123") }

  scenario "User share an youtube link" do
    login_as(user, scope: :user)
    visit new_video_path
    fill_in "video[url]", with: "https://youtu.be/sample-url"
    click_button "Share"
    expect(page).to have_css(".alert-info", text: "Successfully share a link!")
  end
end
