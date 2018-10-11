module Slugifiable
  module InstanceMethods
    def slug
      self.name.gsub(" ", "-").gsub(/[^\w-]/, '').downcase
    end
  end

  module ClassMethods
    def find_by_slug(slug)
      item = self.all.select do |s|
        s.slug == slug
      end
      # binding.pry
      self.find_by(name: item[0].name)
    end
  end
end