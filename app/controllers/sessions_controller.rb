class SessionsController < ApplicationController

    def new
    end

    def create #clean up this logic, put it into the model as much as possible
        @login = Login.find_by(username_param)
        if @login && @login.authenticate(password_param)
            set_user_id
            set_role
            redirect_to courses_path #change this to dashboard once implemented
        else
            render :new
        end
    end

    private

    def username_param
        params.require(:login).permit(:username)
    end

    def password_param
        params.require(:login).permit(:password)[:password]
    end

    def set_role
        @login.student ? session[:role] = 0 : session[:role] = 1
    end

    def set_user_id
        session[:user_id] = @login.id
    end

end
