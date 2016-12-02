class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books, id: false, primary_key: :isbn do |t|
      t.integer :isbn
      t.float :price
      t.string :title
      t.string :year
      t.integer :qty_on_order
      t.integer :qty_in_stock

      t.timestamps
    end
  end
end
