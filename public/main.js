document.addEventListener("DOMContentLoaded", function(){
  if( document.body.className == 'home' ) {
     document.body.querySelector("#my_audio").play();
  } else if( document.body.className == 'contact' ) {
     document.querySelector("#target").addEventListener("click",function(){
        document.getElementById('my_audio2').play();
     });
  }

 });