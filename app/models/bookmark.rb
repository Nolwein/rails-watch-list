class Bookmark < ApplicationRecord
  belongs_to :movie
  belongs_to :list

  validates :comment, length: { minimum: 6 }
  validates :movie_id, uniqueness: { scope: :list_id }
end
# couple (list, movie) unique -> "This movie is already bookmarked in this list."
# Cela garantit que chaque film (movie_id) peut être associé à une liste (list_id) une seule fois.
