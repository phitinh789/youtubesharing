class SendNotificationJob < ApplicationJob
  queue_as :default

  def perform(current_user, video)
    ActionCable.server.broadcast('notifications_channel',
      info: {
        video_title: video.title,
        email: current_user.email,
        video_detail_path: "/videos/#{video.id}"
      }
    )
  end
end
