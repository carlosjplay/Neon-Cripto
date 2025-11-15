class CapturePayment
  def initialize(payment)
    @payment = payment
  end

  def call
    success = Payments::MercadoPagoClient.new.capture_payment(payment_id: @payment.external_id)

    return false unless success

    @payment.update!(status: 'paid')
    true
  end
end
