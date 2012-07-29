class StoreController < ApplicationController
  def index
    @products = Product.order(:title) #商品名を降順表示
  end
end
