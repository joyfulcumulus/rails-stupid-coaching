class QuestionsController < ApplicationController
  def ask
  end

  def answer
    if params[:question].downcase.include?('i am going to work right now!')
      then @answer = 'Great!'
    elsif params[:question].end_with?('?')
      then @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
