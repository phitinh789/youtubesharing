require 'rails_helper'

RSpec.describe Vote, type: :model do
  let(:user) { User.create(email: "tinhnguyen282@example.com", password: "password123") }
  let(:video) { Video.create(title: "Test Video", user: user, url: "https://youtu.be/fM1IE9yC-3U") }

  it "is valid with a user and video" do
    vote = Vote.new(user: user, video: video, vote_status: 0)
    expect(vote).to be_valid
  end

   it "is not valid without a user" do
    vote = Vote.new(video: video, vote_status: 0)
    expect(vote).to_not be_valid
  end

  it "is not valid without a video" do
    vote = Vote.new(user: user, vote_status: 0)
    expect(vote).to_not be_valid
  end

  it 'has upvote scope' do
    up_vote = Vote.create(user: user, video: video, vote_status: 0)
    down_vote = Vote.create(user: user, video: video, vote_status: 1)
    up_votes = Vote.up_votes
    expect(up_votes).to include(up_vote)
    expect(up_votes).to_not include(down_vote)
  end

  it 'has down_vote scope' do
    up_vote = Vote.create(user: user, video: video, vote_status: 0)
    down_vote = Vote.create(user: user, video: video, vote_status: 1)
    down_votes = Vote.down_votes
    expect(down_votes).to include(down_vote)
    expect(down_votes).to_not include(up_vote)
  end
end
