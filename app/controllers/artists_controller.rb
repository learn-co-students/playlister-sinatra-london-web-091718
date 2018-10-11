class ArtistsController < ApplicationController

get '/artists' do
  @artists = Artist.all
  erb :"/artists/index"
end

get '/artists/:id' do
  @artists = Artist.find(params[:id])
  # @artist = Artist.find(@artists.artist_id)
  erb :"/artists/show"
end


end
