require 'rails_helper'

RSpec.describe Payments::MercadoPagoClient, type: :service do
  let(:client) { described_class.new }

  describe '#create_checkout' do
    it 'retorna dados de checkout válidos' do
      result = client.create_checkout(amount: 100.0)
      expect(result[:status]).to eq("pending")
      expect(result[:amount]).to eq(100.0)
      expect(result[:url]).to include("mercadopago.com")
    end
  end

  describe '#create_subscription' do
    it 'retorna um id externo de assinatura' do
      user = create(:user)
      plan = "premium"
      result = client.create_subscription(user: user, plan: plan)
      expect(result).to start_with("sub_")
    end
  end

  describe '#cancel_subscription' do
    it 'retorna true ao cancelar assinatura' do
      result = client.cancel_subscription(subscription_id: "sub_123")
      expect(result).to be true
    end
  end

  describe '#capture_payment' do
    it 'retorna true ao capturar pagamento' do
      result = client.capture_payment(payment_id: "pay_123")
      expect(result).to be true
    end
  end
end
