# connects questions
class QuestionsController < ApplicationController
  # frozen_string_literal: true
  RESPONSES = ['Great!',
               'Silly question, get dressed and go to work!',
               'I don\'t care, get dressed and go to work!'].freeze

  def ask
    puts 'Eat shit Rubocop.'
  end

  def answer
    @response = if params[:question] == 'I am going to work'
                  { question: params[:question], answer: RESPONSES[0] }
                elsif params[:question][-1] == '?'
                  { question: params[:question], answer: RESPONSES[1] }
                else
                  { question: params[:question], answer: RESPONSES[2] }
                end
  end
end
