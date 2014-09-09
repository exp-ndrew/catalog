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
      redirect_to item_path(@item)
    end
  end

  def destroy
    @item = Item.find(params[:item_id])
    @photo = @item.photos.find(params[:id])
    @photo.item_image = nil
    @photo.save
    @photo.destroy
    flash[:notice] = "Photo deleted."
    redirect_to item_path(@item)
  end

  private

  def photo_params
    params.require(:photo).permit(:item_image, :item_id)
  end

end
