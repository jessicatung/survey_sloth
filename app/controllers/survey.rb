#create button on profile redirects to creation form
get '/users/:id/surveys/new' do
  @user = User.find(params[:id])
  erb :create
end

#render specific survey with partial
get '/users/:id/surveys/:survey_id' do
  erb :_survey, layout: false
end

post '/users/:id/surveys' do
  survey = Survey.create(title: params[:title])
  current_user.surveys << survey
  erb :_question, layout: false, locals: {survey: survey}
end

post '/users/:id/surveys/:survey_id/questions' do
  survey = Survey.find(params[:survey_id])
  question = Question.create(content: params[:question])
  survey.questions << question
  erb :_choice, layout: false, locals: {survey: survey, question: question}
end

# post '/users/:id/surveys/:survey_id/questions/:question_id/choices' do
#   survey = Survey.find(params[:survey_id])
#   question = Question.find(params[:question_id])
#   choice = question.choices.create(content: params[:content])
#   erb :_choice, layout: false, locals: {survey: survey, question: question, choice: choice}
# end


