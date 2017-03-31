class AddForeignKeysToFavorites < ActiveRecord::Migration[5.0]
  def change
    add_column :favorites, :bookmark_id, :integer, null: false, default: 1
    add_column :favorites, :user_id, :integer, null: false, default: 1
  end
end
