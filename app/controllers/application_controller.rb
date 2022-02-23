class ApplicationController < ActionController::API
    # session :disabled => fals
    include SessionsHelper
    
    private
        def logged_in_user
            unless is_login?
                render json: {"message": 'not login'}
            end
        end
end
