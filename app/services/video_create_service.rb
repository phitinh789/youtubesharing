class VideoCreateService
  def initialize(user, params)
    @current_user = user
    @params = params
    @video = video[:video]
  end

  def create
    return video unless video[:success]
    return {success: false, message: 'Video unavailable',video: nil} unless @video.available?
    @current_user.videos.create(
      url: @params["url"],
      title: @video.title,
      desc: @video.description,
      embed_url: @video.embed_url
    )
    {success: true, message: nil, video: @current_user.videos.last}
  end

  def video
    begin
      video = VideoInfo.new(@params["url"])
      {success: true, message: nil,video: video}
    rescue Exception => e
      return {success: false, message: e,video: nil}
    end
  end
end
