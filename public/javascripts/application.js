$(document).ready( function(){
  setInterval(function(){
    $('#log_container').load(document.location.pathname + ' ul#log');
  }, 500);
});

