class CancelSubscription
  def initialize(subscription)
    @subscription = subscription
  end

  def call
    success = Payments::MercadoPagoClient.new.cancel_subscription(subscription_id: @subscription.external_id)

    return false unless success

    @subscription.update!(status: 'canceled')
    true
  end
end
