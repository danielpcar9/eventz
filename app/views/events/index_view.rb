class Events::IndexView < Phlex::HTML
  include EventsHelper
  def initialize(events:)
    @events = events
  end

  def template
    ul class: "list-disc pl-5 space-y-8" do
      @events.each do |event|
        li class: "mb-6" do
          div class: "mb-2" do
            strong { event.name }
            plain " in #{event.location}:"
            plain price(event)
          end
          
          div class: "mb-2" do
            plain event.description 
          end

          div do
            day_and_time(event)
          end
        end
      end
    end
  end
end