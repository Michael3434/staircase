class SmsSender
  def initialize(content, recipient)
    @content = content # Body
    @recipient = recipient # Array of string with numbers
  end

  def send
    client = Twilio::REST::Client.new ENV['TWILIO_SID'], ENV['TWILIO_AUTHTOKEN']
    from = "+33644607391" # Your Twilio number
      to = @recipent
      client.account.messages.create(
        :from => from,
        :to => to,
        :body => @content
      )
  end
end
