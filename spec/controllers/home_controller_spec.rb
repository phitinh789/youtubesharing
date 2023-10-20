require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  let(:user) { User.create(email: "tinhnguyen282@gmail.com", password: "password123") }

  describe "GET #index" do
    it "responds with a 200 status code" do
      get :index
      expect(response).to have_http_status(200)
    end

    it "renders the :index template" do
      get :index
      expect(response).to render_template(:index)
    end

    it "orders videos by created_at in descending order" do
      video1 = Video.create(user: user, url: "https://youtu.be/video1-url", created_at: 3.days.ago)
      video2 = Video.create(user: user, url: "https://youtu.be/video2-url", created_at: 2.days.ago)
      video3 = Video.create(user: user, url: "https://youtu.be/video3-url", created_at: 1.day.ago)

      get :index

      expect(assigns(:videos)).to eq([video3, video2, video1])
    end

    it "paginates @videos" do
      video1 = Video.create(user: user, url: "https://youtu.be/video1-url", created_at: 3.days.ago)
      video2 = Video.create(user: user, url: "https://youtu.be/video2-url", created_at: 2.days.ago)
      video3 = Video.create(user: user, url: "https://youtu.be/video3-url", created_at: 1.day.ago)
      video4 = Video.create(user: user, url: "https://youtu.be/video3-url", created_at: 1.day.ago)
      video6 = Video.create(user: user, url: "https://youtu.be/video3-url", created_at: 1.day.ago)
      video7 = Video.create(user: user, url: "https://youtu.be/video3-url", created_at: 1.day.ago)
      video8 = Video.create(user: user, url: "https://youtu.be/video3-url", created_at: 1.day.ago)
      video9 = Video.create(user: user, url: "https://youtu.be/video3-url", created_at: 1.day.ago)

      get :index, params: { page: 2 }

      expect(assigns(:videos).count).to eq(4)
    end
  end
end
