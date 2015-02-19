class BidsController < ApplicationController

  def create
    @bid = Bid.new bid_params
    @bid.save
    
    redirect_to item_path(@bid.item_id)
  end

  

 private
    def bid_params
      params.require(:bid).permit(:item_id, :user_id, :amount)
    end
end
