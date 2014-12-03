class SessionsController < ApplicationController
  def create
    @uid = request.env["omniauth.auth"]["uid"]
    auth_hash = request.env['omniauth.auth']
    user = User.find(auth_hash['uid']) == nil 
    if user == nil
      User.create(name: auth_hash['info']['name'], username: auth_hash['info']['nickname'], uid: auth_hash['uid'], admin: false)
      user.save
      session[:user_id] = user.id
    else
      session[:user_id] = user.id
    end
    redirect_to "/"
  #defining a session
  #if user.uid == auth_hash['uid'] -> set session to be that user.id
  #else make a new user with ['info']['name']
  end
end
