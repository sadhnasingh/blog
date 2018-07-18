class RepliesController < ApplicationController
	def create

    
    @reply = Reply.new(:body=>params[:reply][:body],:commen_id=>params[:reply][:comment_id])
    @reply.save
    flash[:notice]= "replies created"
    redirect_to "/bloggers/#{params[:blogger_id]}"
    
  end
  
  def new
   @reply = Reply.new
  end
 
  # def destroy
  #   @blogger = Blogger.find(params[:blogger_id])
  #   @comment = @blogger.comments.find(params[:id])
  #   @comment.destroy
  #   redirect_to blogger_path(@blogger)
  # end
 
  private
    def reply_params
      params.require(:reply).permit(:comment_id, :body)
    end
end
