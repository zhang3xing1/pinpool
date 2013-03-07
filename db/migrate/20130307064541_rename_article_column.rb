class RenameArticleColumn < ActiveRecord::Migration
  def up
  	rename_column(:articles, :ccontent, :content);
  end

  def down

  end
end
