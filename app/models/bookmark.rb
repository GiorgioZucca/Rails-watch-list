class Bookmark < ApplicationRecord
  validates :comment, length: { minimum: 6 }
  belongs_to :movie
  belongs_to :list
  validates :movie_id, uniqueness: { scope: :list_id,
  message: "you already have movie on this list" }
end
