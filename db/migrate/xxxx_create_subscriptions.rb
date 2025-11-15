class CreateSubscriptions < ActiveRecord::Migration[7.0]
  def change
    create_table :subscriptions do |t|
      t.references :user, null: false, foreign_key: true
      t.string :plan, null: false
      t.string :status, default: "active"
      t.string :external_id
      t.decimal :amount, precision: 10, scale: 2

      t.timestamps
    end
  end
end
