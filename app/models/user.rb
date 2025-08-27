class User < ApplicationRecord
  has_many :user_responses
  has_many :study_sessions
end
