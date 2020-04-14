class SessionsController < ApplicationController

    def new #goes to login page
    end

    def create
        @login = Login.find_by(username_param)
        if @login && @login.authenticate(password_param)
            set_role
            set_user_id
            redirect_to courses_path #change this to dashboard once implemented
        else
            render :new
        end
    end
    
    def permission_not_granted

    end

    def access_denied
        
    end

    def sign_up
        @login = Login.new
    end

    def create_user
        @login = Login.new(login_params)
        if @login.save
            redirect_to :dashboard_path
        else
            render :sign_up
        end
    end

    private

    def login_params
        params.require(:login).permit(:username, :password, :password_confirmation)
    end

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
        student_session ? session[:id] = @login.student.id : session[:id] = @login.teacher.id
    end

end
