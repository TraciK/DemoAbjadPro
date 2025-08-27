class ArabicLetter < ApplicationRecord
  has_many :user_responses
  
  validates :letter, presence: true, uniqueness: true
  validates :transliteration, presence: true
  validates :name, presence: true
end
