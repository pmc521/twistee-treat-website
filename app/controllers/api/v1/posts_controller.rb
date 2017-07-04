class Api::V1::PostsController < ApplicationController
  def index
    render json: Post.all
  end

  def create
    user = current_user
    body = params[:body]
    Post.create(user_id: user.id, body: body)
    render json: { post: body}
  end

end
