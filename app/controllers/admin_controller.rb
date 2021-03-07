class AdminController < ApplicationController
    before_action :authenticate_user!
    before_action :check_admin

    def index
        @users = User.all        
    end

    def edit
        if request.post?
            user = User.find(params["id"].to_i)
            user.url = params['url']
            user.save
            redirect_to admin_path   
        else
            @user = User.find(params["id"].to_i)
        end
    end

    def edit_userinfo
        if request.post?
            user = User.find(params["id"].to_i)
            user.username = params["name"]
            user.url = params['url']
            user.save
            redirect_to admin_path            
        else
            @user = User.find(params["id"].to_i)
        end
    end

    def check_admin
        if !current_user.admin
            redirect_to root_path
        end
    end
end
