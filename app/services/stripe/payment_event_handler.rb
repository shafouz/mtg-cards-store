module Stripe
    class PaymentEventHandler
      def call(event)
        begin
          method = "handle_" + event.type.tr('.', '_')
          self.send method, event
        rescue JSON::ParserError => e
          # handle the json parsing error here
          raise # re-raise the exception to return a 500 error to stripe
        rescue NoMethodError => e
          #code to run when handling an unknown event
        end
      end
  
      def handle_payment_intent_succeeded(event)
        #puts "HEREEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE"
        #pp event
        #redirect_to controller: :orders, action: :success
      end
    end
  end
  