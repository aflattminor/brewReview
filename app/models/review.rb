class Review < ApplicationRecord
  validates :user_id, presence: true
  validates :brewpub_id, presence: true
  validates :rating, presence: true

  has_many :votes
  belongs_to :brewpub
  belongs_to :user
end
