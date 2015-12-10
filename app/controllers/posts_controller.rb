class PostsController < ApplicationController

def new
  @post = Post.new
end

def create
  @post = current_user.posts.build(post_params)

  if @post.save
    redirect_to root_path, notice: "Saved..."
  else
    redirect_to new_post_path, alert: "Error to save..."
  end

end

def edit
  @post = Post.find(params[:id])
end

def update
  @post = Post.find(params[:id])
  redirect_to root_path
end


def destroy
 @post = Post.find(params[:id])
 @post.destroy
 redirect_to root_path, notice: "Supprimer..."
end


private

def post_params
    params.require(:post).permit(:user_id, :title, :content, :post_type, :date)
end

def set_post
  @post = Post.find(params[:id])
  end

end
