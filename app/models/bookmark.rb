class Bookmark < ApplicationRecord
  has_and_belongs_to_many :favorites
  # def add_to_favorites
  #   @favorite = Favorite.create(bookmark_id: params[:bookmark_id])
  #   @favorite.save
  #   redirect_to bookmarks_path(@bookmarks)
  # end
end
