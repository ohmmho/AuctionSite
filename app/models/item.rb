class Item < ActiveRecord::Base
  has_many :bids
  has_many :users, through: :bids
  
  validates :end_date, presence: true

  validate :proper_date




    def assign_winner
      self.update_attribute :winner_id, self.bids.last.user_id
    end

    def price_sold
      self.update_attribute :end_price, self.bids.last.amount
    end

    def total_bids
      self.update_attribute :total_bid_num, self.bids.size
    end

  private
    def proper_date
      if end_date < Date.today
        errors.add( :end_date, "Wrong date")
      end
    end

end
 