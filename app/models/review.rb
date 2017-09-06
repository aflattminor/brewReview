class Review < ApplicationRecord
  validates :user_id, presence: true
  validates :brewpub_id, presence: true
  validates :rating, presence: true

  belongs_to :brewpub
end
