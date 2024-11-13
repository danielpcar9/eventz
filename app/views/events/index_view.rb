class Events::IndexView < Phlex::HTML
  def initialize(events:)
    @events = events
  end

  def view_template
    ul class: "list-disc pl-5" do
      @events.each do |event|
        li { event }
      end
    end
  end
end