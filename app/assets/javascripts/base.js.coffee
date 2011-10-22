$ ->
  hideFlashMessages()


hideFlashMessages = ->
  $('.notice, .alert').delay(3000).hide('fade');
