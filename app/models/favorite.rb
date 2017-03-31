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
