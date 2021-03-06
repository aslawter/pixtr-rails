class CommentsController < ApplicationController
  def create  
    @image = Image.find(params[:image_id])
    @comment = Comment.new(comment_params)
    @comment.image = @image

    if @comment.save
      redirect_to @image
    else
      @comments = image.comments.recent
     render "images/show"
     end
  end 
   # @comment = Comment.new(comment_params)
   # @comment.image_id = params[:image_id]
   # @comment.user_id = current_user.id
   # @comment.save  
    
  def comment_params
    params.require(:comment).permit(
      :body
       ).merge(user_id: current_user.id)
  end
end
