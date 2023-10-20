require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid with a email and password" do
    user = User.new(email: "tinhnguyen282@gmail.com", password: 'password123')
    expect(user).to be_valid
  end

  it "is not valid without an email" do
    user = User.new(password: "password123")
    expect(user).to_not be_valid
  end

  it "is not valid without a password" do
    user = User.new(email: "tinhnguyen282@gmail.com")
    expect(user).to_not be_valid
  end
end
