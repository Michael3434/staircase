class EmailController < ApplicationController

def new
  @email = Email.new
end

def create
  raise
  redirect_to root_path
end

end
