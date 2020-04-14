class LecturesController < ApplicationController
    before_action :verify_login
    before_action :verify_teacher_permissions, only: [:new, :edit, :update, :create, :destroy]
    before_action :import_teacher_session, only: :show

    def show
        @lecture = Lecture.find(params[:id])
        @course = @lecture.course
    end

    def new
        @lecture = Lecture.new
        @courses = Teacher.courses_by_id(session[:id])
    end

    def create
        @lecture = Lecture.new(lecture_params)
        if @lecture.save
            redirect_to @lecture
        else
            render @lecture #need to add an error message here once validations are implemented
        end
    end

    def edit
        @lecture = Lecture.find(params[:id])
        @courses = Teacher.courses_by_id(session[:id])
    end

    def update
        @lecture = Lecture.find(params[:id])
        if @lecture.update(lecture_params)
            redirect_to @lecture
        else
            render @lecture #need to add an error message here once validations are implemented
        end
    end

    def destroy
        Lecture.find(params[:id]).destroy
        redirect_to courses_path
    end

    private

    def lecture_params
        params.require(:lecture).permit(:title, :content, :date, :course_id)
    end

end
