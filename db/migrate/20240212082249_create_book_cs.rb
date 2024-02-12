class CreateBookCs < ActiveRecord::Migration[7.1]
  def change
    create_table :book_cs do |t|
      t.string :name
      t.string :tittle
      t.string :author
      t.string :description
      t.integer :price

      t.timestamps
    end
  end
end
