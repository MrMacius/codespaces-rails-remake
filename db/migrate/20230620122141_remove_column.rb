class RemoveColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :comments, :postid
    #remove_column :articles, :authorid
  end
end
