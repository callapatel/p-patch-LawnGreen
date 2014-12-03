class SessionsController < ApplicationController
  def create
    @uid = request.env["omniauth.auth"]["uid"]
    auth_hash = request.env['omniauth.auth']
    redirect_to "/"
  end
end
