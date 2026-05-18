# frozen_string_literal: true

module SethUI
  class ClipboardTrigger < Base
    def view_template(&)
      div(**attrs, &)
    end

    private

    def default_attrs
      {
        data: {
          seth_ui__clipboard_target: "trigger",
          action: "click->seth_ui--clipboard#copy"
        }
      }
    end
  end
end
