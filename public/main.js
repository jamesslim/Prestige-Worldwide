document.addEventListener("DOMContentLoaded", function(){

  window.onload = function() {
      let parent = document.querySelector('body.home');
      if( parent )
        parent.querySelector("#my_audio").play();
  }

 });
