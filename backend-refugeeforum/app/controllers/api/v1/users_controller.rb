class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:show, :update, :destroy]

  def show
    render json: @user
  end

  def create
    @user = User.create(user_params)
    if @user.valid?
      @user = user
        token = JWT.encode({user_id: user.id}, secret, 'HS256')
        render json: {user: @user, token: token}
      else
        render json: {errors: @user.errors.full_messages}
      end
  end

  def update
    @user.update(user_params)
    render json: @user
  end

  def destroy
    @user.destroy
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.permit(:username, :password)
  end

end
