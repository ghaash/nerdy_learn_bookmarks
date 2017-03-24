class Favorite < ApplicationRecord
  has_and_belongs_to_many :bookmarks
  def add_to_favorites
  
  end
end
