helpers do

  def current_user
    if session[:user_id]
      @current_user ||= User.find(session[:user_id])
    end
  end

  def logged_in?
    !current_user.nil?
  end

  def login
    @user = User.find_by(email: params[:email])
    if @user.password == params[:password]
      session[:user_id] = @user.id
      return @user
    else
      redirect '/'
    end
  end

end
