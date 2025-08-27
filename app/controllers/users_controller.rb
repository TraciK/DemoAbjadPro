class UsersController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :create]
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path, notice: 'Account created successfully!'
    else
      render :new
    end
  end
  
  def stats
    @user_stats = calculate_detailed_stats
  end
  
  private
  
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end
  
  def calculate_detailed_stats
    {
      total_responses: current_user.user_responses.count,
      correct_responses: current_user.user_responses.where(correct: true).count,
      accuracy: current_user.user_responses.average('CASE WHEN correct THEN 1.0 ELSE 0.0 END') || 0,
      current_streak: calculate_current_streak,
      letters_mastered: letters_with_high_accuracy.count
    }
  end
  
  def calculate_current_streak
    # Calculate current streak of correct answers
    responses = current_user.user_responses.order(created_at: :desc)
    streak = 0
    
    responses.each do |response|
      if response.correct?
        streak += 1
      else
        break
      end
    end
    
    streak
  end
  
  def letters_with_high_accuracy
    # Letters with >80% accuracy over last 10 attempts
    current_user.user_responses
                .joins(:arabic_letter)
                .group('arabic_letters.id')
                .having('COUNT(*) >= 5')
                .having('AVG(CASE WHEN correct THEN 1.0 ELSE 0.0 END) > 0.8')
  end
end
