class EventsController < ApplicationController
  def index
    @events = Event.all
    render Events::IndexView.new(events: @events)
  end
end