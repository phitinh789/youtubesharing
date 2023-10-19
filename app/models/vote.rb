class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :video
  scope :up_votes, ->{where(:vote_status => 0)}
  scope :down_votes, ->{where(:vote_status => 1)}
end
