class Video < ApplicationRecord
  paginates_per 4

  has_many :votes
  belongs_to :user
  has_many :vote_users, through: :votes, source: :user

  validates :url, presence: true
end
