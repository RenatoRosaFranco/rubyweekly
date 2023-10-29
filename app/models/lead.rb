# frozen_string_literal: true

class Lead < ApplicationRecord
  before_validation :generate_token

  # Validations
  validates :email, presence: true, uniqueness: true
  validates :token, presence: true, uniqueness: true

  # Methods
  def generate_token
    return if token.present?
    self.token = SecureRandom.urlsafe_base64(15)
  end
end
