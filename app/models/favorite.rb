class Favorite < ApplicationRecord
  belongs_to :bookmark
  belongs_to :user
  validates :name, presence: true, uniqueness: { scope: [:name], message: "Cannot have the same name" }
  validates :description, presence: true, uniqueness: { scope: [:description], message: "Cannot contain the same description" }
  validates :url, presence: true, uniqueness: { scope: [:url], message: "no duplicate url bookmarks, please!" }

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
