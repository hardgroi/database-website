class CreateBookCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :book_categories do |t|
      t.references :isbn, foreign_key: true
      t.string :category

      t.timestamps
    end
  end
end
