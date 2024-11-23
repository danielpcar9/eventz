class Events::IndexView < Phlex::HTML
  def initialize(events:, helpers:)
    @events = events
    @helpers = helpers
  end

  def view_template
    @events.each do |event|
      section class: "event mb-4 p-4 bg-neutral rounded-lg shadow" do
        header class: "mb-2" do
          h2(class: "text-lg font-bold") { event.name }
          p(class: "text-sm text-gray-500") { "Location: #{event.location} - Price: #{event.price}" }
        end

        article class: "mb-2 text-gray-700" do
          plain event.description
        end

        footer class: "text-sm text-gray-400" do
          time { @helpers.day_and_time(event) }
        end
      end
    end
  end
end
