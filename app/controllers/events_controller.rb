class EventsController < ApplicationController
require './lib/weather'
require './lib/calendar'
require 'date'

  def new
    @event = Event.new(params.require(:event).permit(:title, :description, :date))
    if @event.save
      redirect_to root_path
    else
      render :new
    end
  end

end
