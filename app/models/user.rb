class User < ApplicationRecord
  # Associações
  has_many :subscriptions, dependent: :destroy
  has_many :payments, through: :subscriptions

  # Validações
  validates :email, presence: true, uniqueness: true
  validates :password, presence: true

  # Se estiver usando Devise, pode ser assim:
  # devise :database_authenticatable, :registerable, :recoverable, :rememberable, :validatable
end
