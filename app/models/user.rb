class User < ApplicationRecord

    # Devise config
    devise :trackable, 
    :omniauthable, omniauth_providers: [:google_oauth2]

    # Takes the data returned by the 3rd party site and creates an entry in Users table if needed
    def self.create_from_provided_data(provided_data)
        user_obj = self.where(
            provider: provided_data.provider, 
            uid: provided_data.uid
        ).first_or_create do |user|
            user.name = provided_data.info.name
        end

        Rails.logger.info(user_obj.errors.full_messages)

        return user_obj
    end


end
