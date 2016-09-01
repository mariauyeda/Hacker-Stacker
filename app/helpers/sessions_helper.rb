helpers do

  def current_user
    @current_user ||= User.find(session[:id]) if session[:id]
  end

  # I don't think we need this...

  # def logged_in?
  #   current_user
  # end

end
