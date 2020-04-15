class QuizzesController < ApplicationController

    def show
        @quiz = Quiz.find(params[:id])
        @questions = @quiz.questions
        @question_count = 1
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

    private

    def answer_submission_params
        params.require(:answer_submission).permit(params[:answer_submission].keys)
    end

end
