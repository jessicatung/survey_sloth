$(document).ready(function() {
  $('.survey').on('click', function(event) {
    event.preventDefault();
    var link = $(this);
    $.ajax({
      url: link.attr('href'),
      type: "GET",
    }).done(function(server_data){
      $('#survey').append(server_data);
    }).fail(function(){
      console.log("failed");
    })
  })
});
