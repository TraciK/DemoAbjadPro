class User < ApplicationRecord
  has_secure_password
  
  has_many :user_responses, dependent: :destroy
  has_many :study_sessions, dependent: :destroy
  
  validates :email, presence: true, uniqueness: { case_sensitive: false }
  validates :password, length: { minimum: 6 }, if: :password_required?
  
  before_save :downcase_email
  
  private
  
  def downcase_email
    self.email = email.downcase
  end
  
  def password_required?
    new_record? || password.present?
  end
end
