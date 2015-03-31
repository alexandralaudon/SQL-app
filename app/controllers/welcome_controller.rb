class WelcomeController < ApplicationController

  helper_method :all_tables

  def index
  end

  private

  def all_tables
    @tables_array = ActiveRecord::Base.connection.tables.map do |table|
      table.split('_').map(&:capitalize).join
    end
  end

end
