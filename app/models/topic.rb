class Topic < ApplicationRecord
    validates_presence_of :title

    has_many :blogs

    def self.with_blogs
        includes(:blog).where.not(blogs: {id: nill})
    end
end
