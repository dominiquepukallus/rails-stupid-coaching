class QuestionsController < ApplicationController
  def ask
    # renders form from ask.html
  end

  def answer
    # view should display the answer from the questions param
    # display the data which should be shown depending on answer
    @question = params[:question]

    if @question == "I am going to work"
      @answer = "Great!"
    elsif @question.end_with?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
