class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books, id: false do |t|
      t.integer :isbn, primary: true
      t.float :price
      t.string :title
      t.string :year
      t.integer :qty_on_order
      t.integer :qty_in_stock

      t.timestamps
    end
    add_index :books, :isbn, unique: true
  end
end
