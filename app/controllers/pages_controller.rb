class PagesController < ApplicationController
  before_action :authenticate_user!, except: [:landing]

  def home
    @comment = Comment.new
    @building_id = current_user.id_building_to_show
    @posts = Post.all.where(id_building: @building_id).reverse
    get_event
    @building = Building.find(current_user.id_building_to_show)

  end

  def hallparis
    @comment = Comment.new
    @building_id = Building.find(2).id
    @posts = Post.all.where(id_building: @building_id).reverse
    get_event
    @building = Building.find(2)
  end

  def landing
    @user = User.new
    redirect_to home_path if current_user
  end

  def search
    current_user.id_building_to_show = params[:building_id].to_i
    current_user.save
    redirect_to home_path
  end

  def date
    current_user.startnothere = params[:date_start]
    current_user.endnothere = params[:date_end]

    current_user.save
    redirect_to home_path
  end

  def get_event
    today = Date.today
    @dates_header = (today..today+7).map { |date| date.strftime("%v").capitalize }

    @h = Hash.new{|hsh,key| hsh[key] = [] }
    @posts.map do |post|
      if !post.date.nil?
        if @dates_header.include? post.date.strftime("%v").downcase
          @h[post.date.strftime("%v")].push post
        end
      end
    end
    return @events = Hash[@h.sort]
  end

  private

  def time_calendar
    strftime("%v")
  end
end
