class Events::IndexView < Phlex::HTML
  include EventsHelper
  def initialize(events:)
    @events = events
  end

  def view_template
    ul class: "list-disc pl-5" do
      @events.each do |event|
        li do
          strong { event.name }
          plain " in #{event.location}:"
          plain number_to_currency(event.price, :precision => 0)
        end
      end
    end
  end
end
