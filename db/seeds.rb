# Cria um usuário de teste
user = User.create!(
  email: "teste@neoncripto.com",
  password: "123456"
)

puts "Usuário criado: #{user.email}"

# Cria uma assinatura vinculada ao usuário
subscription = Subscription.create!(
  user: user,
  plan: "premium",
  status: "active",
  external_id: "sub_#{SecureRandom.hex(4)}",
  amount: 99.90
)

puts "Assinatura criada: Plano #{subscription.plan}, Status #{subscription.status}"

# Cria um pagamento vinculado à assinatura
payment = Payment.create!(
  subscription: subscription,
  amount: 99.90,
  status: "pending",
  external_id: "pay_#{SecureRandom.hex(4)}"
)

puts "Pagamento criado: Valor #{payment.amount}, Status #{payment.status}"
