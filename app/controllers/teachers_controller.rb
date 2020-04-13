class TeachersController < ApplicationController

    def index
        @teachers = Teacher.all
    end

    def show
        @teacher = Teacher.find(params[:id])
        @courses = @teacher.courses
    end
end
