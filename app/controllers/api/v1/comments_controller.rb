class Api::V1::CommentsController < ApplicationController
  def index
    render json: Comment.all
  end

  def create
    user = current_user
    post = params[:post].to_i
    body = params[:body]
    Comment.create(post_id: post, user_id: user.id, body: body)
    render json: { post: body}
  end

end
