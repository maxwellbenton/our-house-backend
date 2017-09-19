class AuthsController < ApplicationController
    
    def show
        render json: "current user" #current_user
    end
    

    def create
        
        user = User.find_by(username: params[:username])
        
        if user.present? && user.authenticate(params[:password]) 
            render json: user
        else
            render json: {error: "Wrong username or password"}, status: 404
        end
    end 

end
