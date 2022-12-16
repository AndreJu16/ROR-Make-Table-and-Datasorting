class AddUrutanToArticles < ActiveRecord::Migration[7.0]
  def change
    add_column :articles, :urutan, :text
  end
end
