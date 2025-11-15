Rails.application.routes.draw do
  # Rotas web
  namespace :web do
    root "home#index"
    get "dashboard", to: "dashboard#index"
  end

  # Rotas de pagamentos
  namespace :payments do
    get "checkout", to: "checkout#index"
    get "success", to: "checkout#success"
    get "error", to: "checkout#error"
  end

  # Rotas de API (webhooks)
  namespace :api do
    namespace :v1 do
      post "webhooks/mercado_pago", to: "webhooks#mercado_pago"
    end
  end
end
