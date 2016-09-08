console.log("Testing!")

$(document).ready(function() {
  $("img").click(function(event) {
    alert("Woops, was that supposed to be a link? Maybe to a cat-only pizza shop?");
  });
  $("aside").click(function(event){
    event.preventDefault();
    $(this).hide("slow");
    
  });

});


