class EventsController < ApplicationController
  def index
    @events = ['Bugsmash', 'Hackaton','Katacamp', 'Rails User Group']
    render Events::IndexView.new(events: @events)
  end
end