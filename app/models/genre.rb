class Genre < ActiveRecord::Base

  has_many :song_genres
  has_many :songs, through: :song_genres
  has_many :artists, through: :songs

  def slug
   self.name.downcase.gsub(" ", "-")
  end

  def self.find_by_slug(slug)
    genre = Genre.all.find {|s| s.slug == slug}
    if !genre
      return nil
    else
      genre
    end
  end

end
