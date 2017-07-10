class UsersController < ApplicationController

  before_action :authenticate_user!, except: [:new]

  def new
    @user = User.new
  end

  def edit
    @user = User.find(current_user.id)
  end

  def index
    @users = User.all
  end


  def show
    @user = User.find(params[:id])
  end

  def destroy
    @user = User.find(current_user.id)
    unless @user.destroyable_by?(current_user, @user)
      flash[:alert] = "You do not have permission to delete that user."
      redirect_to :root
    else
      schedules = Schedule.where(user_id: current_user)
      posts = Post.where(user_id: current_user)
      comments = Comment.where(user_id: current_user)
      posts.destroy_all
      comments.destroy_all
      schedules.destroy_all
      current_user.destroy
      respond_to do |format|
        format.html { redirect_to root_path, notice: 'Profile was successfully deleted.' }
        format.json { head :no_content }
      end
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :phone_number, :avatar, :admin)
  end
end
