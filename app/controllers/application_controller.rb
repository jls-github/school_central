class ApplicationController < ActionController::Base

    def student_session
        session[:role] == 0
    end

    def teacher_session
        session[:role] == 1
    end

    def verify_login
        if !session[:id]
            redirect_to login_path
        end
    end

end
