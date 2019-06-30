module CurrentUserConcern
    extend ActiveSupport::Concern

    def current_user
        super || geust_user
    end
    def geust_user
        OpenStruct.new(name: "Anonimouse", first_name: "An", last_name: "no", email: "na@no.com")
    end
end