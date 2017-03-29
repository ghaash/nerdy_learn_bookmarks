class CreateJoinTableBookmarkFavorite < ActiveRecord::Migration[5.0]
  def change
    create_join_table :bookmarks, :favorites do |t|
      # t.index [:bookmark_id, :favorite_id]
      # t.index [:favorite_id, :bookmark_id]
    end
  end
end
