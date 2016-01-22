class CommentsController < ApplicationController
  def create
    @post = Post.find(params[:post_id])
    @comment = @post.comments.create!(comment_params) if verify_recaptcha(model: @comment)
    redirect_to @post
  end

  private

    def comment_params
      params.require(:comment).permit(:title, :body, :owner)
    end
end
