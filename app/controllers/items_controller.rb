class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def create
    @item = Item.create(item_params)
    if @item.save
      flash[:notice] = "Item created."
      redirect_to items_path
    else
      render new_item_path
    end
  end

  private
  def item_params
    params.require(:item).permit(:name)
  end

end


