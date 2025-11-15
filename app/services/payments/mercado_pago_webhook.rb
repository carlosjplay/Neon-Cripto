module Payments
  class MercadoPagoWebhook
    def initialize(params)
      @params = params
    end

    def process!
      case @params["type"]
      when "payment"
        payment_id = @params["data"]["id"]
        Payments::MercadoPagoClient.new.capture_payment(payment_id: payment_id)
      when "subscription"
        subscription_id = @params["data"]["id"]
        Payments::MercadoPagoClient.new.cancel_subscription(subscription_id: subscription_id)
      else
        Rails.logger.info("Webhook ignorado: #{@params['type']}")
      end
    end
  end
end
