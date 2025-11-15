require 'rails_helper'

RSpec.describe Api::V1::WebhooksController, type: :controller do
  describe 'POST #mercado_pago' do
    let(:params) { { type: 'payment', data: { id: '123' } } }

    it 'processa o webhook com sucesso' do
      expect(Payments::MercadoPagoWebhook).to receive(:new).with(params.stringify_keys).and_call_original
      expect_any_instance_of(Payments::MercadoPagoWebhook).to receive(:process!).and_return(true)

      post :mercado_pago, params: params
      expect(response).to have_http_status(:ok)
    end

    it 'retorna erro se o processamento falhar' do
      allow(Payments::MercadoPagoWebhook).to receive(:new).and_raise(StandardError.new("Falha"))

      post :mercado_pago, params: params
      expect(response).to have_http_status(:internal_server_error)
    end
  end
end
