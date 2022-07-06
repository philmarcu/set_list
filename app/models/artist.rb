class Artist < ApplicationRecord
  has_many :songs

  def avg_song_length
    self.songs.average(:length)
  end
end