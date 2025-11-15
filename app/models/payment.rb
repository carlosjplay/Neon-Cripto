class Payment < ApplicationRecord
  # Associações
  belongs_to :subscription

  # Validações
  validates :amount, presence: true, numericality: { greater_than: 0 }
  validates :status, inclusion: { in: %w[pending paid failed] }

  # Métodos auxiliares
  def paid?
    status == "paid"
  end

  def pending?
    status == "pending"
  end
end
