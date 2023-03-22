class VideosController < ApplicationController
  before_action :authenticate_user!
  before_action :get_video, only: [:vote]

  def new
    @video = current_user.videos.new
  end

  def create
    video = VideoCreateService.new(current_user, video_params).create
    puts video[:success]
    if video[:success]
      flash[:alert] = "New video added"
      return redirect_to :root
    else
      return render json: video
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
