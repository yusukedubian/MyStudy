class StoreController < ApplicationController

  def increment_counter
    session[:counter] ||= 0
    session[:counter] += 1
  end

  def index
    @products = Product.order(:title) #商品名を降順表示
    @count = increment_counter
    @show_msg = "You have been here #{@count} times" if session[:counter] > 9
  end
end
