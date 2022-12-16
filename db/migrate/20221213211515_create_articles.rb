class CreateArticles < ActiveRecord::Migration[7.0]
  def change
    create_table :articles do |t|
      t.string :nama
      t.integer :a
      t.integer :b
      t.integer :c

      t.timestamps
    end
  end
end
