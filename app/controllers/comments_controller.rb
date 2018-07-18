class CommentsController < ApplicationController
	def create
    @blogger = Blogger.find(params[:blogger_id])
    @comment = @blogger.comments.create(comment_params)
    redirect_to blogger_path(@blogger)
  end
 
  def destroy
    @blogger = Blogger.find(params[:blogger_id])
    @comment = @blogger.comments.find(params[:id])
    @comment.destroy
    redirect_to blogger_path(@blogger)
  end
 
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
