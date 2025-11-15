require 'rails_helper'

RSpec.describe CancelSubscription, type: :command do
  let(:subscription) { create(:subscription, status: "active") }

  it 'cancela uma assinatura com sucesso' do
    result = described_class.new(subscription).call
    expect(result).to be true
    expect(subscription.reload.status).to eq("canceled")
  end
end
