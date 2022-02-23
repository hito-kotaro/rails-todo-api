class UsersController < ApplicationController
    
    def index
        users = User.all
        render json: users.to_json
    end

    
    def create
        # user = User.create(user_params)
        user=User.new(name: user_params['name'] , email: user_params['email'] , password: user_params['password'], password_confirmation: user_params['password_confirmation'])
        user.save!
        render json: user.to_json
    end


    private

        def user_params
            params.permit(:name, :email, :password, :password_confirmation)
        end

    
end
