class WelcomeController < ApplicationController

  def index
    @books = Books.all
    @alternate_stocks = AlternateStock.column_names
  end

end
