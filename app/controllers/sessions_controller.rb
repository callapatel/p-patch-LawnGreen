class SessionsController < ApplicationController
  def create
    #@uid = request.env["omniauth.auth"]["uid"]
    auth_hash = request.env['omniauth.auth']
    user = User.where(uid: auth_hash['uid']).first 
    if user == nil
      user = User.create(name: auth_hash['info']['name'], username: auth_hash['info']['nickname'], uid: auth_hash['uid'], admin: false)
      user.save
      session[:user_id] = user.id
    else
      session[:user_id] = user.id
    end
    redirect_to "/"
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end

end
