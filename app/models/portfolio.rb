class Portfolio < ApplicationRecord
    has_many :technologies
    accepts_nested_attributes_for   :technologies, 
                                    allow_destroy: true,
                                    reject_if: lambda { |atts| atts['name'].blank?} #dont let this in if it's blank.

    include Placeholder

    validates_presence_of :title, :thumb_image, :main_image

    def self.angular
        #class method so that class can call this and query.
        where(subtile: "Angular")
    end

    #can be user the same as above class
    scope :ruby_on_rails_portfolio_items, -> {  where(subtile: "Ruby on Rails")}

    def self.by_position
        order("position ASC")
    end

    after_initialize :set_defaults

    def set_defaults
        self.main_image ||= Placeholder.image_generator(height: 600, width: 600)
        self.thumb_image ||= Placeholder.image_generator(height: 300, width: 300)
    end
end
