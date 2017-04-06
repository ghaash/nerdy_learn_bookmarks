class AddBookmarkIdToTags < ActiveRecord::Migration[5.0]
  def change
    add_column :tags, :bookmark_id, :integer
  end
end
