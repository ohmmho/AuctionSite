class Bid < ActiveRecord::Base

  belongs_to :item
  belongs_to :user

  validates :amount, numericality: true
  
end
