class CreateBookmarks < ActiveRecord::Migration[5.0]
  def change
    create_table :bookmarks do |t|
      t.string :name
      t.string :description
      t.string :category
      t.string :url

      t.timestamps
    end
  end
end
