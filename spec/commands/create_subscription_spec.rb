require 'rails_helper'

RSpec.describe CreateSubscription, type: :command do
  let(:user) { create(:user) }

  it 'cria uma assinatura ativa' do
    subscription = described_class.new(user: user, plan: "premium").call
    expect(subscription).to be_persisted
    expect(subscription.status).to eq("active")
    expect(subscription.plan).to eq("premium")
  end
end
