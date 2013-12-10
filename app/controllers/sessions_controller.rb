class SessionsController < ApplicationController

    def new
        if signed_in?
            redirect_to root_url
        end
    end

    def create
        admin = Admin.find_by(login: params[:session][:login])
        if admin && admin.authenticate(params[:session][:password])
            sign_in admin
            redirect_back_or root_url
        else
            flash[:error] = 'Invalid login/password combination'
            render 'new'
        end
    end

    def destroy
        sign_out
        redirect_to root_url
    end
end
