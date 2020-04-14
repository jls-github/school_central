class SessionsController < ApplicationController

    def new
    end

    def create #clean up this logic, put it into the model as much as possible
        @login = Login.find_by(username_param)
        if @login
            if @login.authenticate(password_param)
                session[:user_id] = @login.id
                if @login.student
                    session[:role] = 0
                else
                    session[:role] = 1
                end
            end
        end
        redirect_to courses_path #change this to dashboard once implemented
    end

    private

    def username_param
        params.require(:login).permit(:username)
    end

    def password_param
        params.require(:login).permit(:password)[:password]
    end

end