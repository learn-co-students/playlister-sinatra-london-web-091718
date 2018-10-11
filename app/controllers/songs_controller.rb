class SongsController < ApplicationController

  get '/songs' do
    @songs = Song.all
    erb :'songs/index'
  end
  
  get '/songs/new' do
    @genres = Genre.all
    erb :'songs/new'
  end

  post '/songs' do
    new_artist = Artist.find_or_create_by(name: params["Artist Name"])
    new_song = Song.find_or_create_by(name: params["Name"])
    new_song.artist = new_artist
    # binding.pry
    new_song.genres = params[:genres].map {|g| Genre.find(g)}
    new_song.save
    redirect "/songs/#{new_song.slug}?created=true"
  end

  get '/songs/:slug' do
    @song = Song.find_by_slug(params[:slug])
    erb :'songs/show'
  end

  get '/songs/:slug/edit' do
    @song = Song.find_by_slug(params[:slug])
    @genres = Genre.all
    erb :'songs/edit'
  end

  patch '/songs/:slug' do
    song = Song.find_by_slug(params[:slug])
    song.name = params["Name"]
    song.artist = Artist.find_or_create_by(name: params["Artist Name"])
    song.genres = params[:genres].map {|g| Genre.find(g)}
    song.save
    redirect "songs/#{song.slug}?updated=true"
  end

end
