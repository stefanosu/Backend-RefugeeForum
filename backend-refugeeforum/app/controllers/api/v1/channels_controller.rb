class Api::V1::ChannelsController < ApplicationController
before_action :set_channel, only: [:show, :update, :destroy]

  # GET /channels
  def index
    @channels = Channel.all
    render json: @channels
    # ChannelSerializer.new(@channels).serialized_json
  end

  def show
    render json: @channel
  end

  def create 
    # byebug
    User.find(@user[:user_id]) 
    channel = Channel.create(channel_params)
    if channel.valid?  
      # render json:  UserSerializer.new(@channel)
      render json: { ok: true }, status: 200
    else 
      render json: { errors: channel.errors.full_messages }
    end
  end

  def update
    if @channel.update(channel_params)
      render json: @channel
    else
      render json: @channel.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @channel.destroy
  end

  private
  def set_channel
    @channel = channel.find(params[:id])
  end

  def channel_params
    params.require(:channel).permit(:title, :user_id)
  end
end
