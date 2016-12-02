class CreateCustomerHistories < ActiveRecord::Migration[5.0]
  def change
    create_table :customer_histories do |t|
      t.references :user, foreign_key: true
      t.references :isbn, foreign_key: true
      t.date :purchase_date

      t.timestamps
    end
  end
end
