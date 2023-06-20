class RemoveColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :comments, :postid
    remove_column :comments, :imglink
    remove_column :articles, :imglink
    remove_column :users, :pfp
    drop_table :tags
  end
end
