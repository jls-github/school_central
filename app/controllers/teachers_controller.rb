class TeachersController < ApplicationController
    before_action :verify_login
    before_action :verify_teacher_permissions, only: [:new, :edit, :update, :create, :destroy]

    def index
        @teachers = Teacher.all
    end

    def show
        @teacher = Teacher.find(params[:id])
        @courses = @teacher.courses
    end
end
