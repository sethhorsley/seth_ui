# frozen_string_literal: true

module Views
  module Layouts
    class ApplicationLayout < Views::Base
      include Phlex::Rails::Layout

      def view_template(&block)
        doctype

        html do
          render Components::Shared::Head.new

          body do
            script(defer: true, data_domain: "rubyui.com", src: "https://plausible.io/js/script.js")
            render Components::Public::Navbar.new
            main(&block)
            render Components::Shared::Footer.new
            # render Shared::Flashes.new(notice: flash[:notice], alert: flash[:alert])
          end
        end
      end
    end
  end
end
