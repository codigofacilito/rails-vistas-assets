class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.save
    
    respond_to do |format|
      if @comment.save
        format.html { redirect_to post_path(@comment.post_id) }
        format.turbo_stream 
      else
        format.html { redirect_to post_path(@comment.post_id), notice: "No pudimos añadir el comentario" }
      end
    end
  end

  private
    def comment_params
      params.require(:comment).permit(:content, :post_id, :title)
    end
end
