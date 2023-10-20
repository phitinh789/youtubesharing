class NotificationsChannel < ApplicationCable::Channel
  def subscribed
    stream_from 'notifications_channel'
    #cannot findout how to stream only for  login pp
    # if current_user
    #   stream_from "notifications_user_#{current_user.id}"
    # else
    #   reject
    # end
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
