class Song < ApplicationRecord
  validates :title, :artist_name, presence: true
  validates :artist_name, uniqueness: { scope: :year}
end
