$(document).ready( function(){
  setInterval(function(){
    $('ul#log').load(document.location.pathname + ' ul#log');
  }, 500);
});

