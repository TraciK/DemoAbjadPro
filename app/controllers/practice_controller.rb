class PracticeController < ApplicationController
  before_action :set_study_session, only: [:show, :check_answer]
  
  def index
    @levels = ArabicLetter.distinct.pluck(:difficulty_level).sort
    @user_stats = calculate_user_stats
  end
  
  def show
    @current_letter = get_next_letter
    @session_stats = calculate_session_stats
  end
  
  def check_answer
    @user_response = UserResponse.create!(
      user: current_user,
      arabic_letter: ArabicLetter.find(params[:letter_id]),
      study_session: @study_session,
      response: params[:response].strip.downcase,
      correct: check_if_correct(params[:response], params[:letter_id]),
      response_time_ms: params[:response_time]
    )
    
    update_user_progress if @user_response.correct
    
    render json: {
      correct: @user_response.correct,
      correct_answer: @user_response.arabic_letter.transliteration,
      next_letter_url: practice_path
    }
  end
  
  private
  
  def set_study_session
    @study_session = current_user.study_sessions.find_or_create_by(
      created_at: Time.current.beginning_of_day..Time.current.end_of_day
    )
  end
  
  def get_next_letter
    # Spaced repetition algorithm - prioritize letters the user struggles with
    user_accuracy = calculate_letter_accuracy
    
    letters_by_difficulty = ArabicLetter.where(difficulty_level: current_user.current_level)
    
    # Weight selection based on user's past performance
    weighted_selection(letters_by_difficulty, user_accuracy)
  end
  
  def check_if_correct(response, letter_id)
    letter = ArabicLetter.find(letter_id)
    response.strip.downcase == letter.transliteration.downcase
  end
  
  def calculate_letter_accuracy
    # Calculate accuracy for each letter for spaced repetition
    current_user.user_responses
                .joins(:arabic_letter)
                .group('arabic_letters.id')
                .average('CASE WHEN correct THEN 1.0 ELSE 0.0 END')
  end
  
  def weighted_selection(letters, accuracy_data)
    # Select letters with lower accuracy more frequently
    weights = letters.map do |letter|
      accuracy = accuracy_data[letter.id] || 0.5
      1.0 - accuracy + 0.1 # Ensure minimum weight
    end
    
    letters.sample(random: Random.new, weights: weights)
  end
end
