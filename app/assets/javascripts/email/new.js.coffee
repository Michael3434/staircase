$(document).on "ready page:load", ->
  if $(".public.email.new").length > 0
    $('.plombier').on "click", ->
      obj = new MessageGenerator
      message = obj.generate(this.classList[1])
      $('#email_content').val(message)
