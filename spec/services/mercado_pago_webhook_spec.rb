require 'rails_helper'

RSpec.describe Payments::MercadoPagoWebhook, type: :service do
  describe '#process!' do
    it 'processa webhook de pagamento' do
      params = { "type" => "payment", "data" => { "id" => "123" } }
      client = instance_double(Payments::MercadoPagoClient)

      allow(Payments::MercadoPagoClient).to receive(:new).and_return(client)
      expect(client).to receive(:capture_payment).with(payment_id: "123")

      described_class.new(params).process!
    end

    it 'processa webhook de assinatura' do
      params = { "type" => "subscription", "data" => { "id" => "sub_123" } }
      client = instance_double(Payments::MercadoPagoClient)

      allow(Payments::MercadoPagoClient).to receive(:new).and_return(client)
      expect(client).to receive(:cancel_subscription).with(subscription_id: "sub_123")

      described_class.new(params).process!
    end

    it 'ignora tipos desconhecidos' do
      params = { "type" => "unknown", "data" => {} }
      expect { described_class.new(params).process! }.not_to raise_error
    end
  end
end
