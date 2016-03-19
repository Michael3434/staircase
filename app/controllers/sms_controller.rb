class SmsController < ApplicationController

def new
  @sms = Sms.new
end

def create
  content = params["sms"]["content"]
  group = params["sms"]["recipient"]
  recipients = get_recipient(group)

  SmsSender.new(content, recipients).send

  redirect_to root_path
end

def get_recipient(group)
  case group
  when "Tout l'immeuble"
    ["+33661116744"]
  end
end

end

