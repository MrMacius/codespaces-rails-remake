class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :author
      t.integer :authorid
      t.string :title
      t.text :content
      t.text :imglink
      t.string :status

      t.timestamps
    end
  end
end
