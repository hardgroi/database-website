class CreateCartInfos < ActiveRecord::Migration[5.0]
  def change
    create_table :cart_infos do |t|
      t.references :shopping_cart, foreign_key: true
      t.integer :item_quantity
      t.string :coupon_code

      t.timestamps
    end
  end
end
