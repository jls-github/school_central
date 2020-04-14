class LecturesController < ApplicationController

    def show
        @lecture = Lecture.find(params[:id])
        @course = @lecture.course
    end

    def new
        if teacher_session
            @lecture = Lecture.new
            @courses = Teacher.courses_by_id(session[:id])
        else
            redirect_to courses_path #change this to dashboard once implemented
        end
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
        if teacher_session
            @lecture = Lecture.find(params[:id])
            @courses = Teacher.courses_by_id(session[:id])
        else
            redirect_to courses_path #change this tod ashboard once implemented
        end
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
        if teacher_session
            Lecture.find(params[:id]).destroy
        else
            redirect_to courses_path
        end
    end

    private

    def lecture_params
        params.require(:lecture).permit(:title, :content, :date, :course_id)
    end

end
