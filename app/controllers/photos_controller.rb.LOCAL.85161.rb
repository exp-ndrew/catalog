class PhotosController < ApplicationController
  def new
    @photo = Photo.new
  end

  def create
    @item = Item.find(params[:item_id])
    @photo = Photo.new(photo_params)
    if @photo.save
      flash[:notice] = "Photo added"
      @item.photos << @photo
      redirect_to item_path(@item)
    else
      render 'new'
    end
  end

  private
    def photo_params
      params.require(:photo).permit(:image)
    end
end
