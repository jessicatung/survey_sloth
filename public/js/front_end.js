$(document).ready(function() {
  $('#login_form').hide();
  $('#login').on("click", function(event) {
    $('#signup_form').hide();
    $('#login_form').fadeIn('slow');

  });

  $('#signup_form').hide();
  $('#signup').on("click", function(event) {
    $('#login_form').hide();
    $('#signup_form').fadeIn('slow');
  });
});