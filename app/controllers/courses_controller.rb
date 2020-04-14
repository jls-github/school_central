class CoursesController < ApplicationController

    def index
        if student_session
            @courses = Student.courses_by_id(session[:id])
        elsif teacher_session
            @courses = Teacher.courses_by_id(session[:id])
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
        teacher_session ? @course = Course.new : redirect_to courses_path
    end

    def create
        @course = Course.new(course_params)
        @course.teacher_id = Teacher.find(id)
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
