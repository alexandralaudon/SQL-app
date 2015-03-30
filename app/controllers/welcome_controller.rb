class WelcomeController < ApplicationController

  def index
    @books = Books.all
    @alternate_stocks = AlternateStock.all
  end

end
