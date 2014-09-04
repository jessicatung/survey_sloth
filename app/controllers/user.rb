get "/" do
  erb :index
end

#sign up
post '/users' do

end

#login
post '/users/login' do
  #authenticate and redirect appropriately
  redirect '/user/:id'
end



#sign out --> clear session and redirect to home
