class Bookmark < ApplicationRecord
  has_and_belongs_to_many :favorites
end
