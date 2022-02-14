class QuestionsController < ApplicationController
  def ask
  end
  def answer
    @answer = params[:answer]
    if @answer == "I am going to work right now!"
      @response = "Great!"
    elsif @answer.end_with?('?')
      @response = 'Silly question, get dressed and go to work!'
    else
      @response = "I don't care, get dressed and go to work!"
    end
  end
end
