class LecturesController < ApplicationController

    def show
        @lecture = Lecture.find(params[:id])
        @course = @lecture.course
    end

end
