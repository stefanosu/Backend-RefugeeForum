class ApplicationController < ActionController::API

  # @user = 'dogs' 

  def secret
    'my_secret'
  end

  def current_site_user
    @user = User.find_by(username: login_params[:username])
  end
end
