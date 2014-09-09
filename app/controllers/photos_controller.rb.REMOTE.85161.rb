class PhotosController < ApplicationController
  def new
    @item = Item.find(params[:item_id])
    @photo = Photo.new
  end

  def create
    @item = Item.find(params[:item_id])
    @photo = @item.photos.new(photo_params)
    if @photo.save
      flash[:notice] = "Photo added"
      redirect_to items_path
    else
      render 'new'
    end
  end

  private

  # Use strong_parameters for attribute whitelisting
  # Be sure to update your create() and update() controller methods.

  def photo_params
    params.require(:photo).permit(:item_image, :item_id)
  end
end
