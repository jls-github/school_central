class QuizzesController < ApplicationController
    before_action :verify_login
    before_action :verify_teacher_permissions, only: [:new, :create]

    def show
        @quiz = Quiz.find(params[:id])
        if teacher_session
            @teacher_session = true
            @questions = @quiz.questions
            @question_count = 1
        else
            @teacher_session = false
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
        @quiz = Quiz.new(quiz_params)
        if @quiz.save
            redirect_to @quiz.course
        else
            render :new
        end
    end

    def destroy
        @quiz = Quiz.find(params[:id])
        @course = @quiz.course
        @quiz.destroy_with_children
        redirect_to @course 
    end

    private

    def answer_submission_params
        params.require(:answer_submission).permit(params[:answer_submission].keys)
    end

    def quiz_params
        params.require(:quiz).permit(
            :title,
            :course_id,
            questions_attributes: [
                :text,
                answers_attributes: [
                    :text,
                    :correct
                ]
            ]
        )
    end

end
