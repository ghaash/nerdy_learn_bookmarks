class Bookmark < ApplicationRecord
  has_and_belongs_to_many :favorites
  validates :name, presence: true, uniqueness: { scope: [:name], message: "Cannot have the same name" }
  validates :description, presence: true, uniqueness: { scope: [:description], message: "Cannot contain the same description" }
  validates :url, presence: true, uniqueness: { scope: [:url], message: "no duplicate url bookmarks, please!" }

  def bookmark_attributes=(bookmark)
   self.bookmark = Bookmark.find_or_create_by(description: bookmark.description)
   self.bookmark.update(bookmark)
  end
end
