class CreateBookPubs < ActiveRecord::Migration[5.0]
  def change
    create_table :book_pubs do |t|
      t.references :isbn, foreign_key: true
      t.references :publisher, foreign_key: true

      t.timestamps
    end
  end
end
