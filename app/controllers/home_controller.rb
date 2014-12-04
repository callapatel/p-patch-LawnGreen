class HomeController < ApplicationController
require './lib/weather'

  def index

    #self.myweathermethod

  end

  def weather
    @current = Weather.current_weather(params[:lat], params[:lon])
    @thing = true
    render :partial => "weather"
    #render :partial => "weather", :locals => {myName: @myThing}
  end

end
