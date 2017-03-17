class AddSubTitleToBlogArticles < ActiveRecord::Migration[5.0]
  def change
    add_column :blog_articles, :sub_title, :string
  end
end
