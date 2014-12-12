class EventsController < ApplicationController
require './lib/weather'
require './lib/calendar'
require 'date'

  def new
    @event = Event.new(params.require(:event).permit(:title, :description, :date))
    @event.date = convert_date(@event.date)
    if @event.save
      redirect_to root_path
    else
      render :new
    end
  end

  def convert_date(string)
    new_date = string[6..9]+'-'+string[0..1]+'-'+string[3..4]
    new_date
  end

end
