class CreatePaymentHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :payment_histories do |t|
      t.references :payment, foreign_key: true
      t.float :order_price

      t.timestamps
    end
  end
end
