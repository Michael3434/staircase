require 'twilio-ruby'

class PostsController < ApplicationController

def new
  @post = Post.new
end

def create
  @post = current_user.posts.build(post_params)

  if @post.save
    # twilio_example
    redirect_to home_path, notice: "Saved..."
  else
    redirect_to new_post_path, alert: "Error to save..."
  end

end

def edit
  @post = Post.find(params[:id])
end

def update
  @post = Post.find(params[:id])
  redirect_to home_path
end


def destroy
 @post = Post.find(params[:id])
 @post.destroy
 redirect_to home_path, notice: "Supprimer..."
end


private

# def twilio_example
#   account_sid = ENV['TWILIO_SID']
#   auth_token = ENV['TWILIO_AUTHTOKEN']
#   client = Twilio::REST::Client.new account_sid, auth_token
#   from = "+33644607391" # Your Twilio number
#   to =   "+33646462144"
#   client.account.messages.create(
#     :from => from,
#     :to => to,
#     :body => "Hey Yo, this is my message from Twilio using Ruby"
#   )
# end

def post_params
    params.require(:post).permit(:user_id, :title, :content, :post_type, :date)
end

def set_post
  @post = Post.find(params[:id])
  end

end
