class TagsController < ApplicationController
  def index
    @tags = Tag.all
  end

  def show 
    @tag = Tag.find(params[:id])
    @images = @tag.images

  end

  def new 
    @tag = Tag.new
  end

  def create 
    @tag = Tag.new(tag_params)
    @tag.save
  end

  private

  def tag_params
    params.require(:tag).permit(
      :name,
    )
  end
end
