class PhotosController < ApplicationController
  def new
    @item = Item.find(params[:item_id])
    @photo = Photo.new
  end

  def create
    @item = Item.find(params[:item_id])
    @photo = @item.photos.new(photo_params)
    if @photo.save
      flash[:notice] = "Photo added."
      redirect_to item_path(@item)
    else
      render 'new'
    end
  end

  private
  def photo_params
    params.require(:photo).permit(:item_image, :item_id)
  end
end
