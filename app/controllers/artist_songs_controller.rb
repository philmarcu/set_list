class ArtistSongsController < ApplicationController

  def index
    @artist = Artist.find(params[:artist_id]) # didn't make artist an instane variable since we don't need to carry it over to anything else
    @songs = @artist.songs
  end
end