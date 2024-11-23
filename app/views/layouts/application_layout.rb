class ApplicationLayout < Phlex::HTML
  include Phlex::Rails::Layout
  
  def initialize(page_title: "Eventz", helpers:)
    @page_title = page_title
  end

  def view_template(&)
    doctype 
    html lang: "es", data_theme: "luxury", class: "bg-base-100" do
      head do
        meta charset: "utf-8"
        title { @page_title }
        meta name: "viewport", content: "width=device-width, initial-scale=1"

       
        csrf_meta_tags
        csp_meta_tag

        
        stylesheet_link_tag("tailwind", "inter-font", "application", "data-turbo-track": "reload")

       
        link(
          href: "https://cdn.jsdelivr.net/npm/daisyui@4.4.19/dist/full.css",
          rel: "stylesheet",
          type: "text/css"
        )

        javascript_importmap_tags
      end

      body class: "min-h-screen flex flex-col" do
        header class: "navbar bg-primary text-primary-content shadow-lg" do
          div class: "container mx-auto px-4" do
            div class: "flex-1" do
              div class: "flex items-center space-x-2" do
               
                inline_svg("logo.svg", class: "w-10 h-10", title: "Eventz Logo", aria: { label: "Eventz Logo" })
                span(class: "text-xl font-bold text-primary-content") { "Eventz" }
              end
            end
          end
        end

        main class: "flex-1 container mx-auto px-4 py-8" do
          yield
        end

        footer do
          render(FooterComponent.new)
        end
      end
    end
  end

  private

  def csrf_meta_tags
    csrf_meta_tags
  end

  def csp_meta_tag
    csp_meta_tag
  end
end
