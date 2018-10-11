class Artist < ActiveRecord::Base

  has_many :songs
  has_many :genres, through: :songs

  def slug
   self.name.downcase.gsub(" ", "-")
  end

  def self.find_by_slug(slug)
    artist = Artist.all.find {|s| s.slug == slug}
    if !artist
      return nil
    else
      artist
    end
  end

end
