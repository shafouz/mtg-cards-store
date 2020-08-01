Stripe.api_key = Rails.application.credentials.stripe[Rails.env.to_sym][:secret_key]
StripeEvent.signing_secret = Rails.application.credentials.stripe[Rails.env.to_sym][:signing_secret]

StripeEvent.configure do |events|
  #events.subscribe 'invoice.', Stripe::InvoiceEventHandler.new
  #events.subscribe 'payment_intent.succeeded', Stripe::PaymentEventHandler.new
  #events.subscribe 'checkout.session.completed', Stripe::CheckoutEventHandler.new
end
