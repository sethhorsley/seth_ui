class DocsController < ApplicationController
  layout -> { Views::Layouts::ApplicationLayout }

  def button
    render Views::Docs::Button.new
  end
end
