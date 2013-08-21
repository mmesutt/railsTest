class CommentsController < ApplicationController

  def show
   @welcome=Welcome.find(request[:id])
   @comment=@welcome.comments.new
   @comments=@welcome.comments.all
   @all=Comment.all

  end

  def create
    w_id=params[:comment][:welcome_id]
    @welcome=Welcome.find(w_id)
    @welcome.comments.create(params[:comment].permit(:comment_context))
    redirect_to welcomes_path




  end

end
