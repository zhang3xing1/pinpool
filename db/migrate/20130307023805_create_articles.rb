class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.text :ccontent
      t.integer :user_id
      t.integer :category_id

      t.timestamps
    end
  end
end
