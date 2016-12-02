class CreateCustomerCards < ActiveRecord::Migration[5.0]
  def change
    create_table :customer_cards do |t|
      t.references :user, foreign_key: true
      t.string :card_expiration_date
      t.string :card_type
      t.integer :card_security_code
      t.integer :card_number
      t.string :cardholder_name

      t.timestamps
    end
  end
end
