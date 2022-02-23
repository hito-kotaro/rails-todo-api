class SessionsController < ApplicationController
  def new
  end

  def create 
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      plain_data = {"user_id": user.id}
      login user
      render json: {"message": "login!"}
    else
      render json: {"message": 'auth error'}
    end
  end

    def destroy
      logout if is_login?
      render json: {"message": 'logout'}
    end

end
