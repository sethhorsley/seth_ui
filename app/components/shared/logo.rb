# frozen_string_literal: true

module Components
  module Shared
    class Logo < Components::Base
      def view_template
        a(href: root_url, class: "mr-6 flex items-center space-x-2") do
          Heading(level: 2, class: "flex items-center pb-0 border-0") do
            span(class: "text-lg font-semibold font-['Inter']") { "SethUI" }
            Badge(variant: :amber, size: :sm, class: "ml-2 whitespace-nowrap") { "1.0" }
          end
        end
      end
    end
  end
end
