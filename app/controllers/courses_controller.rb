class CoursesController < ApplicationController

    def index
        if student_session
            @courses = Student.courses_by_user_id(session[:user_id])
        elsif teacher_session
            @courses = Teacher.courses_by_user_id(session[:user_id])
        else
            redirect_to login_path
        end
    end

    def show
        @course = Course.find(params[:id])
        @lectures = @course.lectures
        @teacher = @course.teacher
    end

    def new
        @course = Course.new
    end

    def create
        #to be implemented
        @course = Course.new(course_params)
        @course.teacher_id = Login.find(session[:user_id].teacher.id)
        if @course.save
            redirect_to @course
        else
            render @course #need to add an error message here once validations are implemented
        end
    end

    private

    def course_params
        params.require(:course).permit(:subject, :number, :title)
    end

end
