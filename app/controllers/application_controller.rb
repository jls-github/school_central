class ApplicationController < ActionController::Base

    private

    def student_session
        session[:role] == 0
    end

    def teacher_session
        session[:role] == 1
    end

end
