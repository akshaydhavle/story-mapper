$ ->
  draggifyStickies()
  
draggifyStickies = ->
  $('.sticky').draggable({ grid: [160, 160]})
