class ItemsController < ApplicationController

  def index
      @items = Item.all.where("end_date > ?",Date.today) 
    end

    def new
      @item = Item.new
    end

    def create
      @item = Item.new item_params

      if @item.save
        redirect_to action: 'index'
      else
        render 'new'
      end
    end

    def show
      @item = Item.find params[:id]
      @users = User.all
      @bid = Bid.new
    end

    def destroy
      @item = Item.find params[:id]
      @item.destroy
      redirect_to action: 'index'
    end

    private
    def item_params
      params.require(:item).permit(:name, :end_date)
    end

end
