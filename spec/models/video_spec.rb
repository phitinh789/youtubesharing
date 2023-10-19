require 'rails_helper'

RSpec.describe Video, type: :model do
  describe "validations" do
    it "is valid with valid attributes" do
      expect(Video.new).to be_valid
    end

    it "is not valid without a url"
    it "is not valid without a embed_url"
  end
end
