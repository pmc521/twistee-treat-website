class Api::V1::PostsController < ApplicationController

  def index
    render json: Post.all
  end

  def destroy
    Comment.where(post_id: params[:id]).destroy_all
    Post.where(id: params[:id]).destroy_all
  end

  def create
    user = current_user
    body = params[:body]
    Post.create(user_id: user.id, body: body)
    render json: { post: body}
  end

end
