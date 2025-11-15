module Api
  module V1
    class WebhooksController < ApplicationController
      skip_before_action :verify_authenticity_token

      def mercado_pago
        begin
          MercadoPagoWebhook.new(params.to_unsafe_h).process!
          head :ok
        rescue => e
          Rails.logger.error("Webhook error: #{e.message}")
          head :internal_server_error
        end
      end
    end
  end
end
