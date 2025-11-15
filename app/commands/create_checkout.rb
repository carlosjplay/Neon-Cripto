class CreateCheckout
  def initialize(subscription)
    @subscription = subscription
  end

  def call
    Payments::MercadoPagoClient.new.create_checkout(amount: @subscription.amount)
  end
end
