# frozen_string_literal: true

module SethUI
  class ThemeToggle < Base
    def view_template(&)
      div(**attrs, &)
    end
  end
end
