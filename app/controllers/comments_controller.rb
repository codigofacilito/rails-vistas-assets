class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    @comment.user_id = current_user.id
    @comment.save
    redirect_to post_path(@comment.post_id)
  end

  private
    def comment_params
      params.require(:comment).permit(:content, :post_id, :title)
    end
end