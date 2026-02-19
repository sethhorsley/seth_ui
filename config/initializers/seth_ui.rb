# frozen_string_literal: true

module SethUI
  extend Phlex::Kit
end

# Allow using RubyUI instead RubyUi
Rails.autoloaders.main.inflector.inflect(
  "seth_ui" => "SethUI"
)

# Allow using RubyUI::ComponentName instead Components::RubyUI::ComponentName
Rails.autoloaders.main.push_dir(
  "#{Rails.root}/app/components/seth_ui", namespace: SethUI
)

# Allow using RubyUI::ComponentName instead RubyUI::ComponentName::ComponentName
Rails.autoloaders.main.collapse(Rails.root.join("app/components/seth_ui/*"))
