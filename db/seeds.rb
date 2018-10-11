# Add seed data here. Seed your database with `rake db:seed`

artist1 = Artist.create(name: "Taylor Swift")
artist2 = Artist.create(name: "Kanye West")
artist3 = Artist.create(name: "Four Tet")
artist4 = Artist.create(name: "Diplo")

song1 = Song.create(name: "Song1", artist_id: 1)
song2 = Song.create(name: "Song2", artist_id: 2)
song3 = Song.create(name: "Song3", artist_id: 3)
song4 = Song.create(name: "Song4", artist_id: 4)

genre1 = Genre.create(name: "genre1")
genre2 = Genre.create(name: "genre2")
genre3 = Genre.create(name: "genre3")
genre4 = Genre.create(name: "genre4")

song_genre1 = SongGenre.create(song_id: 1, genre_id: 1)
song_genre2 = SongGenre.create(song_id: 2, genre_id: 2)
song_genre3 = SongGenre.create(song_id: 3, genre_id: 3)
song_genre4 = SongGenre.create(song_id: 4, genre_id: 4)
