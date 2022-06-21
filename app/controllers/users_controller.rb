class UsersController < ApplicationController


    def index
        @users = User.all
    
        render json: @users
      end


    def create  ## create a user
        @user = User.create(user_params)

        if @user.errors.any?
            render json: @user.errors, status: :unprocessable_entity
        else
            auth_token = Knock::AuthToken.new payload: {sub: @user.id}
            render json: {username: @user.username, jwt: auth_token.token}, status: :created 
        end
    end

    def sign_in 
        @user = User.find_by_email(params[:email])
        if @user && @user.authenticate(params[:password]) 
            auth_token = Knock::AuthToken.new payload: {sub: @user.id}
            render json: {username: @user.username, jwt: auth_token.token}, status: 200 
        else
            render json: {error: "Invalid email/password"}
        end 
    end

    private
    # only allow trusted params through
    def user_params
        params.permit(:username, :email, :password, :password_confirmation)
    end
end
