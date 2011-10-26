$ ->
  draggifyStickies()
  
draggifyStickies = ->
  $('.sticky').draggable({ 
    grid: [160, 160]
    stack: '.sticky'
  });
  
