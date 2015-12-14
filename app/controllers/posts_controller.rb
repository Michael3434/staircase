require 'twilio-ruby'

class PostsController < ApplicationController

def new
  @post = Post.new
end

def create
  @post = current_user.posts.build(post_params)

  if @post.save
    twilio_example
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

def twilio_example(list, content)
  @building = current_user.apartment_user.first.building
  @user = User.all
  @user.each do |user|
    if user.apartment_user.first.building == @building
      account_sid = ENV['TWILIO_SID']
      auth_token = ENV['TWILIO_AUTHTOKEN']
      client = Twilio::REST::Client.new account_sid, auth_token
      from = "+33644607391" # Your Twilio number
      to =   "#{user.phone_number}"
      client.account.messages.create(
        :from => from,
        :to => to,
        :body => "#{content}"
      )
    end
  end

end

def post_params
    params.require(:post).permit(:user_id, :title, :content, :post_type, :date)
end

def set_post
  @post = Post.find(params[:id])
  end

end
