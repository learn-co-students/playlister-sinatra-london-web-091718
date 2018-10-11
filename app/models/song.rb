class Song < ActiveRecord::Base

  belongs_to :artist
  has_many :song_genres
  has_many :genres, through: :song_genres

  def slug
   self.name.downcase.gsub(" ", "-")
  end

  def self.find_by_slug(slug)
    song = Song.all.find {|s| s.slug == slug}
    if !song
      return nil
    else
      song
    end
  end

end
