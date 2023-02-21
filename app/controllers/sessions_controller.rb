class SessionsController < ApplicationController
    def new
    end

    def create
        @user = User.find_by({"email" => params["email"]})
        #check if a user exists 
        #if they do, check that they know their password
        if @user 
                if params["password"] == @user["password"]
            #if they know their password, send them in
                redirect_to "/companies"
                else
                redirect_to "/sessions/new"
                end
            else 
                redirect_to "/sessions/new"
            end
    end

end
