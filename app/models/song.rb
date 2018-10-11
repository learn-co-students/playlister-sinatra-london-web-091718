class Song < ActiveRecord::Base
  belongs_to :artist
  has_many :song_genres
  has_many :genres, through: :song_genres

  def slug
    string = self.name
    string.downcase!
    string.gsub!(/[\p{P}\s]/,"-")
    string
  end

  def self.find_by_slug(slug)
    splits_slug = slug.split('-')
    capitalizes_slug = splits_slug.each do |word|
      if "the at with".include?(word)
      else
        word.capitalize!
      end
    end
    updated_slug = capitalizes_slug.join(' ')
    result = self.find_by(name: updated_slug)
    result
  end

end
