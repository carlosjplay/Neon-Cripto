module Payments
  class MercadoPagoClient
    # Simulação de integração com Mercado Pago

    def create_checkout(amount:)
      {
        id: SecureRandom.hex(8),
        status: "pending",
        amount: amount,
        url: "https://checkout.mercadopago.com/#{SecureRandom.hex(4)}"
      }
    end

    def create_subscription(user:, plan:)
      "sub_#{SecureRandom.hex(6)}"
    end

    def cancel_subscription(subscription_id:)
      true # Simula sucesso
    end

    def capture_payment(payment_id:)
      true # Simula sucesso
    end
  end
end
