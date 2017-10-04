class Vote < ApplicationRecord
  validates :user_id, presence: true
  validates :review_id, presence: true
  validates :user_vote, presence: true

  belongs_to :review
  belongs_to :user

  delegate :brewpub, to: :review
end
