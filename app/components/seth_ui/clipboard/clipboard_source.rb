# frozen_string_literal: true

module SethUI
  class ClipboardSource < Base
    def view_template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {
        data: {
          seth_ui__clipboard_target: "source"
        }
      }
    end
  end
end
