get '/users/:id' do
  @user = User.find(params[:id])
  erb :profile
end


#render specific survey with partial
get '/users/:id/surveys/:survey_id' do

  erb :_survey
end

#create button on profile redirects to creation form
get '/users/:id/surveys/new' do
  @new_survey = Survey.create(user_id: params[:id])
  erb :create
end


############ SURVEY CREATION #############

# #add question
# post '/users/:id/surveys/:survey_id/questions/new' do

# end

# #add choice to question
# post '/users/:id/surveys/:survey_id/questions/:question_id/choices/new' do

# end

#submit completed survey, redirect to profile.erb
post '/users/:id/surveys' do
  # current_user.surveys << survey creation
end
