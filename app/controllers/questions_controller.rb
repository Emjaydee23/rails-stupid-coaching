class QuestionsController < ApplicationController
  def ask
  end

  def answer
    message = 'I am going to work'
    @question = params[:question]

    if @question == message
      @response = 'Great!'
    elsif @question.include?('?')
      @response = 'Silly question, get dressed and go to work!'
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end
end
