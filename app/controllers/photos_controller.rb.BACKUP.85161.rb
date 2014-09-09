class PhotosController < ApplicationController
  def new
<<<<<<< Updated upstream
=======
    @item = Item.find(params[:item_id])
>>>>>>> Stashed changes
    @photo = Photo.new
  end

  def create
    @item = Item.find(params[:item_id])
<<<<<<< Updated upstream
    @photo = Photo.new(photo_params)
    if @photo.save
      flash[:notice] = "Photo added"
      @item.photos << @photo
      redirect_to item_path(@item)
=======
    @photo = @item.photos.new(photo_params)
    if @photo.save
      flash[:notice] = "Photo added"
      redirect_to items_path
>>>>>>> Stashed changes
    else
      render 'new'
    end
  end

  private
<<<<<<< Updated upstream
    def photo_params
      params.require(:photo).permit(:image)
    end
=======

  # Use strong_parameters for attribute whitelisting
  # Be sure to update your create() and update() controller methods.

  def photo_params
    params.require(:photo).permit(:item_image, :item_id)
  end
>>>>>>> Stashed changes
end
