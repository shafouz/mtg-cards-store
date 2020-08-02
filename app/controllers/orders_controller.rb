class OrdersController < ApplicationController
  include OrdersHelper

  def checkout
    Stripe.api_key = 'sk_test_51H9xSXEJBJUNhUw2O1UYgl37DC4bRfi11UtK5jefo0pGxZJFdV0s61dSnCV5pHVGfgNx9RluuK6DGjlLAovFPcvi00lxQi2mvm'
    add_line_items

    @session = Stripe::Checkout::Session.create(
    payment_method_types: ['card'],
    line_items: add_line_items,
      mode: 'payment',
      success_url: "#{ENV["LOCAL_URL"]}/orders/success",
      cancel_url: "#{ENV["LOCAL_URL"]}/orders/failed",
    )
    respond_to do |format|
      format.html
      format.js
    end
  end

  def success
    if params[:id] == false
      return flash[:danger]
    else
      flash[:notice] = ""
      Redis.current.lrem(current_user.id, 0, "DELETED") if current_user.id.nil
    end
  end
end
