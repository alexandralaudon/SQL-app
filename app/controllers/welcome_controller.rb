class WelcomeController < ApplicationController

  helper_method :all_tables

  def index
  end


  def all_tables
    ActiveRecord::Base.connection.tables.map do |table|
      table.camelize
    end
  end

end
