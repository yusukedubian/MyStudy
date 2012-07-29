class ApplicationController < ActionController::Base
  protect_from_forgery

  private

  def current_cart
    Cart.find(session[:cart_id])
  rescue ActiveRecord::RecordNotFound
    cart = Cart.create
    session[:cart_id] = cart.id
    cart
  end
  #上記のprivateに関して、これによりこのメソッドを使用出来るのがコントローラだけになり、されにはRailsがこのメソッドを
  #コントローラのアクションとして公開しないようにしています。
end
