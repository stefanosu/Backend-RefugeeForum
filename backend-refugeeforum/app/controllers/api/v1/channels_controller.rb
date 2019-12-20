class Api::V1::ChannelsController < ApplicationController
before_action :set_channel, only: [:show, :update, :destroy]

  # GET /channels
  def index
    @channels = Channel.all
    render json: channelSerializer.new(@channel).serialized_json
  end

  # GET /channel/1
  def show
    render json: @channel
  end

  # POST /channel
  def create 
    @channel = channel.create(channel_params)
    # byebug
    if @channel.valid? 
      render json: @channel
    else 
      render json: {errors: @channel.errors.full_messages}
    end
  end
  

  # PATCH/PUT /channel/1
  def update
    if @channel.update(channel_params)
      render json: @channel
    else
      render json: @channel.errors, status: :unprocessable_entity
    end
  end

  # DELETE /channel/1
  def destroy
    @channel.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_channel
      @channel = channel.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def channel_params
      # byebug
      params.require(:channel).permit(:name, :user_id)
    end

end
