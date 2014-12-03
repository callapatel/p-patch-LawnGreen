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
end
