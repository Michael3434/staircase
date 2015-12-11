class PagesController < ApplicationController
  before_action :authenticate_user!
  before_action :apartment_user?

  def home
    @posts = Post.all.reverse
    @post_calendar = []
    @posts.each do |post|
      @post_calendar << post if !post.date.nil?
    end
  end

  def landing
  end

  private

  def apartment_user?
    if current_user.apartment_users.empty?
      redirect_to new_apartment_path, notice: "Tell us where do you leave"
    end
  end
end
