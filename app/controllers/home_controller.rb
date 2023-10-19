class HomeController < ApplicationController
  # before_action :authenticate_user!
  def index
    @videos = Video.order(created_at: :desc).page params[:page]
  end
end
