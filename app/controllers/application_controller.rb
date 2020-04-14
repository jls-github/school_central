class ApplicationController < ActionController::Base

    def student_session
        session[:role] == 0
    end

    def teacher_session
        session[:role] == 1
    end

    def import_teacher_session
        if teacher_session
            @teacher_session = true
        else
            @teacher_session = false
        end
    end

    def verify_login
        if !session[:id]
            redirect_to login_path
        end
    end

    def verify_teacher_permissions
        if !teacher_session
            redirect_to permission_not_granted_path
        end
    end

end
