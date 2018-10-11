class GenresController < ApplicationController

  get '/genres' do
    @genres = Genre.all
    erb :"/genres/index"
  end

  get '/genres/:id' do
    @genre = Genre.find(params[:id])
    # @artist = Artist.find(@genre.artist_id)
    erb :"/genres/show"
  end









end
