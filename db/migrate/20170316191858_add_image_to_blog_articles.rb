class AddImageToBlogArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :blog_articles, :image, :string
  end
end
