class CartJob < ApplicationJob
  include CableReady::Broadcaster
  queue_as :default

  # Perform dom change
  def perform(*args)
=begin
    cable_ready["cart-stream"].remove(
      selector: args[0],
    )
    cable_ready.broadcast
=end
    Redis.current.lrem(args[0], 0, "DELETED")
  end
end
