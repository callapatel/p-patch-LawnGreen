class SessionsController < ApplicationController
  def create
    @uid = request.env["omniauth.auth"]["user_id"]
    auth_hash = request.env['omniauth.auth']
    raise
    redirect_to "/"
  end
end
