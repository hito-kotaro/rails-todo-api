class ApplicationController < ActionController::API
    # session :disabled => fals
    include SessionsHelper
    include ActionController::Cookies
    # skip_before_action :verify_authenticity_token
    
    private
        def logged_in_user
            unless is_login?
                render json: {"message": 'not login'}
            end
        end
end
