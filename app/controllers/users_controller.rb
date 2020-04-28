class UsersController < ApplicationController
    
    def index
        @users = User.all 

        render json: @users
    end

    def show
        @user = User.find(params[:id])

        render json: @user, include: [:resolutions]
    end

    def create
        @user = User.create(
            name: params[:name],
            user_name: params[:user_name]
        )

        render json: @user
    end
end
