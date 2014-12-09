class UsersController < ApplicationController
  def create
    @user = User.new(user_params)
  end

  def user_params
    params.require(:user).permit(
    :username,
    :name,
    :uid,
    :admin,
    )
  end
  
  def email
    User.find(session[:user_id]).update(params.require(:user).permit(:email))
    redirect_to root_path
  end
end
