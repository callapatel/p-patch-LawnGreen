class ToolsController < ApplicationController

  def index
    if session[:user_id]
      @user = User.find(session[:user_id])
    end
  end

  def borrow
    ToolUser.create(user_id: session[:user_id], tool_id: params[:tool_id])
    x = Tool.find(params[:tool_id])
    x.quantity -= 1
    x.save
    redirect_to tools_path
  end

  def return
    ToolUser.find_by(user_id: session[:user_id], tool_id: params[:tool_id]).destroy
    x = Tool.find(params[:tool_id]) #can add method in model to destroy tool
    x.quantity += 1
    x.save
    redirect_to tools_path
  end

end
