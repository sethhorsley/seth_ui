class PublicController < ApplicationController
  layout -> { Views::Layouts::ApplicationLayout }

  def index
    render Views::Public::Index.new
  end
end
