
class UsersController < ApplicationController
  before_action :require_logged_out

  def create
    @user = User.new(user_params)
    if @user.save
      msg = UserMailer.welcome_email(@user)
      msg.deliver_now
      redirect_to new_session_url
    else
      flash.now[:errors] = @user.errors.full_messages
      render :new
    end
  end

  def new
    @user = User.new
  end

  private

  def user_params
    params.require(:user).permit(:password, :username)
  end
end