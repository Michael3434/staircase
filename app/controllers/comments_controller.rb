class CommentsController < ApplicationController

  def index
  end

  def new
  end

 def create
  @comment = current_user.comments.build(content: params[:content], post_id: params[:post_id])
  if @comment.save
      @post_id = params[:post_id]
     respond_to do |format|
        format.html { redirect_to home_path, notice: "Commentaire sauvgarder" }
        format.js
      end
  else
    redirect_to home_path, alert: "Error to save..."
  end

end


  def update
  end

  def destroy
  end

  private

  def comment_params
    params.require(:comments).permit(:user_id, :content)
end

def set_post
  @post = Post.find(params[:id])
  end


end
