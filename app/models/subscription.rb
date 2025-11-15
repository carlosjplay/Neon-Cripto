class Subscription < ApplicationRecord
  # Associações
  belongs_to :user
  has_many :payments, dependent: :destroy

  # Validações
  validates :plan, presence: true
  validates :status, inclusion: { in: %w[active canceled pending] }

  # Métodos auxiliares
  def active?
    status == "active"
  end

  def canceled?
    status == "canceled"
  end
end
