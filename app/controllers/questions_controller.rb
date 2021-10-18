ANSWERS = ["Great!", "Silly question, get dressed and go to work!", "I don't care, get dressed and go to work!"]

class QuestionsController < ApplicationController
  def ask
  end

  def answer
    p params
    @answer = { question: params["question"] }
    if params["question"] === "I am going to work"
      @answer[:answer] = ANSWERS[0]
    elsif params["question"].end_with?("?")
      @answer[:answer] = ANSWERS[1]
    else
      @answer[:answer] = ANSWERS[2]
    end
    return @answer
  end
end
