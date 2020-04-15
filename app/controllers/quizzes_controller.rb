class QuizzesController < ApplicationController

    def show
        @quiz = Quiz.find(params[:id])
        @questions = Quiz.questions
        @question_count = 1
    end

end
