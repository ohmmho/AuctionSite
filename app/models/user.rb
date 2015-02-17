class User < ActiveRecord::Base

  has_many :bids
  has_many :items, through: :bids
  
  validates :email, presence: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i }
end
