class SessionsController < ApplicationController
  def new
    redirect_to '/auth/twitter'
  end

  def create
    auth_hash = request.env['omniauth.auth']
    @user = User.find_or_create_from_auth_hash(auth_hash)
    # TODO; reset session and set it to new user (reset_session, session[:user_id] = @user.id, self.current_user = @user
    redirect_to root_path, notice: 'Signed in with Twitter!'
  end

  protected
  
  def auth_hash
    request.env['omniauth.auth']
  end
end
