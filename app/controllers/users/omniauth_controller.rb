class Users::OmniauthController < ApplicationController

    # Controller method for google's omniauth callback
    def google_oauth2
        @user = User.create_from_provided_data(request.env['omniauth.auth'])
        if @user.persisted?
            sign_in_and_redirect @user
            flash[:notice] = 'Successfully logged in using Google.'
        else
            flash[:error] = 'There was a problem signing you in through Google.'
            redirect_to root_path
        end 
    end

    # Failure callback
    def failure
        flash[:error] = 'There was a problem signing you in.' 
        redirect_to root_path
    end

end
