class Events::IndexView < Phlex::HTML
  def initialize(events:, helpers:)
    @events = events
    @helpers = helpers
  end

  def view_template
    @events.each do |event|
      section do
        div do
          strong { event.name }
          plain " in #{event.location}:"
          plain @helpers.price(event)
        end

        div class: "mb-2" do
          plain event.description
        end

        div do
          plain @helpers.day_and_time(event)
        end
      end
    end
  end
end
