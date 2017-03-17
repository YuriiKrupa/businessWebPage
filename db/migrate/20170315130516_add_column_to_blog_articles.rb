class AddColumnToBlogArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :blog_articles, :author, :string
  end
end