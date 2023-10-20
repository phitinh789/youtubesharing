class VideosController < ApplicationController
  before_action :authenticate_user!
  before_action :get_video, only: [:vote]

  def new
    @video = current_user.videos.new
  end

  def create
    @video = VideoCreateService.new(current_user, video_params).create
    flash[:notice] = "Successfully share a link!"
    respond_to do |format|
      format.html
      format.js
    end
  end

  def vote
    vote = @video.votes.create!(
      vote_status: params[:vote_status],
      user_id: current_user.id
    )
    redirect_to :root
  end

  protected

  def get_video
    @video = Video.find(params[:id])
  end

  def video_params
    params.require(:video).permit(:url)
  end
end
