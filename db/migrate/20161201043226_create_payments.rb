class CreatePayments < ActiveRecord::Migration[5.0]
  def change
    create_table :payments do |t|
      t.references :shopping_cart, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
