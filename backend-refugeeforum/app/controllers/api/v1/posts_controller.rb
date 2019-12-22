class Api::V1::PostsController < ApplicationController
  before_action :set_post, only: [:show, :update, :destroy]

  # GET /posts
  def index
    @posts = Post.all
    render json: PostSerializer.new(@posts).serialized_json
  end

  # GET /posts/1
  def show
    render json: PostSerializer.new(@post).serailized_json
  end

  # POST /posts
  def create 
    @posts = Post.create(posts_params)
    if @posts.valid? 
      render json: @posts
    else 
      render json: {errors: @posts.errors.full_messages}
    end
  end

  # PATCH/PUT /posts/1
  def update
    if @post.update(post_params)
      render json: @post
    else
      render json: @post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /posts/1
  def destroy
    @post.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  def set_post
    @post = Post.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def post_params
    params.require(:post).permit(:text, :title, :url, :subchannel_id)
  end

end
