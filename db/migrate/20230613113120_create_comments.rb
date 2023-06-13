class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.string :author
      t.text :content
      t.integer :postid
      t.text :imglink

      t.timestamps
    end
  end
end
