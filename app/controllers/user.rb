get "/" do
  erb :index
end

#sign up
post '/users' do
  user = User.create(email: params[:email], password: params[:password])
  session[:user_id] = user.id
  redirect "/"
end

#login
post '/users/:id' do
  login
  redirect "/"
end

delete '/signout' do
  session[:user_id] = nil
  redirect '/'
end
