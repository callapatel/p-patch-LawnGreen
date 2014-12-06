class HomeController < ApplicationController
require './lib/weather'
require './lib/calendar'
require 'date'

  def index
    current_month = Time.now.month
    current_year = Time.now.year
    calend = Calendar.new
    @month = calend.grab_month(current_year, current_month)
    @calendar = calend.date_layover(@month)
    @week1 = @calendar[0..6]
    @week2 = @calendar[7..13]
    @week3 = @calendar[14..20]
    @week4 = @calendar[21..27]
    @week5 = @calendar[28..34]
  end

  def weather
    @current = Weather.current_weather(params[:lat], params[:lon])
    @thing = true
    @forecasted = Weather.forecast(params[:lat], params[:lon])
    render :partial => "weather"
    #render :partial => "weather", :locals => {myName: @myThing}
  end
  

end
