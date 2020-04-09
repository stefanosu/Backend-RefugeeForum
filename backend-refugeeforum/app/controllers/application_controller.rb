class ApplicationController < ActionController::API


  def secret
    'my_secret' 
  end

  def login_params
    # byebug
    params.permit(:username, :password)
  end

  def current_site_user 
    @user = User.find_by(username: login_params[:username])
  end
end


