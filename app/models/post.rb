class Post < ActiveRecord::Base
  belongs_to :user

  def message_time
    created_at.strftime("%v")
  end
end
