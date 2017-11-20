class QuestionsController < ApplicationController
  def answer
    if params[:query]
      @question = params[:query]
        @answer = ""
        if @question == @question.upcase
          @answer = 'I can feel your motivation! '
        end

        if @question.downcase == "i am going to work right now!"
          @answer = @answer + ""
        elsif @question.include?("?")
          @answer = @answer + "Silly question, get dressed and go to work!"
        else
          @answer = @answer +  "I don't care, get dressed and go to work!"
        end
    else
      @answer = "You didn't ask me anything !"
    end
  end

  def ask
  end
end
