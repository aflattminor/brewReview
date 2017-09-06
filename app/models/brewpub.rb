  class Brewpub < ApplicationRecord
  belongs_to :user

  validates :name, presence: true

  validates :address, presence: true

  validates :city, presence: true

  validates :state, presence: true

  validates :zip, presence: true
  validates_format_of :zip, with: /\A\d{5}-\d{4}|\A\d{5}\z/, message: "should be in the form 12345 or 12345-1234"

  validates :description, presence: true

  validates :website_url, presence: true
  validates_format_of :website_url, with: /\A(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w\.-]*)*\/?\Z/i, message: "should be in the form https://www.abc123.com"

  validates :img_url, presence: true
  validates_format_of :img_url, with: /\A(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w\.-]*)*\/?\Z/i, message: "should be in the form https://www.abc123.com"

  validates :logo_url, presence: true
  validates_format_of :logo_url, with: /\A(https?:\/\/)?([\da-z\.-]+)\.([a-z\.]{2,6})([\/\w\.-]*)*\/?\Z/i, message: " should be in the form https://www.abc123.com"

  validates :phone_number, presence: true
  validates_format_of :phone_number, with: /(\+\d{1,2}\s)?\(?\d{3}\)?[\s.-]\d{3}[\s.-]\d{4}/, message: "should be in the form 123-123-1234"

  validates :contact_email, presence: true
  validates_format_of :contact_email, with: /[\+A-Z0-9\._%-]+@([A-Z0-9-]+\.)+[A-Z]{2,4}/i, message: "should be in the form abc@123.com"

  validates :user_id, presence: true
end
