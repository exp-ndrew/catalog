class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @item = Item.new
  end

  def show
    @item = Item.find(params[:id])
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

  def edit
    @item = Item.find(params[:id])
    @name = @item.name
  end

  def update
    @item = Item.find(params[:id])
    @name = @item.name
    @item.update(item_params)
    if @item.save
      flash[:notice] = "#{@item.name} updated."
      redirect_to item_path(@item)
    else
      render 'edit'
    end
  end

  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    flash[:notice] = "#{@item.name} deleted."
    redirect_to items_path
  end

  private
  def item_params
    params.require(:item).permit(:name)
  end

end


