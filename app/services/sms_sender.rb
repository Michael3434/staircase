require 'twilio-ruby'

class SmsSender

  attr_accessor :content, :recipient
def initialize(content, recipient = [])
  @content = content # Body
  @recipient = recipient # Array of string with numbers
end

def send
  byebug
  client = Twilio::REST::Client.new ENV['TWILIO_SID'], ENV['TWILIO_AUTHTOKEN']
  from = "+33644608116" # Your Twilio number
    to = @recipient
    client.account.messages.create(
      :from => from,
      :to => to,
      :body => @content
    )
end
end

