class CartsChannel < ApplicationCable::Channel
  # Set up the data stream
  # This is linked to carts_channe.js
  def subscribed
    stream_from "cart-stream"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
