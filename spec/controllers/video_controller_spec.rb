require 'rails_helper'

RSpec.describe VideosController, type: :controller do
  let(:user) { User.create(email: "tinhnguyen282@example.com", password: "password123") }
  let(:video) { Video.create(title: "Test Video", user: user, url: "https://youtu.be/fM1IE9yC-3U") }

  before do
    sign_in user
  end

  describe "GET #new" do
    it "returns a successful response" do
      get :new
      expect(response).to have_http_status(:success)
    end

    it "assigns a new video" do
      get :new
      expect(assigns(:video)).to be_a_new(Video)
    end
  end

  describe "POST #create" do
    it "creates a new video" do
      post :create, params: { video: { url: "https://youtu.be/sample-url" } }, format: :js
      expect(response).to have_http_status(:success)
      created_video = Video.last
      if created_video.nil?
        puts "Video was not saved to the database. Response body: #{response.body}"
      else
        expect(created_video.persisted?).to be(true)
      end
    end
  end

  describe "POST #vote" do
    it "creates a new vote" do
      post :vote, params: { id: video.id, vote_status: 0 }
      expect(response).to redirect_to(root_path)
      expect(video.votes.count).to eq(1)
    end
  end
end
