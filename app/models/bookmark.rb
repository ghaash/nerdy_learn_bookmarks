class Bookmark < ApplicationRecord
  has_and_belongs_to_many :favorites
  def add_to_favorites

  end
end
