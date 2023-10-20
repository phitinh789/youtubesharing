class SendNotificationJob < ApplicationJob
  queue_as :default

  def perform(current_user, video_title)
    # ActionCable.server.broadcast("notifications_user_#{current_user.id}", "#{video_title} được chia sẻ bởi #{current_user.email}")
    ActionCable.server.broadcast('notifications_channel', "#{video_title} được chia sẻ bởi #{current_user.email}")
  end
end
