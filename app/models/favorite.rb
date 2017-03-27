class Favorite < ApplicationRecord
  has_many :bookmarks
  # def add_to_favorites
  #   @favorite = add_to_favorites.create(bookmark_id: params[:bookmark_id])
  #   @favorite.save
  #   redirect_to bookmarks_path(@bookmarks)
  # end
end

# and i kept getting a recursion error
#
# or, you can use turbolinks https://github.com/turbolinks/turbolinks which are ajax calls within rails framework
# turbolinks/turbolinks
# turbolinks - Turbolinks makes navigating your web application faster
# github.com
# if its a recursion error I'm guessing your models aren't tied together correctly
