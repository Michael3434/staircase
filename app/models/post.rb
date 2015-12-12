class Post < ActiveRecord::Base
  belongs_to :user
  after_create :send_post_email

  def message_time
    created_at.strftime("%v")
  end

  def date_time
    date.strftime("%v")
  end

  private
  def send_post_email
    UserMailer.post(self.user).deliver_now
  end
end
