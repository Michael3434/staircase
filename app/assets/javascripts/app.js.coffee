window.app ||= {}

app.init = ->
  $('.grid').isotope
    layoutMode: 'packery'
    itemSelector: '.grid-item'

$(document).on "ready page:load", ->
  app.init()
