class Video < ApplicationRecord
  paginates_per 4

  has_many :votes
  belongs_to :user
  has_many :vote_users, through: :votes, source: :user

  validates :url, presence: true
  after_create :send_noti_for_all_user_except_sender

  def send_noti_for_all_user_except_sender
    SendNotificationJob.perform_later(user, title)
  end
end
