require 'rails_helper'

RSpec.describe CreateCheckout, type: :command do
  let(:subscription) { create(:subscription, amount: 99.90) }

  it 'cria um checkout com sucesso' do
    result = described_class.new(subscription).call
    expect(result[:status]).to eq("pending")
    expect(result[:amount]).to eq(99.90)
    expect(result[:url]).to include("mercadopago.com")
  end
end
