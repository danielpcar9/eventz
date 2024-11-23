class FooterComponent < Phlex::HTML
  def view_template
    footer(class: "footer bg-neutral text-neutral-content items-center p-4") do
      aside(class: "grid-flow-col items-center") do
        # Logo
        svg(width: "36", height: "36", viewBox: "0 0 24 24", xmlns: "http://www.w3.org/2000/svg", fill_rule: "evenodd", clip_rule: "evenodd", class: "fill-current") do |svg|
          svg.path(d: "M22.672 15.226l-2.432...") 
        end
        p { "Copyright © #{Time.now.year} - All right reserved" }
      end

      nav(class: "grid-flow-col gap-4 md:place-self-center md:justify-self-end") do
        # Twitter
        a do
          svg(width: "24", height: "24", xmlns: "http://www.w3.org/2000/svg", class: "fill-current") do |svg|
            svg.path(d: "M24 4.557c-.883...")
          end
        end

        # YouTube
        a do
          svg(width: "24", height: "24", xmlns: "http://www.w3.org/2000/svg", class: "fill-current") do |svg|
            svg.path(d: "M19.615 3.184c-3.604...")
          end
        end

        # Facebook
        a do
          svg(width: "24", height: "24", xmlns: "http://www.w3.org/2000/svg", class: "fill-current") do |svg|
            svg.path(d: "M9 8h-3v4h3v12h5...")
          end
        end
      end
    end
  end
end
