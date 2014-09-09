class PhotosController < ApplicationController
  def new
    @photo = Photo.new
  end

  def create
    @item = Item.find(params[:item_id])
    @photo = Photo.create(photo_params)
    if @photo.save
      flash[:notice] = "Photo added"
      @item.photos << @photo
      redirect_to item_path(@item)
    else
      redirect_to item_path(@item)
    end
  end

  private
    def photo_params
      params.require(:photo).permit(:item_image)
    end
end
