$(document).on "ready page:load", ->
  if $(".public.sms.new").length > 0
    $('.plombier').on "click", ->
      obj = new MessageGenerator
      message = obj.generate(this.classList[1])
      $('#sms_content').val(message)
