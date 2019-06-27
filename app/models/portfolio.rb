class Portfolio < ApplicationRecord
    validates_presence_of :title, :thumb_image, :main_image

    def self.angular
        #class method so that class can call this and query.
        where(subtile: "Angular")
    end

    #can be user the same as above class
    scope :ruby_on_rails_portfolio_items, -> {  where(subtile: "Ruby on Rails")}

    after_initialize :set_defaults

    def set_defaults
        self.main_image ||= "https://via.placeholder.com/600/09f/fff.png"
        self.thumb_image ||= "https://via.placeholder.com/300/09f/fff.png"
    end
end
