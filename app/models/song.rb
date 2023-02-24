class Song < ApplicationRecord
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def artist_name
    self.artist.name
  end

  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end
end
