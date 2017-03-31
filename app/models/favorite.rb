class Favorite < ApplicationRecord
  belongs_to :bookmark
  belongs_to :user

  def name
    bookmark.name
  end

  def description
    bookmark.description
  end

  def url
    bookmark.url
  end
end

# and i kept getting a recursion error
#
# or, you can use turbolinks https://github.com/turbolinks/turbolinks which are ajax calls within rails framework
# turbolinks/turbolinks
# turbolinks - Turbolinks makes navigating your web application faster
# github.com
# if its a recursion error I'm guessing your models aren't tied together correctly
# add a join table
