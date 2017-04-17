class Bookmark < ApplicationRecord
  has_many :favorites

  validates :name, presence: true, uniqueness: { scope: [:name], message: "Cannot have the same name" }
  validates :description, presence: true, uniqueness: { scope: [:description], message: "Cannot contain the same description" }
  validates :url, presence: true, uniqueness: { scope: [:url], message: "no duplicate url bookmarks, please!" }

  def self.category_sort_up
    Bookmark.order(category: :asc)
  end

  def self.category_sort_down
    Bookmark.order(category: :desc)
  end

end
 
