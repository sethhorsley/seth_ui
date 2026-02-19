# frozen_string_literal: true

module Components
  module Shared
    class Footer < Components::Base
      def view_template
        footer(class: "font-mono border-t border-border") do
          div(class: "px-6 sm:container flex flex-col sm:flex-row items-center justify-between gap-4 py-6") do
            div(class: "flex items-center gap-2 text-sm text-muted-foreground") do
              span { "SethUI" }
              span(class: "opacity-40") { "—" }
              span { "A component library for Ruby." }
            end

            div(class: "flex items-center gap-6 text-sm text-muted-foreground") do
              a(href: "#", class: "hover:text-foreground transition-colors") { "Docs" }
              a(href: "#", class: "hover:text-foreground transition-colors") { "Components" }
              a(href: "https://github.com/sethhorsley/seth_ui", class: "hover:text-foreground transition-colors") { "GitHub" }
            end
          end
        end
      end
    end
  end
end
