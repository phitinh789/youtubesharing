class SendNotificationJob < ApplicationJob
  queue_as :default

  def perform(user_email, video_title)
    ActionCable.server.broadcast('notifications_channel', "#{video_title} được chia sẻ bởi #{user_email}")
  end
end
