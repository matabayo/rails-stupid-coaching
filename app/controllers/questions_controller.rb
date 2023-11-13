class QuestionsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]

    if @question.chars.last == "?"
      @answer = "Silly question, get dressed and go to work!"
    elsif @question.chars.last == "!"
      @answer = "I don’t care, get dressed and go to work!"
    else
      @answer = "Great !"
    end
  end

end
