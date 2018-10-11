artist1 = Artist.create(name: "Olly")
artist2 = Artist.create(name: "Ed")
artist3 = Artist.create(name: "Dan")
artist4 = Artist.create(name: "Danasaurus")

song1 = Song.create(name: "Blahblah1", artist_id: artist4.id)
song2 = Song.create(name: "Blahblah2", artist_id: artist3.id)
song3 = Song.create(name: "Blahblah3", artist_id: artist2.id)
song4 = Song.create(name: "Blahblah4", artist_id: artist1.id)

genre1 = Genre.create(name: "Pop")
genre2 = Genre.create(name: "Rock")
genre3 = Genre.create(name: "Jazz")
genre4 = Genre.create(name: "Metal")

sg1 = SongGenre.create(song_id: song1.id, genre_id: genre1.id)
sg2 = SongGenre.create(song_id: song2.id, genre_id: genre2.id)
sg3 = SongGenre.create(song_id: song3.id, genre_id: genre3.id)
sg4 = SongGenre.create(song_id: song4.id, genre_id: genre4.id)
