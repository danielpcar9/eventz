module EventsHelper
  include ActionView::Helpers::NumberHelper

  def price(event)
    if event.price == 0
      "Free"
    else 
      number_to_currency(event.price, precision: 0)
    end
  end
end
