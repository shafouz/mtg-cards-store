class CartsController < ApplicationController
  # Push to cart
  def index
    CartJob.new(current_user.id).perform_now
    cart = Redis.current.lrange("#{current_user.id}", 0, -1)
    @cart = []
    cart.each {|c| @cart << JSON.parse(c) if c != "DELETED"}
  end
  
  def new
    product = Product.find(params[:id])
    Redis.current.lpush("#{current_user.id}", product.to_json)
    respond_to do |format|
      format.html
      format.js
    end
  end

  # This is actually the delete method
  def show
    index = params[:id].to_i
    Redis.current.lset("#{current_user.id}", index, "DELETED")
    @selector = index
    respond_to do |format|
      format.html
      format.js
    end
  end

end
