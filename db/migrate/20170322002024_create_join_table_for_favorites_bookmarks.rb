class CreateJoinTableForFavoritesBookmarks < ActiveRecord::Migration[5.0]
  def change
    create_table :bookmarks_favorites, id: false do |t|
      t.belongs_to :bookmark
      t.belongs_to :favorite
    end
  end
end
