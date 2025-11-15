require 'rails_helper'

RSpec.describe CapturePayment, type: :command do
  let(:payment) { create(:payment, status: "pending") }

  it 'captura um pagamento com sucesso' do
    result = described_class.new(payment).call
    expect(result).to be true
    expect(payment.reload.status).to eq("paid")
  end
end
