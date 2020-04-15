class QuizzesController < ApplicationController

    def show
        @quiz = Quiz.find(params[:id])
        @student = Student.find(session[:id])
        if @student.taken_quiz?(@quiz.id)
            @quiz_taken = true
            @percentage = @student.percentage_for_quiz(@quiz.id)
        else
            @quiz_taken = false
            @questions = @quiz.questions
            @question_count = 1
        end
    end

    def submission #this is VERY hackable
        i = 0
        answer_submissions = []
        while i < params[:answer_submission].keys.length
            answer_submissions << AnswerSubmission.new(student_id: session[:id], answer_id: params[:answer_submission].values[i])
            i += 1
        end
        answer_submissions.each {|submission| submission.save}
        redirect_to courses_path #change this to a results page
    end

    def new
        @quiz = Quiz.new
        5.times do
            @quiz.questions.build
        end
        @quiz.questions.each do |question|
            4.times do
                question.answers.build
            end
        end
        @courses = Course.courses_by_teacher_id(session[:id])
    end

    def create
        byebug
    end

    private

    def answer_submission_params
        params.require(:answer_submission).permit(params[:answer_submission].keys)
    end

end
