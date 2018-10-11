class Genre < ActiveRecord::Base
  has_many :song_genres
  has_many :songs, through: :song_genres
  has_many :artists, through: :songs

  def slug
    string = self.name
    string.downcase!
    string.gsub!(/[\p{P}\s]/,"-")
    string
  end

  def self.find_by_slug(slug)
    splits_slug = slug.split('-')
    capitalizes_slug = splits_slug.map {|word|  word.capitalize}
    updated_slug = capitalizes_slug.join(' ')
    result = self.find_by(name: updated_slug)
    result
  end

end
