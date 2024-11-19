class EventsController < ApplicationController
  def index
    @events = Event.all
    render Events::IndexView.new(events: @events, helpers: view_context)
  end
end
