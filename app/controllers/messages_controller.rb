class MessagesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_conversation

  def index

    if current_user == @conversation.sender || current_user == @conversation.recipient
    @other = current_user == @conversation.sender ? @conversation.recipient : @conversation.sender
    @messages = @conversation.messages.order("created_at DESC")

      @messages.each do |message|
        mark_as_read(message) if message.user == @other
      end

    else
      redirect_to conversations_path, alert: "You don't have the permission to view this."
    end

  end

  def create
    if params[:message][:content] != ""
      @message = @conversation.messages.new(message_params)
      @messages = @conversation.messages.order("created_at DESC")

      if @message.save
        respond_to do |format|
        format.html { redirect_to conversation_messages_path(@conversation) }
        format.js  # <-- will render `app/views/reviews/create.js.erb`
        end
      end

    else
      redirect_to conversation_messages_path(@conversation)
    end

  end

  def mark_as_read(message)
   message.update(opened: true)
  end


  private

  def message_params
    params.require(:message).permit(:content, :user_id)
  end

  def set_conversation
    @conversation = Conversation.find(params[:conversation_id])
  end
end
