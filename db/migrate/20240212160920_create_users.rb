class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :gender
      t.string :email
      t.string :intrest
      t.integer :password

      t.timestamps
    end
  end
end
