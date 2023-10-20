require 'rails_helper'

RSpec.describe Video, type: :model do
  let(:user) { User.create(email: "tinhnguyen282@gmail.com", password: "password123") }

  it "is valid with url and user_id" do
    video = Video.new(url: "https://youtu.be/fM1IE9yC-3U", user: user)
    expect(video).to be_valid
  end

  it "is not valid without a url" do
    video = Video.new(user: user)
    expect(video).to_not be_valid
  end

  it "is not valid without a user_id" do
    video = Video.new(url: "https://youtu.be/fM1IE9yC-3U",)
    expect(video).to_not be_valid
  end

  it "belongs to a user" do
    video = Video.create(title: "Test Video", desc: "This is a test video.", url: "https://youtu.be/fM1IE9yC-3U", user: user)
    expect(video.user).to eq(user)
  end
end
