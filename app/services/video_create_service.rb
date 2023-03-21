class VideoCreateService
  def initialize(user, params)
    @current_user = user
    @params = params
    @video = video
  end

  def create
    return unless @video.available?
    @current_user.videos.create(
      url: @params["url"],
      title: @video.title,
      desc: @video.description,
      embed_url: @video.embed_url
    )
  end

  def video
    video = VideoInfo.new(@params["url"])
  end
end
