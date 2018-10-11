class SongController < ApplicationController

  get '/songs' do
    @songs = Song.all
    erb :"/songs/index"
  end

  get '/songs/:id' do
    @song = Song.find(params[:id])
    @artist = Artist.find(@song.artist_id)
    @genre = @song.genres[0]
    erb :"/songs/show"
  end


end
