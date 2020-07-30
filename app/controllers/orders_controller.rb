class OrdersController < ApplicationController
  def checkout
    @product = Product.find(params[:id])
    Stripe.api_key = 'sk_test_51H9xSXEJBJUNhUw2O1UYgl37DC4bRfi11UtK5jefo0pGxZJFdV0s61dSnCV5pHVGfgNx9RluuK6DGjlLAovFPcvi00lxQi2mvm'

    @session = Stripe::Checkout::Session.create(
    payment_method_types: ['card'],
    line_items: [{
      price_data: {
      currency: 'usd',
      product_data: {
        name: "#{@product.name}",
      },
      unit_amount: 2500,
    },
    quantity: 1,
    }],
      mode: 'payment',
      success_url: "http://0.0.0.0:5000/products/#{@product.id}",
      cancel_url: "https://0.0.0.0:5000/products#{@product.id}",
    )
    respond_to do |format|
      format.html
      format.js
    end
  end

  def success
    clear_cart if params[:type] == "0"
  end

  def push_to_cart(product)
    Redis.current.lpush("test2", product)
  end

  def clear_cart
    p "THIS WAS CALLED"
    Redis.current.del("test2")
  end
end
