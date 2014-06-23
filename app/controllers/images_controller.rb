class ImagesController < ApplicationController
  def show
    @image = Image.fine(params[:id])

  end

  def new
    @gallery = Gallery.find(params[:gallery_id])
    @image = Image.new
  end

  def create
    @gallery = current_user.galleries.find(params[:gallery_id])
    @image = @gallery.images.new(image_params)

    if @image.save
      redirect_to @gallery
    else
      render :new
    end
  end

  def edit
    @image = current_user.images.find(params[:id])
  end

  def update
    @image = current_user.images.find(params[:id])

    if @image.update(image_params)
      redirect_to @image.gallery
    else
      render :edit
    end
  end

  private

  def image_params
    params.
      require(:image).
      permit(:url)
  end
end
