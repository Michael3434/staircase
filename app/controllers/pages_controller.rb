class PagesController < ApplicationController
  def home
    @posts = Post.all.reverse


    @post_calendar = []
    @posts.each do |post|
      @post_calendar << post if !post.date.nil?
    end


  end
end
