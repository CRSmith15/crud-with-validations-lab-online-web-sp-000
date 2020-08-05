class Song < ApplicationRecord
  validates :title, :artist_name, presence: true
  validates :artist_name, uniqueness: { scope: :year}
  validates :release_year, numericality: { less_than_or_equal_to: DateTime.current.to_date }
end
