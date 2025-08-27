class UserResponse < ApplicationRecord
  belongs_to :user
  belongs_to :arabic_letter
  
  validates :response, presence: true
  validates :correct, inclusion: { in: [true, false] }
end
