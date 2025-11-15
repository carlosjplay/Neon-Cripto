class CreateSubscription
  def initialize(user:, plan:)
    @user = user
    @plan = plan
  end

  def call
    external_id = Payments::MercadoPagoClient.new.create_subscription(user: @user, plan: @plan)

    return nil unless external_id

    Subscription.create!(
      user: @user,
      plan: @plan,
      status: 'active',
      external_id: external_id
    )
  end
end
