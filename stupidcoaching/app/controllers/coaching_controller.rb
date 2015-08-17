class CoachingController < ApplicationController
  def ask

    # stocker input from user
  end

  def answer
      # display question from user (accès grâce au stockage)
      #display answer from coach
      @question = params[:query]
      @answer = coach_answer_enhanced(@question)
  end

  private

  def coach_answer(your_message)
    if your_message == "I am going to work right now!"
      return ""
    elsif your_message.include?("?")
      return "Silly question, get dressed and go to work!"
    else
      return "I don't care, get dressed and go to work!"
    end
  end

  def coach_answer_enhanced(your_message)
    case your_message
      when "I AM GOING TO WORK RIGHT NOW!"
        return ""
      when your_message.upcase
        return "I can feel your motivation! #{coach_answer(your_message.capitalize)}"
      else
        return coach_answer(your_message)
      end
    end
  end

