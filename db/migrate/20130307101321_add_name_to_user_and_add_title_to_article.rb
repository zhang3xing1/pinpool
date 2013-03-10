class AddNameToUserAndAddTitleToArticle < ActiveRecord::Migration
  def up
  	#add_column :tablenames, :fieldname, :string
  	add_column :users, 		:name, 	:string
  	add_column :articles, :title, :string
  end

  def down
  	#remove_column(table_name, column_names)
  	remove_column :users, 		:name
  	remove_column :articles, 	:title
  end
end
