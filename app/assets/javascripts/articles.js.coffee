# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/


$ ->
  $("#nav-wrapper").height $("#nav").height()
  $("#nav").affix offset:
    top: $("#nav").offset().top



$ ->
$(document).ready ->
  $("a[href^=\"#\"]").on "click", (e) ->
    e.preventDefault()
    target = @hash
    $target = $(target)
    $("html, body").stop().animate
      scrollTop: $target.offset().top
    , 900, "swing", ->
      window.location.hash = target

      
      return

    return

  return





$ ->
  navMain = $(".navbar-collapse")
  navMain.on "click", "a", null, ->
    navMain.collapse "hide"
    return

  return

window.addEventListener "scroll", (->
  if window.scrollY > 500
    $(".navbar").fadeIn()
  else
    $(".navbar").fadeOut()
  return
), false

