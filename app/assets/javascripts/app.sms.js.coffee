app.sms =
  init: ->
    $('.plombier').on "click", ->
      obj = new MessageGenerator
      message = obj.generate(this.classList[1])
      $('#sms_content').val(message)
    $('.coupure-d-eau').on "click", ->
      obj = new MessageGenerator
      message = obj.generate(this.classList[1])
      $('#sms_content').val(message)

$(document).on "ready page:load", ->
  app.sms.init() if $(".public.sms.new").length > 0
