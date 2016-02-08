class CoachingControllerController < ApplicationController
  def answer
    @question = params[:query]
    @answer = ""

    coach_answer_enhanced(@question)

    # if your_message.upcase == "I AM GOING TO WORK RIGHT NOW!"
    #   @answer = ""
    # elsif your_message.include? "?"
    #   @answer = "Silly question, get dressed and go to work!"
    # else
    #   @answer = "I don't care, get dressed and go to work!"
    # end
  end

  def ask
  end

  private
  def coach_answer(your_message)
    # TODO: return coach answer to your_message
    if your_message.upcase == "I AM GOING TO WORK RIGHT NOW!"
      @answer = ""
    elsif your_message.include? "?"
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    # TODO: return coach answer to your_message, with additional custom rules of yours!
    if your_message.upcase == "I AM GOING TO WORK RIGHT NOW!"
      @answer = ""
    elsif your_message == your_message.upcase
      @answer = "I can feel your motivation! #{coach_answer(your_message)}"
    else
      coach_answer(your_message)
    end
  end


end
