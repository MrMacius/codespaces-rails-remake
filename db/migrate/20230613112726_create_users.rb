class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :password
      t.string :email
      t.integer :phone
      t.text :pfp

      t.timestamps
    end
  end
end