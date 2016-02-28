class SmsController < ApplicationController

def new
  @sms = Sms.new
end

def create
  raise
  # SmsSender.new(content, recipient).send
  redirect_to root_path
  end

end

