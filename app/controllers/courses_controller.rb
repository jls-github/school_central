class CoursesController < ApplicationController
    before_action :verify_login
    before_action :verify_teacher_permissions, only: [:new, :edit, :update, :create, :destroy]
    before_action :import_teacher_session, only: [:index, :show]

    def index
        student_session ? @courses = Student.courses_by_id(session[:id]) : @courses = Teacher.courses_by_id(session[:id])
    end

    def show
        @course = Course.find(params[:id])
        @lectures = @course.lectures
        @teacher = @course.teacher
    end

    def new
        if teacher_session
            @course = Course.new
        else
            redirect_to courses_path
        end
    end

    def create
        @course = Course.new(course_params)
        @course.teacher_id = Teacher.find(session[:id]).id  
        if @course.save
            redirect_to @course
        else
            render @course #need to add an error message here once validations are implemented
        end
    end

    def edit
        if teacher_session
            @course = Course.find(params[:id])
        else
            redirect_to courses_path
        end
    end

    def update
        @course = Course.find(params[:id])
        if @course.update(course_params)
            redirect_to @course
        else
            render @course #need to add an error message here once validations are implemented
        end
    end

    def destroy
        if teacher_session
            Course.find(params[:id]).destroy
        else
            redirect_to courses_path
        end
    end

    private

    def course_params
        params.require(:course).permit(:subject, :number, :title)
    end

end
