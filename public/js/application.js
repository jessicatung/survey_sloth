//  Our attempt at dynamic question/choice

// $(document).ready(function() {
//   $('.add_q').on("click", addQuestion);
// });

// var questionCount = 0;
// var choiceCount = 0;

// function addQuestion(e){
//   e.preventDefault();

//   questionCount++;

//   $('.newsurvey').append('<form action="/create/new" method="post" class="question' + questionCount +'"><br><input  type="text" name="question' + questionCount + '" placeholder="enter a question"/><br>');
//   $('.newsurvey').append('<button class="add_c' + questionCount + '"> ADD CHOICE </button> <input class="next" type="submit" value="Done" action="/create/"></form>');

//   $('.add_c'+ questionCount).on("click", addChoice);

// }



// function addChoice(e){
//   choiceCount++
//   e.preventDefault();
//   $('.question' + questionCount).append('<input class="choice" type="text" name="choice'+ choiceCount + '" placeholder="Enter a choice"/><br>');
// }

//  ------------------------------------

$(document).ready(function() {
  $('.survey').on('click', function(event) {
    event.preventDefault();
    var link = $(this);
    $.ajax({
      url: link.attr('href'),
      type: "GET"
    }).done(function(server_data){
      console.log(server_data)
      $('#survey').append(server_data);
    })
  }),

  $('#newsurvey').on('submit', function(event){
    event.preventDefault();
    serialize = $(this).serialize(),
    $.ajax({
      url: $(this).attr("action"),
      type: "post",
      data: serialize
    }).done(function(server_data) {
      $('.survey_container').append(server_data)

      $('.questions').on('submit', function(event) {
        console.log($(this).serialize())
        event.preventDefault();
        $.ajax({
          url: $(this).attr('action'),
          type: "post",
          data: $(this).serialize
        }).done(function(s_data) {
          $('.survey_container').append(s_data);
        })
      })
    })
  })
});
















