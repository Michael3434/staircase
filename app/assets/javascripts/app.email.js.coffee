app.email =
  init: ->
    $('.plombier').on "click", ->
      obj = new MessageGenerator
      message = obj.generate(this.classList[1])
      $('#email_content').val(message)

$(document).on "ready page:load", ->
  app.email.init() if $(".public.email.new").length > 0
